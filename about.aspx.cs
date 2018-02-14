using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Net.Mail;
using System.Text;
using System.Data.SqlClient;

using MySql.Data.MySqlClient;
using System.Data;
//using System.Web.Mail;


namespace WebApplication1
{
    public partial class About : Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            string fname = Request.Form["fname"];
            Session["fname"] = fname;
            string lname = Request.Form["lname"];
            Session["lname"] = lname;
            string email = Request.Form["email"];
            Session["email"] = email;
            string topic = Request["topic"];
            Session["topic"] = topic;
            string comment = Request.Form["comment"];
            Session["comment"] = comment;
            Random rand = new Random();
           

            if (!string.IsNullOrEmpty(fname) && !string.IsNullOrEmpty(email))
            {

                string strcon = "Server=localhost;Database=bavn;Uid=root;Pwd=mysqlroot;";
                string str; int reference;
                MySql.Data.MySqlClient.MySqlCommand com;
                object obj;

                MySqlConnection con = new MySqlConnection(strcon);
                con.Open();
                str = "Insert into contactus(firstname,lastname,Email,topic,comments) values( @firstname, @lastname, @Email,@topic, @comments)";
                com = new MySqlCommand(str, con);
                com.CommandType = CommandType.Text;
                //com.Parameters.AddWithValue("@reference", reference);
                com.Parameters.AddWithValue("@firstName", fname);
                com.Parameters.AddWithValue("@lastName", lname);
                com.Parameters.AddWithValue("@email", email);
                com.Parameters.AddWithValue("@topic", topic);
                com.Parameters.AddWithValue("@comments", comment);

                obj = com.ExecuteScalar();
                str = "select reference from contactus where firstName= '"+fname+"'" ;
                com = new MySqlCommand(str, con);
                obj =com.ExecuteScalar();
                reference = Convert.ToInt32(obj);
                Session["reference"] = reference;
                string from = "alekhya.raidu@lacity.org"; //Replace this with your own correct Gmail Address

                    string to = email; //Replace this with the Email Address to whom you want to send the mail

                    MailMessage mail = new MailMessage();
                    mail.To.Add(to);
                    mail.To.Add("alekhya.raidu@lacity.org");
                    mail.From = new MailAddress(from, "LACity", System.Text.Encoding.UTF8);
                    mail.Subject = "Contact information received";
                    mail.SubjectEncoding = System.Text.Encoding.UTF8;
                    mail.Body = "<h4>BAVN has received a comment/question from: " + fname + "</ h4 > " + "<h4>Topic: " + topic + "</ h4 >" +
                        "<h4>Comment/Question: " + comment + "</h4> " + "<h4> Please review and respond to " + fname + " on a timely fashion" + " </ h4 > " + "<h4>Thank you for your support</h4>"+"<h4>Reference Number: "+reference+"</h4>";

                    mail.BodyEncoding = System.Text.Encoding.UTF8;
                    mail.IsBodyHtml = true;
                    mail.Priority = MailPriority.High;

                    SmtpClient client = new SmtpClient();
                    //Add the Creddentials- use your own email id and password               
                    client.Port = 25; // Gmail works on this port
                    client.Host = "popmail.ci.la.ca.us";

                    try
                    {
                        client.Send(mail);
                        //Server.Transfer("WebForm1.aspx", true);
                        Response.Redirect("WebForm1.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                    catch (Exception ex)
                    {
                        Exception ex2 = ex;
                        string errorMessage = string.Empty;
                        while (ex2 != null)
                        {
                            errorMessage += ex2.ToString();
                            ex2 = ex2.InnerException;
                        }
                        HttpContext.Current.Response.Write(errorMessage);
                    }
                    finally
                    {
                        con.Close();//close db connection
                    }

                
            }
        }
    }
}