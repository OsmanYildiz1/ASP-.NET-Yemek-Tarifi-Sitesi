using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    databaseConnection databaseConnection = new databaseConnection();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["YorumId"];

        if (!IsPostBack)
        {
            SqlCommand sqlCommand = new SqlCommand("Select YorumAdSoyad,YorumMail,YorumIcerik,YemekAd From Tbl_Yorumlar Inner Join Tbl_Yemekler On Tbl_Yorumlar.YemekId=Tbl_Yemekler.YemekId Where YorumId=@p1",
                databaseConnection.DatabaseConnection());
            sqlCommand.Parameters.AddWithValue("@p1", id);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                txtAd.Text = reader[0].ToString();
                txtMail.Text = reader[1].ToString();
                txtIcerik.Text = reader[2].ToString();
                txtYemek.Text = reader[3].ToString();
            }
            databaseConnection.DatabaseConnection().Close();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("Update Tbl_Yorumlar Set YorumIcerik=@p1, YorumOnay=@p2 Where YorumId=@p3",databaseConnection.DatabaseConnection());
        sqlCommand.Parameters.AddWithValue("@p1", txtIcerik.Text);
        sqlCommand.Parameters.AddWithValue("@p2", true);
        sqlCommand.Parameters.AddWithValue("@p3", id);
        sqlCommand.ExecuteNonQuery();
        databaseConnection.DatabaseConnection().Close(); 

    }
}