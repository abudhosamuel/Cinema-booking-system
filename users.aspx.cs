using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galaxy
{
    public partial class users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            galaxycinemax.dbconnection();
            //get data from database TblUser
            string query = "SELECT Id,Email,FirstName,LastName,DateofBirth,Address FROM TblUser";
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
                int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

                // write your delete statement here
                string del = "DELETE FROM TblUser WHERE Id = @Id";

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = del;
                cmd.Connection = galaxycinemax.con;
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.ExecuteNonQuery();
                galaxycinemax.con.Close();


                string query = "SELECT Id,Email,FirstName,LastName,DateofBirth,Address FROM TblUser";

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