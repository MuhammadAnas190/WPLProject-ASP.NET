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
    public partial class Login : System.Web.UI.Page
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

        protected void LoginBtn_Click1(object sender, EventArgs e)
        {
            string _pass = Encrypt(PassInput.Text);
            string query = string.Format("SELECT * FROM tb_users WHERE uemail='{0}' AND upass='{1}' ", EmailInput.Text, _pass); ;

            sqlCon.Open();
            SqlDataReader reader;
            sqlCmd = new SqlCommand(query, sqlCon);
            reader = sqlCmd.ExecuteReader();
            
            if (EmailInput.Text == "admin@admin.com" && _pass == "ISMvKXpXpadDiUoOSoAfww==")
            {
                /*pass = admin*/
                Session["admin"] = "admin";
                Response.Redirect("~/admin/Admin.aspx");
            }
            else if (reader.Read())
            {
                int userId = reader.GetInt32(0);
                string username = reader.GetString(1);
                Session["userId"] = Convert.ToString(userId);
                Session["username"] = username;
                sqlCon.Close();
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                sqlCon.Close();
                messageLbl.Text = "Invalid email or password";
            }
        }
    }
}