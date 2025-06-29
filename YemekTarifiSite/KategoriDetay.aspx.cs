using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriDetay : System.Web.UI.Page
{
    databaseConnection connection = new databaseConnection();
    string kategoriId = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriId = Request.QueryString["KategoriId"];
        SqlCommand command = new SqlCommand("Select * From Tbl_Yemekler Where KategoriId=@p1",connection.DatabaseConnection());
        command.Parameters.AddWithValue("@p1", kategoriId);
        SqlDataReader reader = command.ExecuteReader();
        DataList2.DataSource = reader;
        DataList2.DataBind();
    }
}