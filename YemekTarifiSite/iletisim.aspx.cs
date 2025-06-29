using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class iletisim : System.Web.UI.Page
{
    databaseConnection con = new databaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string mesajGonderen = TextBox1.Text;
        string mesajBaslik = TextBox2.Text;
        string mesajMail = TextBox3.Text;
        string mesajIcerik = TextBox4.Text;
        SqlCommand sqlCommand = new SqlCommand("Insert Into Tbl_Mesajlar (MesajGonderen,MesajBaslik,MesajMail,MesajIcerik) values(@p1,@p2,@p3,@p4)",con.DatabaseConnection());
        sqlCommand.Parameters.AddWithValue("@p1",mesajGonderen);
        sqlCommand.Parameters.AddWithValue("@p2", mesajBaslik);
        sqlCommand.Parameters.AddWithValue("@p3", mesajMail);
        sqlCommand.Parameters.AddWithValue("@p4",mesajIcerik);
        sqlCommand.ExecuteNonQuery();
        con.DatabaseConnection().Close();
        Response.Write("Tarifiniz alınmıştır");
        Response.Redirect(Request.RawUrl);  // Yönlendirme ile tekrar gönderimi engelle.
        TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox1.Text = "";
    }
}