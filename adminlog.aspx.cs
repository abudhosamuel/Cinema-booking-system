using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galaxy
{
    public partial class adminlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblLogin.Visible = false;
        }

        protected void BtnAdmin_Click(object sender, EventArgs e)
        {
            //create an instance of dataset
            GalaxyMoviesTableAdapters.TblUserTableAdapter cust=new GalaxyMoviesTableAdapters.TblUserTableAdapter();

            //create a dataTable instance
            DataTable dt = new DataTable();
            //call adapter and assign rows to datatable
            dt = cust.GetData(Convert.ToInt32(txtId.Text), txtpass.Text);
            if (dt.Rows.Count > 0)
            {
                if (txtId.Text == "123456" && txtpass.Text == "admin")
                {
                    Response.Redirect("~/users.aspx");
                }
                else
                {
                    lblLogin.Visible = true;
                    lblLogin.Text = "Login successful";
                    Session["loggedIn"] = true;
                    lblLogin.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("~/home.aspx");
                }
            }
            else
            {
                lblLogin.Visible = true;
                lblLogin.Text = "Login failed";
                lblLogin.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}