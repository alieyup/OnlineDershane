using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wskps_Kullanicilar : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WSKPSConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["KullaniciID"] != null)
        {
            if (Session["KullaniciYetki"].ToString() != "1")
            {
                Response.Redirect("wskps.aspx");
            }
        }
        if (!IsPostBack)
        {
        KullanicilariYukle();
        }
    }


    private void KullanicilariYukle()
    {
        SqlDataAdapter da_truck = new SqlDataAdapter("SELECT * FROM Kullanicilar ORDER BY CONVERT(datetime, KullaniciKayitTarihi, 103) DESC", con);
        DataSet ds_truck = new DataSet();
        da_truck.Fill(ds_truck);
        DataListKullanicilar.DataSource = ds_truck;
        DataListKullanicilar.DataBind();
    }
    protected void DataListKullanicilar_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        Label UserID = (e.Item.FindControl("LabelUserID") as Label);
        if (Session["KullaniciID"].ToString()!=UserID.Text)
        {
        SqlCommand cmdUser = new SqlCommand("Delete from Kullanicilar where KullaniciID=" + UserID.Text, con);
        con.Open();
        cmdUser.ExecuteNonQuery();
        con.Close();
        DataListKullanicilar.EditItemIndex = -1;
        KullanicilariYukle();
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Heeeyyy daha dikkatli olmalısın!", "<script>alert(':) Kendi kendini silemezsin!');</script>");
        }
    }

    protected void DataListKullanicilar_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataListKullanicilar.EditItemIndex = e.Item.ItemIndex;
        KullanicilariYukle();
    }

    protected void DataListKullanicilar_CancelCommand(object source, DataListCommandEventArgs e)
    {
        DataListKullanicilar.EditItemIndex = -1;
        KullanicilariYukle();
    }

    protected void DataListKullanicilar_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        int KullaniciID = (int)DataListKullanicilar.DataKeys[(int)e.Item.ItemIndex];

        TextBox TextBoxAdiSoyadi = (TextBox)e.Item.FindControl("TextBoxAdiSoyadi");
        TextBox TextBoxEposta = (TextBox)e.Item.FindControl("TextBoxEposta");
        TextBox TextBoxSehir = (TextBox)e.Item.FindControl("TextBoxSehir");
        DropDownList DropDownListUyelikTipi = (DropDownList)e.Item.FindControl("DropDownListUyelikTipi");

        con.Open();
        SqlCommand komut = new SqlCommand("update Kullanicilar set KullaniciAdiSoyadi=@isim,KullaniciEmail=@eposta,KullaniciIl=@il,YetkiID=@yetki where KullaniciID='"+KullaniciID+"'", con);
        komut.Parameters.AddWithValue("@isim", SqlDbType.VarChar).Value = TextBoxAdiSoyadi.Text;
        komut.Parameters.AddWithValue("@eposta", TextBoxEposta.Text);
        komut.Parameters.AddWithValue("@il", TextBoxSehir.Text);
        komut.Parameters.AddWithValue("@yetki", DropDownListUyelikTipi.SelectedValue);
        komut.ExecuteNonQuery();
        con.Close();
        DataListKullanicilar.EditItemIndex = -1;
        KullanicilariYukle();
    }
}