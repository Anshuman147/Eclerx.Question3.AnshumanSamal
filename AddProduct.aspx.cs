using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Eclerx.Question3.AnshumanSamal
{
    public partial class AddProduct : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlDataAdapter adapter = null;
        static int a = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString))
            {
                using (SqlCommand command = new SqlCommand("select CategoryName from Category", con))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    DataTable dt = new DataTable();
                    adapter = new SqlDataAdapter(command);
                    adapter.Fill(dt);

                    DdlCategoryName.DataSource = dt;
                    DdlCategoryName.DataBind();
                    DdlCategoryName.DataTextField = "CategoryName";
                    DdlCategoryName.DataValueField = "CategoryName";
                    DdlCategoryName.DataBind();
                }
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString))
            {
                using (SqlCommand command = new SqlCommand("usp_InsertDataIntoProduct", con))
                {
                    if (TxtProductName.Text.Length >= 3 || double.Parse(TxtPrice.Text) > 0 || double.Parse(TxtTotalQuantity.Text) > 0)
                    {
                        command.Parameters.AddWithValue("@CategoryId", a + "");
                        command.Parameters.AddWithValue("@ProductName", TxtProductName.Text);
                        command.Parameters.AddWithValue("@Price", TxtPrice.Text);
                        command.Parameters.AddWithValue("@TotalQuantity", TxtTotalQuantity.Text);
                        command.Parameters.AddWithValue("@AddedDate", DateTime.Today);
                        command.CommandType = CommandType.StoredProcedure;

                        adapter = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);
                        a++;
                    }
                    else
                    {
                        Message.Text = " check Product name minimum 3 Character or price and Quantity must be Integer value";
                    }
                }
            }
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayProductsByDate.aspx");
        }
        public void ClearText()
        {
            TxtProductName.Text = "";
            TxtPrice.Text = "";
            TxtTotalQuantity.Text = "";
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            this.ClearText();
        }
    }
}
    