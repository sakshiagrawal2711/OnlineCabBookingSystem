using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCabBookingSystem.MainMaster
{
    public partial class BookingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void btnBookNow_Click(object sender, EventArgs e)
        {
            SqlCommand cmd;
            SqlDataReader rdr;
            SqlConnection con;
            con = new SqlConnection("Data Source=LAPTOP-Q77UMPTB\\SQLEXPRESS07;Initial Catalog=fastride;Integrated Security=True");

            con.Open();

            cmd = new SqlCommand("insert into route_details values(@location,@destination,@vehicle,@class)", con);
            cmd.Parameters.AddWithValue("location", txtLocation.Text);
            cmd.Parameters.AddWithValue("destination", txDest.Text);
            cmd.Parameters.AddWithValue("vehicle", txtVehicle.Text);
            cmd.Parameters.AddWithValue("class", txtClass.Text);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
              
                cmd = new SqlCommand("select name,vehicle_no from driver_details  where location='" + txtLocation.Text + "' and car='" + txtVehicle.Text + "'", con);
                rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {

                    Response.Write(@"<script> alert('Booked Successfully Click on Driver Details'); </script>");
                    txtLocation.Text = "";
                    txtVehicle.Text = "";
                    txDest.Text = "";
                    txtClass.Text = "";

                    rdr.Close();

                }
                else
                {
                    Response.Write(@"<script> alert('Driver not found'); </script>");


                }

            }

            con.Close();     

        }

        public void btnCheck_Click(object sender, EventArgs e)
        {


            SqlCommand cmd;
            SqlDataReader rdr;
            SqlConnection con;
            con = new SqlConnection("Data Source=LAPTOP-Q77UMPTB\\SQLEXPRESS07;Initial Catalog=fastride;Integrated Security=True");

            con.Open();

            cmd = new SqlCommand("insert into route_details values(@location,@destination,@vehicle,@class)", con);
            cmd.Parameters.AddWithValue("location", txtLocation.Text);
            cmd.Parameters.AddWithValue("destination", txDest.Text);
            cmd.Parameters.AddWithValue("vehicle", txtVehicle.Text);
            cmd.Parameters.AddWithValue("class", txtClass.Text);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {

                cmd = new SqlCommand("select name,vehicle_no from driver_details  where location='" + txtLocation.Text + "' and car='" + txtVehicle.Text + "'", con);
                rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {

                    Random rnd = new Random();
                    int s = rnd.Next(100000, 999999);
                    string otp = s.ToString();

                    string dn = (string)rdr[0];
                    string vn = (string)rdr[1];


                    string script = "$('#mymodal').modal('show');";
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", script, true);
                    txtDn.Text = dn;
                    txtVn.Text = vn;
                    txtOTP.Text = otp;

                    rdr.Close();

                }
                else
                {
                    Response.Write(@"<script> alert('Driver not found'); </script>");


                }

            }

            con.Close();
        }



    }
}