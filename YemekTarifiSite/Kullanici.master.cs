using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kullanici : System.Web.UI.MasterPage
{
    databaseConnection connection = new databaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Tbl_Kategoriler", connection.DatabaseConnection());
        SqlDataReader rdr = cmd.ExecuteReader();
        DataList1.DataSource = rdr;
        DataList1.DataBind();
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
