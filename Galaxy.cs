using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Galaxy
{
    public class galaxycinemax
    {
        //define connection method
        public static SqlConnection con;

        public static void dbconnection()
        {
            //connectionstring
            string connstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\OneDrive\\Desktop\\Project\\Galaxy\\App_Data\\galaxycinemax.mdf;Integrated Security=True";
            con = new SqlConnection(connstring);
            //check connection state
            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
            else 
            { con.Open(); }
        }
    }
}