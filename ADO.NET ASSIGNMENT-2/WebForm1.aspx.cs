using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADO_Assignment_2._1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connectStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            Query1(connectStr);

            Query2(connectStr);

            Query3(connectStr);

        }

        public void Query1(String connectionString)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionString))
            {

                sqlConnection.Open();

                SqlCommand cmd = new SqlCommand("Select BoardingPoint, TravelDate from BusInformation where Amount > 450", sqlConnection);
                SqlDataReader datareader = cmd.ExecuteReader();

                GridView1.DataSource = datareader;
                GridView1.DataBind();
            }
        }

        public void Query2(String connectionString)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionString))
            {

                sqlConnection.Open();

                SqlCommand cmd = new SqlCommand("Select BusID, DroppingPoint from BusInformation where TravelDate = '2017-12-10'", sqlConnection);
                SqlDataReader datareader = cmd.ExecuteReader();

                GridView2.DataSource = datareader;
                GridView2.DataBind();
            }
        }

        public void Query3(String connectionString)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionString))
            {

                sqlConnection.Open();

                SqlCommand cmd = new SqlCommand("Select BusID, DroppingPoint, Rating from BusInformation where Rating > 3", sqlConnection);
                SqlDataReader datareader = cmd.ExecuteReader();

                GridView3.DataSource = datareader;
                GridView3.DataBind();
            }
        }


    }
}