using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using Telerik.Charting;

public partial class TopTen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connString = "projectConnectionString";
        DbConnection connection = new DbConnection();
        string connStr = connection.GetConnectionString(connString);
        connection.dbConnection(connStr);
        SqlCommand command = new SqlCommand();
        command.Connection = DbConnection.cnn;
        //////////////
        ArrayList FinalResult = new ArrayList();
       
        for (int i = 1; i < 11; i++)
        {
            string Final_Result = "select FinalResult from Ranking where(Ranking=" + i + ")";
            command.CommandText =Final_Result;
            SqlDataReader FinalReader = command.ExecuteReader();
            FinalReader.Read();
            FinalResult.Add(FinalReader[0].ToString());
            FinalReader.Close();
          

        }
        for (int i = 0; i < 10; i++)
        {

            RadChart1.Series[0].Items.Add(new ChartSeriesItem(i, Convert.ToDouble(FinalResult[i].ToString())));


        } 
    }
   
  
  
}
