using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCabBookingSystem.MainMaster
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlCommand cmd;
            SqlDataReader rdr;
            SqlConnection con;
            con = new SqlConnection("Data Source=LAPTOP-Q77UMPTB\\SQLEXPRESS07;Initial Catalog=fastride;Integrated Security=True");

            con.Open();

            cmd = new SqlCommand("insert into feedback values(@name,@subject,@email,@message)", con);
            cmd.Parameters.AddWithValue("name", txtName.Text);
            cmd.Parameters.AddWithValue("subject", txtSubject.Text);
            cmd.Parameters.AddWithValue("email", txtEmail.Text);
            cmd.Parameters.AddWithValue("message", txtMessage.Text);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write(@"<script> alert('Feedback sent'); </script>");
                txtName.Text = "";
                txtSubject.Text = "";
                txtEmail.Text = "";
                txtMessage.Text = "";
            }
        }
    }
}