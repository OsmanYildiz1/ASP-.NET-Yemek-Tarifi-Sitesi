using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOner : System.Web.UI.Page
{
    databaseConnection connection = new databaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnTarifOner_Click(object sender, EventArgs e)
    {
        SqlCommand sqlCommand = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapımı,TarifResim,TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6)",connection.DatabaseConnection());
        sqlCommand.Parameters.AddWithValue("@t1",txtTarifAd.Text);
        sqlCommand.Parameters.AddWithValue("@t2",txtMalzemeler.Text);
        sqlCommand.Parameters.AddWithValue("@t3",txtTarif.Text);
        sqlCommand.Parameters.AddWithValue("@t4",FileUpload1.FileName);
        sqlCommand.Parameters.AddWithValue("@t5",txtTarifOneren.Text);
        sqlCommand.Parameters.AddWithValue("@t6", txtMailAdresi.Text);
        sqlCommand.ExecuteNonQuery();
        connection.DatabaseConnection().Close();
        Response.Write("Tarifiniz alınmıştır");




    }
}