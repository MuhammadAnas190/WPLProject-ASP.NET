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
    public partial class ViewRep : System.Web.UI.Page
    {
        private string connect;
        private SqlConnection sqlCon;
        private SqlCommand sqlCmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["admin"] != null)
            {
                string prId = "";
                string usId = "";
                string orId = "";
                int amount = 0;
                int quantity = 0;
                string pName = "";
                string pType = "";
                string pDesc = "";
                string pPrice = "";
                string uname = "";
                string uemail = "";

                welcomeLbl.Text = "Welcome " + Session["admin"].ToString();
                connect = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                sqlCon = new SqlConnection(connect);
                int pId = Convert.ToInt32(Request.QueryString["productId"]);
                int uId = Convert.ToInt32(Request.QueryString["userId"]);
                int oId = Convert.ToInt32(Request.QueryString["orderId"]);
                string query = "SELECT * FROM tb_sales LEFT JOIN tb_product ON tb_product.productId = " + pId + 
                    " LEFT JOIN tb_users ON tb_users.uid = " + uId +
                    " WHERE orderId = " + oId;
                try
                {
                    sqlCon.Open();
                    SqlDataReader reader;
                    sqlCmd = new SqlCommand(query, sqlCon);
                    reader = sqlCmd.ExecuteReader();
                    if (reader.Read())
                    {
                        prId = Convert.ToString(pId);
                        usId = Convert.ToString(uId);
                        orId = Convert.ToString(oId);
                        amount = reader.GetInt32(3);
                        quantity = reader.GetInt32(4);
                        pName = reader.GetString(6);
                        pType = reader.GetString(7);
                        pDesc = reader.GetString(8);
                        pPrice = reader.GetString(9);
                        uname = reader.GetString(11);
                        uemail = reader.GetString(12);
                    }
                    sqlCon.Close();
                } catch (IndexOutOfRangeException er)
                {
                    Response.Write("Err: " + er);
                } 

                oIdInp.Text = orId;
                pIdInp.Text = prId;
                uIdInp.Text = usId;
                amountInp.Text = Convert.ToString(amount);
                quanInp.Text = Convert.ToString(quantity);
                pNameInp.Text = pName;
                pTypeInp.Text = pType;
                pDescInp.Text = pDesc;
                priceInp.Text = pPrice;
                unameInp.Text = uname;
                uemailInp.Text = uemail;
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