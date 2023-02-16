using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace E_MarkingOrderManagement
{
    public partial class applicationmanagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
                int application_id = Convert.ToInt32(row.Cells[2].Text);
                if (status.Checked)
                {
                    updaterow(application_id, "Approved");
                }
                else
                {
                    updaterow(application_id, "Unapproved");

                }
                Label3.Text = "Applications Has Been Approved Successfully";
                SqlDataSource1.DataBind();
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();


            }
        }
        private void updaterow(int application_id, String approval)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            String updatedata = "Update testtable set approval='" + approval + "' where application_id=" + application_id;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

    }
}