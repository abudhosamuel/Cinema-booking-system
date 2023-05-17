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
    public partial class moviesdb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            galaxycinemax.dbconnection();

            //get data from database TblMovies
            string query = "SELECT Image, MovieName,Duration,Year FROM TblMovies";
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
                string MovieName = GridView1.DataKeys[e.RowIndex].Values["MovieName"].ToString();

                // write your delete statement here
                string del = "DELETE FROM TblMovies WHERE MovieName = @MovieName";

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = del;
                cmd.Connection = galaxycinemax.con;
                cmd.Parameters.AddWithValue("@MovieName", MovieName);
                cmd.ExecuteNonQuery();
                galaxycinemax.con.Close();


                string query = "SELECT Image,MovieName,Duration,Year FROM TblMovies";

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