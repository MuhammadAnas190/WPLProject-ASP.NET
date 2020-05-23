using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WPLProject.admin
{
    public partial class Orders : System.Web.UI.Page
    {
        private string connect;
        private SqlConnection sqlCon;
        private SqlCommand sqlCmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            NoSale.Text = "No order sales found";
            totalAmount.Text = "No order amount found";
            if (HttpContext.Current.Session["admin"] != null)
            {
                
                welcomeLbl.Text = "Welcome " + Session["admin"].ToString();
                connect = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                sqlCon = new SqlConnection(connect);
                string query = "SELECT COUNT(orderId) AS rows, SUM(amount) AS amount FROM tb_sales";
                sqlCon.Open();
                SqlDataReader reader;
                sqlCmd = new SqlCommand(query, sqlCon);
                reader = sqlCmd.ExecuteReader();
                if (reader.Read())
                {
                    int saleRow = reader.GetInt32(0);
                    int amountRow = reader.GetInt32(1);
                    NoSale.Text = "Total no. of sales: " + Convert.ToString(saleRow);
                    totalAmount.Text = "Total Amount: " + Convert.ToString(amountRow);
                }
                sqlCon.Close();
            }
            else
            {
                Response.Redirect("../Login.aspx");
            }
        }
        protected void logoutBtn_ServerClick(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }
        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "sendRep") return;
            _ = new string[3];
            string[] arg = e.CommandArgument.ToString().Split(',');
            // do something
            Response.Redirect("ViewRep.aspx?productId=" + arg[0] + "&userId=" + arg[1] + "&orderId=" + arg[2]);
        }
    }
}