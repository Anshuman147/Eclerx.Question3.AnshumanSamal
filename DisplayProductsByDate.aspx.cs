using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eclerx.Question3.AnshumanSamal
{
    public partial class DisplayProductsByDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString))
                {
                    using (SqlCommand command = new SqlCommand("SELECT * FROM product WHERE AddedDate BETWEEN @FromDate AND @ToDate", con))
                    {
                        command.Parameters.AddWithValue("@FromDate", TxtFromDate.Text);
                        command.Parameters.AddWithValue("@ToDate", TxtTodate.Text);

                        SqlDataAdapter adp = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        adp.Fill(dt);
                        GridViewProductDetails.DataSource = dt;
                        GridViewProductDetails.DataBind();
                    }
                }
            }
            catch(SqlException)
            {
                Warning.Text = "Data Not Present";
            }
        }
    }
}