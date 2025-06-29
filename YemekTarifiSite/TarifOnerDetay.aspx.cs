using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOnerDetay : System.Web.UI.Page
{
    databaseConnection connection = new databaseConnection();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["TarifId"];
        if (!Page.IsPostBack)
        {
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Tarifler Where TarifId=@p1", connection.DatabaseConnection());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                TextBox1.Text = reader[1].ToString();
                TextBox2.Text = reader[2].ToString();
                TextBox3.Text = reader[3].ToString();
                TextBox4.Text = reader[5].ToString();
                TextBox5.Text = reader[6].ToString();
            }
            connection.DatabaseConnection().Close();
        }


        //Kategori Listesi
        SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Kategoriler", connection.DatabaseConnection());
        SqlDataReader reader2 = cmd2.ExecuteReader();

        DropDownList1.DataTextField = "KategoriAd";
        DropDownList1.DataValueField = "KategoriId";
        DropDownList1.DataSource = reader2;
        DropDownList1.DataBind();
        connection.DatabaseConnection().Close();



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Durum Güncelleme
        SqlCommand sql = new SqlCommand("Update Tbl_Tarifler Set TarifDurum=1 Where TarifId=@p1", connection.DatabaseConnection());
        sql.Parameters.AddWithValue("@p1", id);
        sql.ExecuteNonQuery();
        connection.DatabaseConnection().Close();

        // Yemeği Ana sayfaya Ekleme
        SqlCommand sql2 = new SqlCommand("Insert Into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,KategoriId) Values(@p1,@p2,@p3,@p4)", connection.DatabaseConnection());
        sql2.Parameters.AddWithValue("@p1", TextBox1.Text);
        sql2.Parameters.AddWithValue("@p2", TextBox2.Text);
        sql2.Parameters.AddWithValue("@p3", TextBox3.Text);
        sql2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        sql2.ExecuteNonQuery();
        connection.DatabaseConnection().Close();



    }
}