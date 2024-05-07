using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace OnlineCabBookingSystem.MainMaster
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlCommand cmd;
            SqlDataReader rdr;
            SqlConnection con;
            con = new SqlConnection("Data Source=LAPTOP-Q77UMPTB\\SQLEXPRESS07;Initial Catalog=fastride;Integrated Security=True");
           
                con.Open();
                cmd = new SqlCommand("select * from user_details where username='" + txtUserName.Text + "'", con);
                rdr = cmd.ExecuteReader();
                if(rdr.Read())
                {
                    rdr.Close();
                    Response.Write(@"<script> alert('User already exsists'); </script>");
                txtUserName.Text = "";
                txtEmail.Text = "";
                txtPassword.Text = "";
                txtCPassword.Text = "";

            }
                else
                {
                    rdr.Close();
                    cmd = new SqlCommand("insert into user_details values(@username,@email,@password)", con);
                    cmd.Parameters.AddWithValue("username", txtUserName.Text);
                    cmd.Parameters.AddWithValue("email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("password", txtPassword.Text);
                    int a = cmd.ExecuteNonQuery();
                    if (a>0)
                    {
                        Response.Write(@"<script> alert('Registration Successful'); </script>");
                        txtUserName.Text = "";
                        txtEmail.Text = "";
                        txtPassword.Text = "";
                        txtCPassword.Text = "";

                }
                    else
                    {

                    }
                }
            }



        }
    }
