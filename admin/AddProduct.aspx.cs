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
    public partial class AddProduct : System.Web.UI.Page
    {
        private string connect;
        private SqlConnection sqlCon;
        private SqlCommand sqlCmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                welcomeLbl.Text = "Welcome " + Session["admin"].ToString();
                connect = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                sqlCon = new SqlConnection(connect);
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

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            string _name = nameInput.Text;
            string _type = Request.Form["typeSelect"];
            string _desc = descInput.Text;
            string _price = priceInput.Text;
            string query = "INSERT INTO tb_product (productName, productType, productDesc, price) VALUES (@name, @type, @desc, @price)";
            if (_name != "" && _desc != "" && _price != "" && _type != "")
            {
                try
                {
                    sqlCon.Open();
                    sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@name", _name);
                    sqlCmd.Parameters.AddWithValue("@type", _type);
                    sqlCmd.Parameters.AddWithValue("@desc", _desc);
                    sqlCmd.Parameters.AddWithValue("@price", _price);
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