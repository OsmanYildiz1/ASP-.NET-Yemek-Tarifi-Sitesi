using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriAdminDetay : System.Web.UI.Page
{
    databaseConnection connection = new databaseConnection();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["KategoriId"];
        if (Page.IsPostBack == false)//sayfanın ilk kez yüklendiğini kontrol eder.Bir butona tıklama gibi olaylarla yeniden yüklendiğinde (postback olduğunda): IsPostBack değeri true olur.
        {
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Kategoriler where KategoriId=@p1", connection.DatabaseConnection());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                TextBox1.Text = reader[1].ToString();
                TextBox2.Text = reader[2].ToString();
            }
            connection.DatabaseConnection().Close();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Update Tbl_Kategoriler Set KategoriAd=@p1, KategoriAdet=@p2 Where KategoriId=@p3", connection.DatabaseConnection());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3", id);
        cmd.ExecuteNonQuery();
        connection.DatabaseConnection().Close();
    }
}