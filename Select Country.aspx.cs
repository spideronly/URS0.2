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

public partial class Comparison : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ListCountry.Visible = true;
    }
    
    protected void ButtonShowCountry_Click(object sender, EventArgs e)
    {
        string connString = "projectConnectionString";
        DbConnection connection = new DbConnection();
        string connStr = connection.GetConnectionString(connString);
        connection.dbConnection(connStr);
        SqlCommand command = new SqlCommand();
        command.Connection = DbConnection.cnn;
       // string University = UnivList.SelectedItem.Text;
      string Country = ListCountry.SelectedItem.Text;
      if (connection.FindRecords("projectConnectionString", "select Country from Symbol where(Country = '" + Country + "')"))
      {
          connection.dbCloseConnection();
          this.GridView1.DataBind();
      }
      else
      {
          this.LibalnotFound.Text = "There is not Found";
      }
        
    }
    protected string getrankcountry()
    {
        return (GridView1.Rows.Count + 1).ToString();
         
    }
}
