using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WPLProject
{
    public partial class Reports : System.Web.UI.Page
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
        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "sendOrder") return;
            int id = Convert.ToInt32(e.CommandArgument);
            // do something
            Response.Redirect("Order.aspx?productId=" + id);
        }
    }
}