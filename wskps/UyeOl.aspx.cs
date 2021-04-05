using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wskps_UyeOl : System.Web.UI.Page
{
    Connection wskps = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CheckBoxRequired_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        e.IsValid = CheckBoxKabul.Checked;
    }
    protected void ButtonKayitOl_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {

                SqlCommand sec = new SqlCommand("select count(KullaniciEmail) from Kullanicilar WHERE KullaniciEmail='" + username.Value + "'", wskps.con);
                if (wskps.con.State == ConnectionState.Closed) wskps.con.Open();
                int sayi = (int)sec.ExecuteScalar();
                wskps.con.Close();
                // burada sayi değişkenine sorgunun sonucu count olarak gelir kaç tane kayıt varsa örn.1234..
                if (sayi != 0)// eğer sayın 0'a eşit değilse yani kayıt sql de varsa
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "WSKPS!", "<script>alert('Aynı Mail İle Kayıt Var. Lütfen Başka Bir Mail Adresi Kullanın!');</script>");
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO Kullanicilar (KullaniciAdiSoyadi, KullaniciEmail, KullaniciSifre, KullaniciResim,  KullaniciIl, KullaniciKayitTarihi, KullaniciAktif, KullaniciGorulme, YetkiID) VALUES (@adsoyad,@email,@sifre,@resim,@il,@kayittarihi,@aktif,@gorulme,@yetki)", wskps.con);
                    cmd.Parameters.AddWithValue("@adsoyad", fullname.Value);
                    cmd.Parameters.AddWithValue("@email", username.Value);
                    cmd.Parameters.AddWithValue("@sifre", register_password.Value);
                    cmd.Parameters.AddWithValue("@resim", "http://via.placeholder.com/50x50?text=" + fullname.Value);
                    cmd.Parameters.AddWithValue("@il", city.Value);
                    cmd.Parameters.AddWithValue("@kayittarihi", DateTime.Now);
                    cmd.Parameters.AddWithValue("@aktif", "1");
                    cmd.Parameters.AddWithValue("@gorulme", "1".ToString());
                    cmd.Parameters.AddWithValue("@yetki", "3");
                    if (wskps.con.State == ConnectionState.Closed) wskps.con.Open();
                    cmd.ExecuteNonQuery();
                    wskps.con.Close();
                    string url = "http://" + Request.Url.Authority + "/wskps/Wskps.aspx";
                    Response.Redirect(url, false);
                    Context.ApplicationInstance.CompleteRequest();
                }
            }
            catch (Exception err)
            {
                LabelUyari.Text = err.ToString();
            }
        }
    }
}