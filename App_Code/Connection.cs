using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Yol
/// </summary>
public class Connection
{
    public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WSKPSConnectionString"].ConnectionString);
}
