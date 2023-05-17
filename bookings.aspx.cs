using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galaxy
{
    public partial class bookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblStatus.Visible = false;
            galaxycinemax.dbconnection();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string movienm = ddlMovies.Text;
            int nTickets = Convert.ToInt32(txtTickets.Text);
            string custname = txtName.Text;
            string email = txtEmail.Text;
            int phone = Convert.ToInt32(txtPhone.Text);
            int price = Convert.ToInt32(ddlPrice.Text);
            // declare SQL statement
            string sqlText;
            sqlText = "INSERT INTO TblBooking values('" + movienm + "','" + nTickets + "','" + custname + "','" + email + "','" + phone + "', '" + price +"')";

            // create an instance of SQL command
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlText;
            //associate command object with connection 
            cmd.Connection = galaxycinemax.con;
            //execute query
            cmd.ExecuteNonQuery();
            //close database connection
            galaxycinemax.con.Close();
            //display feedback
            lblStatus.Visible = true;
            lblStatus.Text = "Movie Booked Successfully. Receipt will be issued at the venue";
            lblStatus.ForeColor = System.Drawing.Color.Green;

            //clear all the text boxes
            txtTickets.Text = "";
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";


        }
    }
}