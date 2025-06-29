using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajDetay : System.Web.UI.Page
{
    databaseConnection connection = new databaseConnection();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id= Request.QueryString["MesajId"];
        SqlCommand cmd = new SqlCommand("Select * From Tbl_Mesajlar Where MesajId=@p1",connection.DatabaseConnection());
        cmd.Parameters.AddWithValue("@p1", id);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            TextBox1.Text = reader[1].ToString();
            TextBox2.Text = reader[3].ToString();
            TextBox3.Text = reader[2].ToString();
            TextBox4.Text = reader[4].ToString();
        }
        connection.DatabaseConnection().Close();
    }
}