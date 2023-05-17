using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galaxy
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            LblStatus.Visible= false;
            //open connection
            galaxycinemax.dbconnection();
            
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(txtCustID.Text);
            string Email= txtEmail.Text;
            string FirstName= txtFname.Text;
            string LastName= txtLname.Text;
            string DateofBirth = txtDob.Text;
            string Address= txtAddress.Text;
            string Password= txtPass.Text;
            string ConfirmPassword= txtCpass.Text;
            string sqlText = "INSERT INTO TblUser values('" + Id + "', '" + Email + "', '" + FirstName + "', '" + LastName + "', '" + DateofBirth + "', '" + Address + "', '" + Password + "', '" + ConfirmPassword + "')";
            SqlCommand cmd= new SqlCommand();
            cmd.CommandText = sqlText;
            //connection object
            cmd.Connection = galaxycinemax.con;
            //execute sql statement
            cmd.ExecuteNonQuery();
            LblStatus.Visible = true;
            LblStatus.Text = "Registered successfully";
            LblStatus.ForeColor=System.Drawing.Color.Green;

            //clear all the text boxes
            txtCustID.Text = "";
            txtEmail.Text = "";
            txtFname.Text = "";
            txtLname.Text = "";
            txtDob.Text = "";
            txtAddress.Text = "";
            txtPass.Text = "";
            txtCpass.Text = "";

        }

        protected void txtPass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtFname_TextChanged(object sender, EventArgs e)
        {

        }
    }
}