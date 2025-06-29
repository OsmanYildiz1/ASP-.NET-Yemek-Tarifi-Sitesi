using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class HakkimizdaAdmin : System.Web.UI.Page
{
    databaseConnection conn = new databaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        if (!Page.IsPostBack)
        {
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Hakkimizda", conn.DatabaseConnection());
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                TextBox1.Text = reader[0].ToString();
            }
            conn.DatabaseConnection().Close();
        }

    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Update Tbl_Hakkimizda Set Metin=@p1",conn.DatabaseConnection());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.ExecuteNonQuery();
        conn.DatabaseConnection().Close();

    }
}