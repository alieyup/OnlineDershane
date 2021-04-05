using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wskps_AnaSayfa : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WSKPSConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["KullaniciID"] != null)
        {
            TamamlanmisOgrenciDoldur();
            if (Session["KullaniciID"].ToString()=="1")
            {
                //Response.Redirect("SonucTakip.aspx");
            }
        }
    }
    private void TamamlanmisOgrenciDoldur()
    {
        //Eğer üye standart üye ise sadece demo veli testlerini görecek.
        if (Session["KullaniciYetki"].ToString() == "3")
        {
            //Demo üye öğrenci testlerinden çözülmüş olanları görecek.
            
        }
        else
        {
            //Gold üye öğrenci testlerinden çözülmemiş olanları görecek.
            
        }
    }


}