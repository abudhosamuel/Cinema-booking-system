using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galaxy
{
    public partial class addmovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            galaxycinemax.dbconnection();
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //declare and assign variables
            string img = txtImage.Text;
            string mname = txtmName.Text;
            string dur = txtDuration.Text;
            int rYear = Convert.ToInt32(txtYear.Text);
            
            // declare SQL statement
            string sqlText;
            sqlText = "INSERT INTO TblMovies values('" + img + "','" + mname + "','" + dur + "','" + rYear + "')";

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

            //clear all the text boxes after movies have been added
            txtImage.Text = "";
            txtmName.Text = "";
            txtDuration.Text = "";
            txtYear.Text = "";

        }
    }
}