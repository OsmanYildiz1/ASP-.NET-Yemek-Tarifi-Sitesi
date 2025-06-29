using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdminKategoriler : System.Web.UI.Page
{
    databaseConnection conn = new databaseConnection();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false)
        {
            id = Request.QueryString["KategoriId"];
            islem = Request.QueryString["islem"];
        }
        SqlCommand cmd = new SqlCommand("Select * From Tbl_Kategoriler",conn.DatabaseConnection());
        SqlDataReader rdr = cmd.ExecuteReader();
        DataList1.DataSource = rdr;
        DataList1.DataBind();

        // Silme İşlemi
        if(islem=="sil")
        {
            SqlCommand command = new SqlCommand("Delete from Tbl_Kategoriler where KategoriId=@p1", conn.DatabaseConnection());
            command.Parameters.AddWithValue("@p1", id);
            command.ExecuteNonQuery();
            conn.DatabaseConnection().Close();
        }

        Panel2.Visible = false;
        Panel4.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible=true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible=true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible=false;
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("Insert Into Tbl_Kategoriler(KategoriAd) values(@p1)",conn.DatabaseConnection());
        command.Parameters.AddWithValue("@p1", TextBox1.Text);
        command.ExecuteNonQuery();
        conn.DatabaseConnection().Close();
    }
}