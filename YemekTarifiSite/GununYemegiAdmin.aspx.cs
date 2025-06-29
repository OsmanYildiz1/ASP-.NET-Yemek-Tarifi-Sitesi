using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GununYemegiAdmin : System.Web.UI.Page
{
    databaseConnection connection = new databaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        SqlCommand sqlCommand = new SqlCommand("Select * From Tbl_Yemekler",connection.DatabaseConnection());
        SqlDataReader reader = sqlCommand.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible=false;
    }
}