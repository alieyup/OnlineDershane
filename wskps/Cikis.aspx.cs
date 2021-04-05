using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wskps_cikis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["KullaniciID"] = null;
        Response.Redirect("Wskps.aspx");
    }
}