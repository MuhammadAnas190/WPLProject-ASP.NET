using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WPLProject.admin
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["admin"] != null)
            {
                welcomeLbl.Text = "Welcome " + Session["admin"].ToString();
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
    }
}