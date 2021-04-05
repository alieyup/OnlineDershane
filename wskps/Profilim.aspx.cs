using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wskps_Durumum : System.Web.UI.Page
{
    Connection wskps = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["KullaniciID"] != null)
        {
            if (!IsPostBack)
            {
                SqlCommand com = new SqlCommand("SELECT * FROM Kullanicilar WHERE KullaniciID=@Kullanici", wskps.con);
                com.Parameters.AddWithValue("@Kullanici", Session["KullaniciID"].ToString());
                if (wskps.con.State == ConnectionState.Closed) wskps.con.Open();
                SqlDataReader oku = com.ExecuteReader();
                if (oku.Read())
                {
                    TextBoxAdi.Text = oku[1].ToString();
                    TextBoxEmail.Text = oku[2].ToString();
                    TextBoxIl.Text = oku[5].ToString();
                }
                wskps.con.Close();
            }
        }
        else
        {
            Response.Redirect("Wskps.aspx");
        }
    }

    protected void LinkButtonKaydet_Click(object sender, EventArgs e)
    {
        if (Session["KullaniciID"] != null)
        {
            SqlCommand guncelle = new SqlCommand("UPDATE Kullanicilar SET KullaniciAdiSoyadi=@adi, KullaniciEmail=@email, KullaniciIl=@il WHERE (KullaniciID=@kullaniciid)", wskps.con);
            guncelle.Parameters.AddWithValue("@kullaniciid", Session["KullaniciID"].ToString());
            guncelle.Parameters.AddWithValue("@adi", TextBoxAdi.Text.ToString());
            guncelle.Parameters.AddWithValue("@email", TextBoxEmail.Text.ToString());
            guncelle.Parameters.AddWithValue("@il", TextBoxIl.Text.ToString());
            if (wskps.con.State == ConnectionState.Closed) wskps.con.Open();
            guncelle.ExecuteNonQuery();
            wskps.con.Close();
        }
        else
        {
            Response.Redirect("Wskps.aspx");
        }
    }
}