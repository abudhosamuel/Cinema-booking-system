using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galaxy
{
    public partial class booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            galaxycinemax.dbconnection();

            //get data from database tblBooking
            string query = "SELECT moviename,numberoftickets,custname,email,phone,price FROM TblBooking";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = galaxycinemax.con;

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable table = new DataTable();
            adapter.Fill(table);

            GridView1.DataSource = table;
            GridView1.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (GridView1.DataKeys.Count > e.RowIndex)
            {
                string email = GridView1.DataKeys[e.RowIndex].Values["email"].ToString();
               
                //delete statement to delete items from the table
                string del = "DELETE FROM TblBooking WHERE email = @email";

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = del;
                cmd.Connection = galaxycinemax.con;
                cmd.Parameters.AddWithValue("@email", email);
                cmd.ExecuteNonQuery();
                galaxycinemax.con.Close();


                string query = "SELECT moviename,numberoftickets,custname,email,phone,price FROM TblBooking";

                cmd.CommandText = query;
                cmd.Connection = galaxycinemax.con;

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable table = new DataTable();
                adapter.Fill(table);

                GridView1.DataSource = table;
                GridView1.DataBind();
            }
        }
    }
}