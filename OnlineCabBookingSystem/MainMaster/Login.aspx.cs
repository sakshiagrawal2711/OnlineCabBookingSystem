using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCabBookingSystem.MainMaster
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd;
            SqlDataReader rdr;
            SqlConnection con;
            con = new SqlConnection("Data Source=LAPTOP-Q77UMPTB\\SQLEXPRESS07;Initial Catalog=fastride;Integrated Security=True");

            con.Open();
            cmd = new SqlCommand("select * from user_details where username='" + txtUserName.Text + "' and password='"+txtPassword.Text+"'", con);
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                rdr.Close();
                Response.Write(@"<script> alert('Login Successful'); </script>");
                txtUserName.Text = "";
                txtPassword.Text = "";
                Response.Redirect("BookingPage.aspx");

            }
            else
            {
                Response.Write(@"<script> alert('Incorrect Username/Password'); </script>");
                txtUserName.Text = "";
                txtPassword.Text = "";

            }
        }
    }
    }
