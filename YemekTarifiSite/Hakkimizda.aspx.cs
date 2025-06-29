using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Hakkimizda : System.Web.UI.Page
{
    databaseConnection connection = new databaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Tbl_Hakkimizda",connection.DatabaseConnection());
        SqlDataReader reader = cmd.ExecuteReader();
        DataList3.DataSource = reader;
        DataList3.DataBind();
    }
}