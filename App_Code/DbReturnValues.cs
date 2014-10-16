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
/// Summary description for DbReturnValues
/// </summary>
public class DbReturnValues
{
	public DbReturnValues()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string UserRoleReturn(string connString,string strCommand,string returnValue)
    {
        DbConnection connection = new DbConnection();
        string userRole = null;
        string connStr = connection.GetConnectionString(connString);
        connection.dbConnection(connStr);
        SqlCommand Command = new SqlCommand();
        Command.Connection = DbConnection.cnn;
        Command.CommandText = strCommand;
        SqlDataReader Reader = Command.ExecuteReader();
        Reader.Read();
        userRole = Reader[returnValue].ToString();
        Reader.Dispose();
        connection.dbCloseConnection();
       
        return userRole;
    }
}
