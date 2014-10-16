using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Net;
using System.Data.SqlClient;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //====== Check the address os Univers
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            //
            this.TextBox1.Text = "";
            this.ErrorLabel.Text = "";
            this.Label3.Text = "";

            //-----------database connection---------
            string connString = "projectConnectionString";               // path database 
            DbConnection connection = new DbConnection();                // 
            string connStr = connection.GetConnectionString(connString);//Check of database path
            if (connStr == null)
                throw new Exception("The Main Database doesnot exist");
            connection.dbConnection(connStr);

            //------Store the address of a variable in the text box type string
            string text = this.TextBox2.Text;
            string simple = "";
            //Exploration of the word in the title 
            int edu = text.IndexOf(".edu.");
            int ac = text.IndexOf(".ac.");
            int rnu = text.IndexOf(".rnu.");
            int dot = text.IndexOf(".");

            if (edu != -1)   //if statment Is the edu is Exists
            {
                edu = edu + 5;   //Storage extension after the word edu
                while (edu < text.Length) //Research continues along Address
                {
                    simple += text[edu]; //Storage content in simple
                    edu++;              //Increase the index and one 
                }
            }
            else if (ac != -1)            //if statment Is the ac is Exists
            {
                ac = ac + 4;                //Storage extension after the word ac
                while (ac < text.Length)      //Research continues along Address
                {
                    simple += text[ac];      //Storage content in simple
                    ac++;                      //Increase the index and one
                }
            }
            else if (rnu != -1)            //if statment Is the rnu is Exists
            {
                rnu = rnu + 5;            //Storage extension after the word rnu
                while (rnu < text.Length) //Research continues along Address
                {
                    simple += text[rnu];  //Storage content in simple
                    rnu++;               //Increase the index and one
                }                   //end while
            }                       // end  else if 
            else if (dot != -1)                 //if statment Is the dot is Exists
            {
                dot = dot + 1;                  //Storage is available after the dot
                while (dot < text.Length)       //Research continues along Address
                {
                    simple += text[dot];        //Storage content in simple
                    dot++;                      //Increase the index and one
                }                              //end while                    
            }                                  //end else if
            //if stetment give (path database and query) Contact database and Query on the extension and compare it with the icon
            if (connection.FindRecords("projectConnectionString", "select symbol from symbol where(symbol = '" + simple + "')"))
            {
                Evaluated(simple, text);         //call function evalution and give the Address and the extension
            }
            // If the extension does not exist in the address
            else if (connection.FindRecords("projectConnectionString", "select symbol from symbol where(symbol != '" + simple + "')"))
            {
                /*  string cou = "Djibouti";
                   string s = "dj";
                   string insertnameeee = "INSERT INTO symbol(country,symbol)VALUES ('" + cou + "','"+s+"')";
                   command.CommandText = insertnameeee;
                   command.ExecuteNonQuery();*/
                this.ErrorLabel.Text = "Plese Select Country From List";  //Show a message to the user
                this.ListCountry.Visible = true;                         //See the list of Country 
                this.ButtonContinua.Visible = true;                      //Show  the button
            }                                                            // end else if 
            else
            {
                this.ErrorLabel.Text = "This is not an Arabic University";   // Show a message to the user
                this.Label3.Text = "===============***********================";
            }
        }
        catch (Exception ff)
        {
            this.ErrorLabel.Text = ff.Message;
        }
    }

    protected void ButtonContinua_Click1(object sender, EventArgs e)   //event button
    {
        //============DatabaseConnection====
        string connString = "projectConnectionString";               // path database 
        DbConnection connection = new DbConnection();                // 
        string connStr = connection.GetConnectionString(connString);
        connection.dbConnection(connStr);
        SqlCommand command = new SqlCommand();
        command.Connection = DbConnection.cnn;
        //========
        string text = this.TextBox2.Text;                           //Store the address of a variable in the text box
        string Country = ListCountry.SelectedItem.Text;            //Storage in the Country from the list of new variable
        DataTable dt = new DataTable();
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlDataAdapter adapter = new SqlDataAdapter("select symbol,country from symbol where(country = '" + Country + "')", conn);
        SqlCommandBuilder Cmd = new SqlCommandBuilder(adapter);
        adapter.Fill(dt);
        string Simbol = dt.Rows[0][0].ToString();
        Evaluated(Simbol, text);
        
       /* DataTable dt = new DataTable();
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlDataAdapter adapter = new SqlDataAdapter("select symbol,country from symbol where(country = '" + Country + "')", conn);
        SqlCommandBuilder Cmd = new SqlCommandBuilder(adapter);
        adapter.Fill(dt);*/
    
       // Evaluated(Simbol, text);    //Call function evaluated and give the address and the extension
    }          //end event 
    
    private void Evaluated(string simple, string text)   //function receiving 2 variables from type string 
    {
        // Related sites stored in a variable of type string And paste Content text(University site) 
        string UnivName = "http://www."+text+"";
        string GoogleURL = "http://www.google.com/search?hl=en&q=link%3A" + text + "";
        string YahooURL = "http://siteexplorer.search.yahoo.com/search?p=http%3A%2F%2F" + text + "&bwm=i&bwmf=u&bwms=p&fr=sfp&fr2=seo-rd-se";
        string LiveURL = "http://search.live.com/results.aspx?q=link+" + text + "&form=QBLH";
        string ExaleadURL = "http://www.exalead.com/search/results?q=link%3A" + text + "";
        string YahoVisa = "http://siteexplorer.search.yahoo.com/search?p=http%3A%2F%2F" + text + "&bwm=i&bwmf=s&bwmo=&fr=sfp&fr2=seo-rd-se";
        string MSNVisa = "http://search.msn.com/results.aspx?q=linkdomain+" + text + "&FORM=MSNH11";
        string GPPTURL = "http://www.google.com/search?hl=en&q=" + text + "-filetype%3Appt&btnG=Search";
        string GDocURL = "http://www.google.com/search?hl=en&q=" + text + "-filetype%3Adoc";
        string GPdfURL = "http://www.google.com/search?hl=en&q=" + text + "-filetype%3Apdf";
        string GPsURL = "http://www.google.com/search?hl=en&q=" + text + "-filetype%3Aps";
        string GSchURL = "http://scholar.google.com/scholar?q=%22" + text + "%22&hl=en&lr=";

        //=call function RunUrl To open a Web page And store the page in a new variable
        string University = RunURL(UnivName);    
        string GoogleLink = RunURL(GoogleURL);
        string YahooLink = RunURL(YahooURL);
        string LiveLink = RunURL(LiveURL);
        string ExaleadLink = RunURL(ExaleadURL);
        string YahooInLink = RunURL(YahoVisa);
        string MSNInLink = RunURL(MSNVisa);
        string GooglePPT = RunURL(GPPTURL);
        string GoogleDoc = RunURL(GDocURL);
        string GooglePdf = RunURL(GPdfURL);
        string GooglePs = RunURL(GPsURL);
        string GoogleScholar = RunURL(GSchURL);
        //======Research on the page with the result 
        string Result_University_Name = GetResult_Name_University(University); //Call function search for the name of university
        string Result_Goole_Link = GetResult_Google_Link(GoogleLink); //Call function research on the number of links in the site from Engine google
        if (Result_Goole_Link == "-1") //If there is no word (of about) because of a negative one
        {
            string offsite = GoogleLink;//storge page google on new variable 
            Result_Goole_Link = GetResult_Return_Nubmer(offsite);  //call funcation 
        }
        string Result_Yahoo_Link = GetResult_Yahoo_Link(YahooLink);  //call function and give page yahoo Engine and search the result 
        string Result_Live_Link = GetResult_LiveSearch_Link(LiveLink);//call function and give page live Engine and search the result 
        string Result_exalead_Link = GetResult_Exalead_Link(ExaleadLink);//call function and give page exalead Engine and search the result 
        string Result_Yahoo_InLink = GetResult_Yahoo_InLink(YahooInLink);//call function and give page yahoo Engine and search the result 
        string Result_MSN_InLink = GetResult_MSN_InLink(MSNInLink);  //call function and give page msn Engine and search the result 
        string Result_Google_PPT = GetResult_Google_PPT(GooglePPT);  //call function and give page google  Engine and search the result 
        if (Result_Google_PPT == "-1") //If there is no word (of about) because of a negative one
        {
            string offsite = GooglePPT;  //storge page google ppt on new variable 
            Result_Google_PPT = GetResult_Return_Nubmer(offsite);  //call funcation
        }
        string Result_Google_Doc = GetResult_Google_Doc(GoogleDoc);//call function and give page google documnt Engine and search the result 
        if (Result_Google_Doc == "-1")  //If there is no word (of about) because of a negative one
        {
            string offsite = GoogleDoc; //storge page google doc on new variable
            Result_Google_Doc = GetResult_Return_Nubmer(offsite);//call funcation
        }
        string Result_Google_Pdf = GetResult_Google_Pdf(GooglePdf);//call function and give page google pdf Engine and search the result 
        if (Result_Google_Pdf == "-1") //If there is no word (of about) because of a negative one
        {
            string offsite = GooglePdf; //storge page google pdf on new variable
            Result_Google_Pdf = GetResult_Return_Nubmer(offsite);//call funcation
        }
        string Result_Google_Ps = GetResult_Google_Ps(GooglePs);//call function and give page google ps Engine and search the result 
        if (Result_Google_Ps == "-1") //If there is no word (of about) because of a negative one
        {
            string offsite = GooglePs; //storge page google ps on new variable
            Result_Google_Ps = GetResult_Return_Nubmer(offsite); //call funcation
        }
        string Result_Google_Scholar = GetResult_Google_Scholar(GoogleScholar);//call function and give page google scholar Engine and search the result 
        if (Result_Google_Scholar == "-1") //If there is no word (of about) because of a negative one
        {
            string offsite = GoogleScholar;  //storge page google scholar on new variable
            Result_Google_Scholar = GetResult_Return_Nubmer(offsite);//call funcation
        }//end if
        // Conversion the result from strin to double 
        double Gsize = Convert.ToDouble(Result_Goole_Link);
        double Ysize = Convert.ToDouble(Result_Yahoo_Link);
        double Lsize = Convert.ToDouble(Result_Live_Link);
        double ESize = Convert.ToDouble(Result_exalead_Link);
        double YIn = Convert.ToDouble(Result_Yahoo_InLink);
        double MIn = Convert.ToDouble(Result_MSN_InLink);
        double Powerpoint = Convert.ToDouble(Result_Google_PPT);
        double Document = Convert.ToDouble(Result_Google_Doc);
        double PdfResult = Convert.ToDouble(Result_Google_Pdf);
        double PsResult = Convert.ToDouble(Result_Google_Ps);
        double ScholarResult = Convert.ToDouble(Result_Google_Scholar);

        //The result is zero if do not take them log
        double googleSize = 0;  //Storing a result of the size after taking log
        double YahooSize = 0;  //Storing a result of the size after taking log
        double exaledSize = 0; //Storing a result of the size after taking log 
        double LiveSearchSize = 0; //Storing a result of the size after taking log
        double yahooV = 0;      //Storing a result of the Visibility after taking log
        double MSNV = 0;        //Storing a result of the Visibility after taking log
        double ppt = 0;         //Storing a result of the ppt after taking log
        double doc = 0;         //Storing a result of the doc after taking log
        double pdf = 0;         //Storing a result of the pdf after taking log
        double ps = 0;          //Storing a result of the ps after taking log
        double GoogleS = 0;     //Storing a result of the google scholar after taking log
        if (Gsize == 0.0)  //if the result Equal to zero 
        {
            googleSize = Gsize; //Store size without taking log
        }
        else if (Gsize != 0.0) //if the result not Equal to zero
        {
            googleSize = Math.Log(Gsize); //Take the log of the size 
        }
        if (Ysize == 0.0)  //if the result Equal to zero 
        {
            YahooSize = Ysize;//Store size without taking log
        }
        else if (Ysize != 0.0)  //if the result not Equal to zero
        {
            YahooSize = Math.Log(Ysize);//Take the log of the size
        }
        if (ESize == 0.0)    //if the result Equal to zero 
        {
            exaledSize = ESize;  //Store size without taking log
        }
        else if (ESize != 0.0) //if the result not Equal to zero
        {
            exaledSize = Math.Log(ESize); //Take the log of the size
        }
        if (Lsize == 0.0)    //if the result  Equal to zero
        {
            LiveSearchSize = Lsize; //Store size without taking log
        }
        else if (Lsize != 0.0)  //if the result not Equal to zero
        {
            LiveSearchSize = Math.Log(Lsize);//Take the log of the size
        }
        if (YIn == 0.0)    //if the result  Equal to zero
        {
            yahooV = YIn; //Store Visibility without taking log
        }
        else if (YIn != 0.0) //if the result not Equal to zero
        {
            yahooV = Math.Log(YIn); //Take the log of the Visibility
        }
        if (MIn == 0.0) //if the result  Equal to zero
        {
            MSNV = MIn;//Store Visibility without taking log
        }
        else if (MIn != 0.0) //if the result not Equal to zero
        {
            MSNV = Math.Log(MIn); //Take the log of the Visibility
        }
        if (Powerpoint == 0.0)  //if the result  Equal to zero
        {
            ppt = Powerpoint;//Store rech file(ppt) without taking log
        }
        else if (Powerpoint != 0.0) //if the result not Equal to zero
        {
            ppt = Math.Log(Powerpoint); //Take the log of the Powerpoint
        }
        if (Document == 0.0) //if the result  Equal to zero
        {
            doc = Document; //Store rech file(doc) without taking log
        }
        else if (Document != 0.0) //if the result not Equal to zero
        {
            doc = Math.Log(Document); //Take the log of the Document 
        }
        if (PdfResult == 0.0)   //if the result  Equal to zero
        {
            pdf = PdfResult; //Store rech file(pdf) without taking log
        }
        else if (PdfResult != 0.0)  //if the result not Equal to zero
        {
            pdf = Math.Log(PdfResult);  //Take the log of the pdf
        }
        if (PsResult == 0.0)    //if the result  Equal to zero
        {
            ps = PsResult;//Store rech file(ps) without taking log
        }
        else if (PsResult != 0.0) //if the result not Equal to zero
        {
            ps = Math.Log(PsResult); //Take the log of the ps
        }
        if (ScholarResult == 0.0) //if the result  Equal to zero
        {
            GoogleS = ScholarResult; //Store google scholar without taking log
        }
        else if (ScholarResult != 0.0) //if the result not Equal to zero
        {
            GoogleS = Math.Log(ScholarResult); //Take the log of the google scholar
        }

        //=
        double max = googleSize;  //store max result 
        double min = googleSize;  //store min result 
        double ResultSize = 0;    //store result size 
        double ResultFile = 0;    //store  result rich file
        double ResultScholar = 0; //store result scholar 
        double FinalResult = 0;   //store final result 
        //=====Size comparison between the results
        if (YahooSize > max)
        {
            max = YahooSize;
        }

        if (LiveSearchSize > max)
        {
            max = LiveSearchSize;
        }

        if (exaledSize > max)
        {
            max = exaledSize;
        }

        if (YahooSize < min)
        {
            min = YahooSize;
        }


        if (LiveSearchSize < min)
        {
            min = LiveSearchSize;
        }

        if (exaledSize < min)
        {
            min = exaledSize;
        }
        //
        ResultSize = googleSize + YahooSize + LiveSearchSize + exaledSize - max - min;
        //==========Visibility ===
        double resultVisibility = MSNV;
        if (yahooV > resultVisibility)
        {
            resultVisibility = yahooV;
        }
        //=============Rich File=======
        ResultFile = pdf + doc + ppt + ps;
        //============Scholar======
        ResultScholar = GoogleS;
        //==============Rank====
        FinalResult = 4 * resultVisibility + 2 * ResultSize + 1 * ResultScholar + 1 * ResultFile;
        //=================Get Last Site ID====== 
        string connString = "projectConnectionString";//path database 
        DbConnection connection = new DbConnection();
        string connStr = connection.GetConnectionString(connString);
        connection.dbConnection(connStr);
        SqlCommand command = new SqlCommand();
        command.Connection = DbConnection.cnn;
        SqlConnection Conn = new SqlConnection();
        Conn.ConnectionString = SqlDataSource1.ConnectionString;
        SqlDataAdapter adapter = new SqlDataAdapter("Select  Max(siteID)  From Ranking", Conn); //query select maximum Site id
        SqlCommandBuilder cmmand = new SqlCommandBuilder(adapter);    
        DataTable DT = new DataTable();   //create table 
        adapter.Fill(DT);      //store max site from query
        int SiteId = 0;
    if (DT.Rows.Count != 0)  //
        {
            
            SiteId = Int32.Parse(DT.Rows[0][0].ToString());
            SiteId++;
        }
       //Storage results in the table Ranking on database  
        string insertnamee = "INSERT INTO Ranking(siteID,FinalResult,Date)VALUES ('" + SiteId + "','" + FinalResult + "','"+System.DateTime.Now+"')";
        command.CommandText = insertnamee;
        command.ExecuteNonQuery();
        //Storage results in the table Address on database
        string addres = "insert into Address (siteID ,UAddress,University,symbol)VALUES ('" + SiteId + "','" + TextBox2.Text + "','" + Result_University_Name + "','" + simple + "')";
        command.CommandText = addres;
        command.ExecuteNonQuery();
        //Storage results in the table Size on database
        string insertsize = "insert into Size (Google,Yahoo,LiveSearch,Exalead,ResultSize,SiteID)VALUES ('" + Gsize + "','" + Ysize + "','" + Lsize + "','" + ESize + "','" + ResultSize + "','" + SiteId + "')";
        command.CommandText = insertsize;
        command.ExecuteNonQuery();

        //=============Visibility======
        //Storage results in the table Visibilty on database
        string insertvisibility = "insert into Visibilty(YahooV,MSN,ResultV,siteID) values ('" + YIn + "','" + MIn + "','" + resultVisibility + "','" + SiteId + "')";
        command.CommandText = insertvisibility;
        command.ExecuteNonQuery();


        // ==============Rich File========
        //Storage results in the table Rich File on database
        string insertfile = "INSERT INTO RichFile(pdf,doc,PPt,Ps,ResultFile,siteID)VALUES ('" + PdfResult + "','" + Document + "','" + Powerpoint + "','" + PsResult + "','" + ResultFile + "','" + SiteId + "')";
        command.CommandText = insertfile;
        command.ExecuteNonQuery();

        // ==========Scholar========
        //Storage results in the table Scholar on database
        string insertscholar = "INSERT INTO Scholar(siteID,GoogleScholar,ScholarResult)VALUES ('" + SiteId + "','" + ScholarResult + "','" + GoogleS + "')";
        command.CommandText = insertscholar;
        command.ExecuteNonQuery();
        connection.dbCloseConnection();
        this.Label3.Visible = false;   //Hide label
        this.ListCountry.Visible = false;  //  Hide list Country
        this.ButtonContinua.Visible = false;  //Hide Button
        Ranking();                     // call Function Ranking 
        this.GridView1.DataBind();    // View result on the GridView
    }
    public void Ranking() //The task of this function Calculated Rank 
    {
         SqlConnection Conn = new SqlConnection(); 
        Conn.ConnectionString = SqlDataSource1.ConnectionString;
        SqlDataAdapter adapter = new SqlDataAdapter("SELECT [siteID], [FinalResult], [Ranking] FROM [Ranking] ORDER BY [FinalResult] DESC", Conn);
        SqlCommandBuilder cmmand = new SqlCommandBuilder(adapter);
        DataTable DT = new DataTable();
        adapter.Fill(DT);
        int Count = DT.Rows.Count;
        for (int i = 1; i <= Count; i++)
        {
            DT.Rows[i - 1][2] = i.ToString();
        }
        adapter.Update(DT); 

    }
    private string RunURL(string URL)  //The task of this function opening of the Internet
    {
        HttpWebRequest Req = (HttpWebRequest)WebRequest.Create(URL);
        Req.Proxy = WebProxy.GetDefaultProxy();
        Req.Proxy.Credentials = CredentialCache.DefaultCredentials;
        HttpWebResponse Res = (HttpWebResponse)Req.GetResponse();
        Stream stream = Res.GetResponseStream();
        StreamReader sr = new StreamReader(stream);
        return sr.ReadToEnd();
    }
    // The task of this function Search for the name of university
    private string GetResult_Name_University(string nameU)
    {
        string UniName = "";
        string html = nameU;
        int x = html.IndexOf("<title>") + 7;

        while (x < html.Length)
        {
            char g = html[x];
            if (Char.IsLetter(g) || Char.IsWhiteSpace(g))
            {
                // ch = true;
                UniName += html[x];
            }
            if (html[x] == '<')
                break;
            x++;
        }
        return UniName;
    }
    //The task of this function Search result link page Google 
    private string GetResult_Google_Link(string GoogleLink)
    {
        bool num = false;
        string Num = "";
        string html = GoogleLink;
        int x = html.IndexOf("of about");
        if (x != -1)
        {
            while (x < html.Length)
            {
                char g = html[x];
                if (Char.IsDigit(g))
                {
                    num = true;
                    Num += html[x];
                }
                else if (num == true)
                    if (html[x] != ',')
                        break;
                x++;
            }
        }
        else
        {
            Num = "-1";
        }
        return Num;
    }
    //The task of this function Search result link page Yahoo
    private string GetResult_Yahoo_Link(string YahooLink)
    {
        bool numYL = false;
        string NumYL = "";
        string htmlYL = YahooLink;
        int x = htmlYL.IndexOf("Inlinks");
        if (x != -1)
        {
            while (x < htmlYL.Length)
            {
                char g = htmlYL[x];
                if (Char.IsDigit(g))
                {
                    numYL = true;
                    NumYL += htmlYL[x];
                }
                else if (numYL == true)
                    if (htmlYL[x] != ',')
                        break;
                x++;
            }
        }
        else
        {
            NumYL = "0";
        }
        return NumYL;
    }
    //The task of this function Search result link in page Live Search
    private string GetResult_LiveSearch_Link(string LiveLink)
    {
        bool numLL = false;
        string NumLL = "";
        string htmlLL = LiveLink;
        int x = htmlLL.IndexOf(" of ");
        if (x != -1)
        {
            while (x < htmlLL.Length)
            {
                char g = htmlLL[x];
                if (Char.IsDigit(g))
                {
                    numLL = true;
                    NumLL += htmlLL[x];
                }
                else if (numLL == true)
                    if (htmlLL[x] != ',')
                        break;
                x++;
            }
        }
        else
        {
            NumLL = "0";
        }
        return NumLL;
    }
    //The task of this function Search result link in page Exalead
    private string GetResult_Exalead_Link(string ExaleadLink)
    {
        bool numEL = false;
        string NumEL = "";
        string htmlEL = ExaleadLink;
        int x = htmlEL.IndexOf("of about");
        if (x != -1)
        {
            while (x < htmlEL.Length)
            {
                char g = htmlEL[x];
                if (Char.IsDigit(g))
                {
                    numEL = true;
                    NumEL += htmlEL[x];
                }
                else if (numEL == true)
                    if (htmlEL[x] != ',')
                        break;
                x++;
            }
        }
        else
        {
            NumEL = "0";
        }
        return NumEL;
    }
    //The task of this function Search result Inlink in page Yahoo 
    private string GetResult_Yahoo_InLink(string YahooInLink)
    {
        bool numYI = false;
        string NumYIn = "";
        string htmlYIn = YahooInLink;
        int yi = htmlYIn.IndexOf("Inlinks");
        if (yi != -1)
        {
            while (yi < htmlYIn.Length)
            {
                char g = htmlYIn[yi];
                if (Char.IsDigit(g))
                {
                    numYI = true;
                    NumYIn += htmlYIn[yi];
                }
                else if (numYI == true)
                    if (htmlYIn[yi] != ',')
                        break;
                yi++;
            }
        }
        else
        {
            NumYIn = "0";
        }
        return NumYIn;
    }
    //The task of this function Search result Inlink in page MSN
    private string GetResult_MSN_InLink(string MSNInLink)
    {
        bool numMIn = false;
        string NumMIn = "";
        string htmlMIn = MSNInLink;
        int y = htmlMIn.IndexOf(" of ");
        if (y != -1)
        {
            while (y < htmlMIn.Length)
            {
                char g = htmlMIn[y];
                if (Char.IsDigit(g))
                {
                    numMIn = true;
                    NumMIn += htmlMIn[y];
                }
                else if (numMIn == true)
                    if (htmlMIn[y] != ',')
                        break;
                y++;
            }
        }
        else
        {
            NumMIn = "0";
        }
        return NumMIn;
    }
    //The task of this function Search result ppt from page google 
    private string GetResult_Google_PPT(string GooglePPT)
    {
        bool numGPPT = false;
        string NumGPPT = "";
        string htmlGPPT = GooglePPT;
        int y = htmlGPPT.IndexOf("of about");
        if (y != -1)
        {
            while (y < htmlGPPT.Length)
            {
                char g = htmlGPPT[y];
                if (Char.IsDigit(g))
                {
                    numGPPT = true;
                    NumGPPT += htmlGPPT[y];
                }
                else if (numGPPT == true)
                    if (htmlGPPT[y] != ',')
                        break;
                y++;
            }
        }
        else
        {
            NumGPPT = "-1";
        }
        return NumGPPT;
    }
    //The task of this function Search result doc from page google
    private string GetResult_Google_Doc(string GoogleDoc)
    {
        bool numGDoc = false;
        string NumGDoc = "";
        string htmlGDoc = GoogleDoc;
        int y = htmlGDoc.IndexOf("of about");
        if (y != -1)
        {
            while (y < htmlGDoc.Length)
            {
                char g = htmlGDoc[y];
                if (Char.IsDigit(g))
                {
                    numGDoc = true;
                    NumGDoc += htmlGDoc[y];
                }
                else if (numGDoc == true)
                    if (htmlGDoc[y] != ',')
                        break;
                y++;
            }
        }
        else
        {
            NumGDoc = "-1";
        }
        return NumGDoc;
    }
    //The task of this function Search result pdf from page google
    private string GetResult_Google_Pdf(string GooglePdf)
    {
        bool numGPdf = false;
        string NumGPdf = "";
        string htmlGPdf = GooglePdf;
        int y = htmlGPdf.IndexOf("of about");
        if (y != -1)
        {
            while (y < htmlGPdf.Length)
            {
                char g = htmlGPdf[y];
                if (Char.IsDigit(g))
                {
                    numGPdf = true;
                    NumGPdf += htmlGPdf[y];
                }
                else if (numGPdf == true)
                    if (htmlGPdf[y] != ',')
                        break;
                y++;
            }
        }
        else
        {
            NumGPdf = "-1";
        }
        return NumGPdf;
    }
    //The task of this function Search result Ps from page google
    private string GetResult_Google_Ps(string GooglePs)
    {
        bool numGPs = false;
        string NumGPs = "";
        string htmlGPs = GooglePs;
        int p = htmlGPs.IndexOf("of about");
        if (p != -1)
        {
            while (p < htmlGPs.Length)
            {
                char g = htmlGPs[p];
                if (Char.IsDigit(g))
                {
                    numGPs = true;
                    NumGPs += htmlGPs[p];
                }
                else if (numGPs == true)
                    if (htmlGPs[p] != ',')
                        break;
                p++;
            }
        }
        else
        {
            NumGPs = "-1";
        }
        return NumGPs;
    }
    //The task of this function Search result Scholar from page google
    private string GetResult_Google_Scholar(string GoogleScholar)
    {
        bool numGS = false;
        string NumGS = "";
        string htmlGS = GoogleScholar;
        int y = htmlGS.IndexOf("of about");
        if (y != -1)
        {
            while (y < htmlGS.Length)
            {
                char g = htmlGS[y];
                if (Char.IsDigit(g))
                {
                    numGS = true;
                    NumGS += htmlGS[y];
                }
                else if (numGS == true)
                    if (htmlGS[y] != ',')
                        break;
                y++;
            }
        }
        else
        {
            NumGS = "-1";
        }
        return NumGS;
    }
    //The task of this function Search result if Smaller than ten from page google
    private string GetResult_Return_Nubmer(string offsite)
    {
        bool num = false;
        string Num = "";
        string html = offsite;
        int x = html.IndexOf("of <b>");
        if (x != -1)
        {
            while (x < html.Length)
            {
                char g = html[x];
                if (Char.IsDigit(g))
                {
                    num = true;
                    Num += html[x];
                }
                else if (num == true)
                    if (html[x] != ',')
                        break;
                x++;

            }
        }
        else
        {
            Num = "0";
        }
        return Num;
    }
    
    protected void Button1_Click(object sender, EventArgs e) //Event bouton Search 
    {


        this.TextBox2.Text = "";  //Clear text evaluat
        this.ErrorLabel.Text = "";  //clear label 
        this.Label3.Text = "";      //clear label
        string text = this.TextBox1.Text;  //Storage address from textbox in New variable
        //-----------database connection---------
        string connString = "projectConnectionString";    //path database 
        DbConnection connection = new DbConnection();      //create object from database 
        string connStr = connection.GetConnectionString(connString);
        connection.dbConnection(connStr);
        SqlCommand command = new SqlCommand();
        command.Connection = DbConnection.cnn;
        //Contact database and query for the address stored in the database if it is equal to the address
        if (connection.FindRecords("projectConnectionString", "select UAddress from Address where(UAddress = '" + text + "')"))
        {
            connection.dbCloseConnection(); //call Function 
            this.GridView2.DataBind();     //Show the Result
        }
        //Contact database and query for the Country stored in the database if it is equal to the Country
        else if (connection.FindRecords("projectConnectionString", "select Country from Symbol where(Country = '" + text + "')"))
        {
            connection.dbCloseConnection();
            this.GridView2.DataBind();//show the Result 
        }
        else
        {
            this.ErrorLabel.Text = "This is not exisit university";//show message 
            this.Label3.Text = "===============***********================";
        }
    }
}