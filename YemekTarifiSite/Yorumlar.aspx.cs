﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yorumlar : System.Web.UI.Page
{
    databaseConnection connection = new databaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;

        //Onaylı Yorumlar Listesi
        SqlCommand sqlCommand = new SqlCommand("Select * From Tbl_Yorumlar Where YorumOnay=1",connection.DatabaseConnection());
        SqlDataReader reader = sqlCommand.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();

        //Onaysız Yorumlar Listesi
        SqlCommand sqlCommand2 = new SqlCommand("Select * From Tbl_Yorumlar Where YorumOnay=0", connection.DatabaseConnection());
        SqlDataReader reader2 = sqlCommand2.ExecuteReader();
        DataList2.DataSource = reader2;
        DataList2.DataBind();
         
        connection.DatabaseConnection().Close();
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
        Panel4.Visible = false;

    }
}