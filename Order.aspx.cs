using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WPLProject
{
    public partial class Order : System.Web.UI.Page
    {
        private string connect;
        private SqlConnection sqlCon;
        private SqlCommand sqlCmd;
        private int id;
        private string name;
        private string type;
        private string desc;
        private string price;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["userId"] != null && HttpContext.Current.Session["username"] != null)
            {
                welcomeLbl.Text = "Welcome " + Session["username"].ToString();
                id = Convert.ToInt32(Request.QueryString["productId"]);
                connect = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                sqlCon = new SqlConnection(connect);
                string query = string.Format("SELECT * FROM tb_product WHERE productId='{0}' ", id); ;

                sqlCon.Open();
                SqlDataReader reader;
                sqlCmd = new SqlCommand(query, sqlCon);
                reader = sqlCmd.ExecuteReader();
                if(reader.Read())
                {
                    name = reader.GetString(1);
                    type = reader.GetString(2);
                    desc = reader.GetString(3);
                    price = reader.GetString(4);
                }
                sqlCon.Close();

                pName.Text = name;
                pType.Text = type;
                pDesc.Text = desc;
                pPrice.Text = price;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void logoutBtn_ServerClick(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }

        protected void OrderBtn_Click(object sender, EventArgs e)
        {
            int pAmount = Convert.ToInt32(price);
            int myAmount = Convert.ToInt32(amount.Text);
            int myQuantity = Convert.ToInt32(quantity.Text);
            int user = Convert.ToInt32(Session["userId"]);

           if (amount.Text != "" && quantity.Text != "")
            {
                if (myAmount >= pAmount)
                {
                    sqlCon.Open();
                    string query = "INSERT INTO tb_sales (productId, userId, amount, quantity) VALUES ("+ id +
                        ", " + user + 
                        ", " + myAmount + 
                        ", " + myQuantity + 
                        ")";
                    sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.ExecuteNonQuery();
                    messageLbl.Text = "Order Successfully!";
                    sqlCon.Close();
                }
                else
                {
                    messageLbl.Text = "Your provided amount must be greater than the Product Amount";
                }
            }
           else
            {
                messageLbl.Text = "Please provide all fields";
            }
        }
    }
}