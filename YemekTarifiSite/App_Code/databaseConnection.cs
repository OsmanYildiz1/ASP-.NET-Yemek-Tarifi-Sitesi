using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
public class databaseConnection
{
    public SqlConnection DatabaseConnection()
    {
        SqlConnection sqlConnection = new SqlConnection("Data Source=DESKTOP-7F14DMR; initial Catalog=YemekTarifiDb; integrated security=true");
        sqlConnection.Open();
        return sqlConnection;
    }
}