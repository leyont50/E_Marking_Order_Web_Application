using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_MarkingOrderManagement
{
    public partial class applicationstatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonStatus_Click(object sender, EventArgs e)
        {
            getstatus();
        }
        //userdefined function

        void getstatus()
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select application_id,approval from testtable WHERE ph_no='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][0].ToString();
                    TextBox3.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('number not registered');</script>");
                }
            }

            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}