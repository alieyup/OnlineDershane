using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wskps_wskps : System.Web.UI.MasterPage
{
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WSKPSConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["KullaniciID"]!=null)
        {
            SqlCommand com = new SqlCommand("SELECT * FROM Kullanicilar WHERE KullaniciID=@Kullanici", con);
            com.Parameters.AddWithValue("@Kullanici", Session["KullaniciID"].ToString());
            if (con.State == ConnectionState.Closed) con.Open();
            SqlDataReader oku = com.ExecuteReader();
            if (oku.Read())
            {
                LabelKullaniciAdi.Text = oku["KullaniciAdi"].ToString() + " " + oku["KullaniciSoyadi"].ToString();
                profilresmi.Src = oku["KullaniciResim"].ToString();
                profilresmi.Alt = oku["KullaniciAdi"].ToString() + " " + oku["KullaniciSoyadi"].ToString();
            }
            //1 yani admin ise üye ekranları gizleniyor.
            if (Session["KullaniciYetki"].ToString() == "1")
            {
                LabelYetki.Text = "Admin";
            }
            
            //2 yani üye (gold) ise admin ekranları gizleniyor.
            if (Session["KullaniciYetki"].ToString() == "2")
            {
                Kullanicilar.Attributes["style"] = "display:none;";
                GoogleForm.Attributes["style"] = "display:none;";
                LabelYetki.Text = "Gold Üye";
            }
            //3 yani üye (standart) ise admin ve gold üye ekranları gizleniyor.
            if (Session["KullaniciYetki"].ToString() == "3")
            {
                Kullanicilar.Attributes["style"] = "display:none;";
                AcilirMenu.Attributes["style"] = "display:none;";
                LabelYetki.Text = "Standart Üye";
            }
            //4 yani üye (editör) 
            if (Session["KullaniciYetki"].ToString() == "4")
            {
                Kullanicilar.Attributes["style"] = "display:none;";
                AcilirMenu.Attributes["style"] = "display:none;";
                LabelYetki.Text = "Editör Üye";
            }
            else
            {

            }
            oku.Dispose();
            com.Dispose();
            con.Dispose();
            SeciliOlaniBelirt();
        }
        else
        {
            Response.Redirect("Wskps.aspx");
        }
    }

    private void SeciliOlaniBelirt()
    {
        string SayfaAdi = Page.AppRelativeVirtualPath.ToString().Remove(0, 8);
       
        if (SayfaAdi == "AnaSayfa.aspx")
        {
            KontrolPaneli.Attributes["class"] = "start open";
        }
        if (SayfaAdi == "Kullanicilar.aspx")
        {
            Kullanicilar.Attributes["class"] = "start open";
        }
        if (SayfaAdi == "acilirmenu1.aspx")
        {
            AcilirMenu.Attributes["class"] = "active open";
            AcilirMenu1.Attributes["class"] = "active";
        }
        if (SayfaAdi == "acilirmenu2.aspx")
        {
            AcilirMenu.Attributes["class"] = "active open";
            AcilirMenu2.Attributes["class"] = "active";
        }
        if (SayfaAdi == "GoogleForm.aspx")
        {
            GoogleFormIslemleri.Attributes["class"] = "active open";
            GoogleForm.Attributes["class"] = "active";
        }
        if (SayfaAdi == "GoogleFormDuzenle.aspx")
        {
            GoogleFormIslemleri.Attributes["class"] = "active open";
            GoogleFormDuzenle.Attributes["class"] = "active";
        }
        if (SayfaAdi == "Profilim.aspx")
        {
            Profilim.Attributes["class"] = "start open";
            //Sonuclarim.Attributes["style"] = "display:none;";
        }
    }
    
}
