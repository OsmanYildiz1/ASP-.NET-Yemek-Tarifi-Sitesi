using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

public partial class YemekDuzenle : System.Web.UI.Page
{
    databaseConnection connection = new databaseConnection();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["YemekId"];
        if (Page.IsPostBack == false)//sayfanın ilk kez yüklendiğini kontrol eder.Bir butona tıklama gibi olaylarla yeniden yüklendiğinde (postback olduğunda): IsPostBack değeri true olur.
        {
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Yemekler where YemekId=@p1", connection.DatabaseConnection());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                TextBox1.Text = reader[1].ToString();
                TextBox2.Text = reader[2].ToString();
                TextBox3.Text = reader[3].ToString();
            }
            connection.DatabaseConnection().Close();
        }

        if (Page.IsPostBack == false)
        {
            //Kategori Listesi
            SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Kategoriler", connection.DatabaseConnection());
            SqlDataReader reader2 = cmd2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "KategoriId";
            DropDownList1.DataSource = reader2;
            DropDownList1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
        SqlCommand sql = new SqlCommand("Update Tbl_Yemekler Set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3, KategoriId=@p4,YemekResim=@p6 Where YemekId=@p5",connection.DatabaseConnection());
        sql.Parameters.AddWithValue("@p1",TextBox1.Text);
        sql.Parameters.AddWithValue("@p2",TextBox2.Text);
        sql.Parameters.AddWithValue("@p3",TextBox3.Text);
        sql.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        sql.Parameters.AddWithValue("@p5", id);
        sql.Parameters.AddWithValue("@p6", "~/resimler/"+FileUpload1.FileName);
        sql.ExecuteNonQuery();
        connection.DatabaseConnection().Close();


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // Tüm yemeklerin durumunu false yapma
        SqlCommand command = new SqlCommand("Update Tbl_Yemekler Set Durum=0",connection.DatabaseConnection());
        command.ExecuteNonQuery();
        connection.DatabaseConnection().Close();

        //Günün yemegini ID'ye göre true yapma
        SqlCommand command2 = new SqlCommand("Update Tbl_Yemekler Set Durum=1 Where YemekId=@p1",connection.DatabaseConnection());
        command2.Parameters.AddWithValue("@p1", id);
        command2.ExecuteNonQuery();
        connection.DatabaseConnection().Close();

    }
}