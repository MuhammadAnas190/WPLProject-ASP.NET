using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WPLProject
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["userId"] != null && HttpContext.Current.Session["username"] != null)
            {
                welcomeLbl.Text = "Welcome " + Session["username"].ToString();
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

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * from [tb_product] where productId like '%" + SearchInput.Text + "%' or productName like '%" + SearchInput.Text + "%' or productType like '%" + SearchInput.Text + "%' or price like '%" + SearchInput.Text + "%'";
            SqlDataSource1.DataBind();
        }
    }
}