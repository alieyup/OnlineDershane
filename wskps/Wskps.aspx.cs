using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wskps_Wskps : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WSKPSConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["KullaniciID"]!=null)
        //{
        //    Response.Redirect("Kilit.aspx");
        //}
        this.password.Attributes.Add(
    "onkeypress", "button_click(this,'" + this.ButtonGiris.ClientID + "')");
        this.username.Attributes.Add(
    "onkeypress", "button_click(this,'" + this.ButtonGiris.ClientID + "')");
    }


    protected void ButtonGiris_Click(object sender, EventArgs e)
    {
        SqlCommand com = new SqlCommand("SELECT KullaniciID, KullaniciEmail, KullaniciSifre,YetkiID FROM Kullanicilar WHERE KullaniciEmail=@user AND KullaniciSifre=@pass", con);
        com.Parameters.AddWithValue("@user", username.Value);
        com.Parameters.AddWithValue("@pass", password.Text);
        if (con.State == ConnectionState.Closed) con.Open();
        SqlDataReader oku = com.ExecuteReader();
        if (oku.Read())
        {
            Session["KullaniciID"] = oku[0].ToString();
            Session["KullaniciYetki"] = oku[3].ToString();
            String str = oku[3].ToString();
            Response.Redirect("AnaSayfa.aspx");
        }
        else
        {
            LiteralYanlisGiris.Text = "<div class=\"alert alert-warning alert - dismissable\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\"></button><strong>Hata!</strong> Yanlış E-posta veya şifre girdiniz.</div>";
            LiteralYanlisGiris.Visible = true;
        }
        //oku.Dispose();
        //com.Dispose();
        //con.Dispose();
    }
}