using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DbConnection
/// </summary>
public class DbConnection
{
    public static SqlConnection cnn;
	public DbConnection()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public  string GetConnectionString(string name)
    {
        string returnvalue = null;
        ConnectionStringSettings setting = ConfigurationManager.ConnectionStrings[name];
        if (setting!=null)
        {
            returnvalue = setting.ConnectionString;
        }
        return returnvalue;
    }
    public  Boolean FindRecords(string strConnectionString, string selectSQL)
    {
        Boolean returnValue = false;
        string connString = GetConnectionString(strConnectionString);
        SqlConnection cnn = new SqlConnection(connString);
        
        cnn.Open();
        SqlCommand command = new SqlCommand();
        command.Connection = cnn;
        command.CommandText = selectSQL;
        SqlDataReader reader = command.ExecuteReader();
        reader.Read();
        if (reader.HasRows)
        {
            returnValue = true;
        }
        reader.Close();
        reader.Dispose();
        cnn.Close();
        cnn.Close();
        return returnValue;
    }
    public void dbConnection(string connStr)
    {
        SqlConnection cnn = new SqlConnection(connStr);
        cnn.Open();
        SqlCommand command = new SqlCommand();
        command.Connection = cnn;
        DbConnection.cnn = cnn;
    }
    public void dbCloseConnection()
    {
        DbConnection.cnn.Close();
    }
}
