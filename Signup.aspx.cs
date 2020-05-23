using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

namespace WPLProject
{
    public partial class Signup : System.Web.UI.Page
    {
        private string connect;
        private SqlConnection sqlCon;
        private SqlCommand sqlCmd;

        private static string Encrypt(string val)
        {
            using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
            {
                UTF8Encoding utf8 = new UTF8Encoding();
                byte[] data = md5.ComputeHash(utf8.GetBytes(val));
                return Convert.ToBase64String(data);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            connect = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            sqlCon = new SqlConnection(connect);
        }
        protected void PassInput_TextChanged(object sender, EventArgs e)
        {
            PassInput.Text = Encrypt(PassInput.Text);
        }

        protected void SignupBtn_Click1(object sender, EventArgs e)
        {
            sqlCon.Open();
            string _name = usernameInput.Text;
            string _email = EmailInput.Text;
            string _pass = PassInput.Text;
            string query = "INSERT INTO tb_users (uname, uemail, upass) VALUES (@uname, @uemail, @upass)";
            if (_name != "" && _email != "" && _pass != "")
            {
                try
                {
                    sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@uname", _name);
                    sqlCmd.Parameters.AddWithValue("@uemail", _email);
                    sqlCmd.Parameters.AddWithValue("@upass", _pass);
                    sqlCmd.ExecuteNonQuery();
                    sqlCon.Close();
                    messageLbl.Text = "Successfully added!";
                    //Response.Redirect("Default.aspx");
                }
                catch (SqlException er)
                {
                    messageLbl.Text = "An Error occured: " + er.Message;
                }
            }
            else
            {
                messageLbl.Text = "All fields are required";

            }
        }
    }
}