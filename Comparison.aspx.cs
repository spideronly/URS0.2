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

    }
    protected void AddUnivButton_Click(object sender, EventArgs e)
    {
       
        string Id = UnivList.SelectedValue;
        string University = UnivList.SelectedItem.Text;
        for (int i = 0; i < UnivBulletedList.Items.Count; i++)
        {
            if (UnivBulletedList.Items[i].Text == University)
                return;

        }
        UnivBulletedList.Items.Add(University);
        UnivBulletedList.Items[UnivBulletedList.Items.Count - 1].Value = Id;


    }
    protected void ComparisonButton_Click(object sender, EventArgs e)
    {
       

        if (UnivBulletedList.Items.Count < 2)
            return;
        //-----------database connection---------
        string connString = "projectConnectionString";
        DbConnection connection = new DbConnection();
        string connStr = connection.GetConnectionString(connString);
        connection.dbConnection(connStr);
        SqlCommand command = new SqlCommand();
        command.Connection = DbConnection.cnn;
        //////////////
        ArrayList size = new ArrayList();
        ArrayList files = new ArrayList();
        ArrayList scholar = new ArrayList();
        ArrayList visibilty = new ArrayList();
        for (int i = 0; i < UnivBulletedList.Items.Count; i++)
        {
            string sizeR = "select ResultSize from Size where(SiteID=" + UnivBulletedList.Items[i].Value + ")";
            command.CommandText = sizeR;
            SqlDataReader sizeReader = command.ExecuteReader();
            sizeReader.Read();
            size.Add(sizeReader[0].ToString());
            sizeReader.Close();
            ////----------------
            string filesR = "select ResultFile from RichFile where(SiteID=" + UnivBulletedList.Items[i].Value + ")";
            command.CommandText = filesR;
            SqlDataReader filesReader = command.ExecuteReader();
            filesReader.Read();
            files.Add(filesReader[0].ToString());
            filesReader.Close();
            ////---------------
            string scholarR = "select ScholarResult from Scholar where(SiteID=" + UnivBulletedList.Items[i].Value + ")";
            command.CommandText = scholarR;
            SqlDataReader scholarReader = command.ExecuteReader();
            scholarReader.Read();
            scholar.Add(scholarReader[0].ToString());
            scholarReader.Close();
            ////---------------
            string visibiltyR = "select ResultV from Visibilty where(SiteID=" + UnivBulletedList.Items[i].Value + ")";
            command.CommandText = visibiltyR;
            SqlDataReader visibiltyReader = command.ExecuteReader();
            visibiltyReader.Read();
            visibilty.Add(visibiltyReader[0].ToString());
            visibiltyReader.Close();

        }
        for (int i = 0; i < UnivBulletedList.Items.Count; i++)
        {

            RadChart1.Series[0].Items.Add(new ChartSeriesItem(i, Convert.ToDouble(size[i].ToString())));
            RadChart1.Series[1].Items.Add(new ChartSeriesItem(i, Convert.ToDouble(files[i].ToString())));
            RadChart1.Series[2].Items.Add(new ChartSeriesItem(i, Convert.ToDouble(scholar[i].ToString())));
            RadChart1.Series[3].Items.Add(new ChartSeriesItem(i, Convert.ToDouble(visibilty[i].ToString())));


        }

    }
    protected void ClearButton_Click(object sender, EventArgs e)
    {
        UnivBulletedList.Items.Clear();
    }
    

}
