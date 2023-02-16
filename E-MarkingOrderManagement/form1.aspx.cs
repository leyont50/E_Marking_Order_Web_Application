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
    public partial class form1 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        //submit button click event
        protected void Button_Signup(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            SqlConnection con = new SqlConnection(strcon);
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO testtable(name_of_applicant,father_name,p_address,r_address,ph_no,email,no_of_trees,district,division,range,reason_for_felling,purpose,last_produce_commercialized,place_of_last_produce_use,produce_to_be_used_by_applicant,name_of_produce_user,relation_with_applicant,name_of_nearest_forest_nursery,date_of_issue_last_marking_order) values(@name_of_applicant,@father_name,@p_address,@r_address,@ph_no,@email,@no_of_trees,@district,@division,@range,@reason_for_felling,@purpose,@last_produce_commercialized,@place_of_last_produce_use,@produce_to_be_used_by_applicant,@name_of_produce_user,@relation_with_applicant,@name_of_nearest_forest_nursery,@date_of_issue_last_marking_order)", con);
                cmd.Parameters.AddWithValue("@name_of_applicant", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@father_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@p_address", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@r_address", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@ph_no", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@no_of_trees", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@district", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@division", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@range", DropDownList4.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@reason_for_felling", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@purpose", DropDownList5.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@last_produce_commercialized", DropDownList7.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@place_of_last_produce_use", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@produce_to_be_used_by_applicant", DropDownList6.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@name_of_produce_user", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@relation_with_applicant", DropDownList8.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@name_of_nearest_forest_nursery", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@date_of_issue_last_marking_order", TextBox13.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Application Submitted Successfully');</script>");
                Response.Redirect("applicationsubmittedsuccess.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}