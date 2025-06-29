using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    databaseConnection con = new databaseConnection();
    string islem = "";
    string id= "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["YemekId"];
            islem = Request.QueryString["islem"];
            //Kategori Listesi
            SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Kategoriler", con.DatabaseConnection());
            SqlDataReader reader2 = cmd2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "KategoriId";
            DropDownList1.DataSource = reader2;
            DropDownList1.DataBind();
        }
        //Yemek Listesi
        SqlCommand cmd = new SqlCommand("Select * from tbl_Yemekler", con.DatabaseConnection());
        SqlDataReader reader = cmd.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();

        if (islem == "sil")
        {
            SqlCommand sql = new SqlCommand("Delete From Tbl_Yemekler Where YemekId=@p1",con.DatabaseConnection());
            sql.Parameters.AddWithValue("@p1",id);
            sql.ExecuteNonQuery();
            con.DatabaseConnection().Close();
        }

        con.DatabaseConnection().Close();


    }

    protected void Button2_Click(object sender, EventArgs e)
    {

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
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void BtnEkle1_Click(object sender, EventArgs e)
    {
        //YEMEK EKLEME
        SqlCommand cmd = new SqlCommand("Insert Into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,KategoriId) Values(@p1,@p2,@p3,@p4)", con.DatabaseConnection());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd.ExecuteNonQuery();
        con.DatabaseConnection().Close();



        //KATEGORİ SAYISINI ARTTIRMA
        SqlCommand cmd2 = new SqlCommand("Update Tbl_Kategoriler Set KategoriAdet=KategoriAdet + 1 Where KategoriId=@p1",con.DatabaseConnection());
        cmd2.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
        cmd2.ExecuteNonQuery();
        con.DatabaseConnection().Close();

        Response.Redirect(Request.RawUrl);  // Yönlendirme ile tekrar gönderimi engelle.


        TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox1.Text = "";
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}