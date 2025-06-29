using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    databaseConnection conn = new databaseConnection();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["YemekId"]; // <a href="YemekDetay.aspx?YemekId=<%# Eval("YemekId")%>"> ?'den sonraki sorguyu al.

        SqlCommand cmd = new SqlCommand("Select YemekAd From Tbl_Yemekler Where YemekId=@p1", conn.DatabaseConnection());
        cmd.Parameters.AddWithValue("@p1", yemekid);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label4.Text = dr[0].ToString();
        }
        conn.DatabaseConnection().Close();

        // Yorumları listeleme
        SqlCommand cmd2 = new SqlCommand("Select * from Tbl_Yorumlar Where YemekId=@p2", conn.DatabaseConnection());
        cmd2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert Into Tbl_Yorumlar (YorumAdSoyad,YorumMail,YorumIcerik,YemekId) values(@p1,@p2,@p3,@p4)",conn.DatabaseConnection());
        cmd.Parameters.AddWithValue("@p1",TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2",TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3",TextBox3.Text);
        cmd.Parameters.AddWithValue("@p4",yemekid);
        cmd.ExecuteNonQuery();
        conn.DatabaseConnection().Close();
      
        Response.Redirect(Request.RawUrl);  // Yönlendirme ile tekrar gönderimi engelle.
 // Bu satırın amacı, sayfada bir form gönderimi (POST) yapıldıktan sonra sayfanın temiz bir şekilde (GET isteği ile) yeniden yüklenmesini sağlamaktır.
        TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox1.Text = "";
    }
}