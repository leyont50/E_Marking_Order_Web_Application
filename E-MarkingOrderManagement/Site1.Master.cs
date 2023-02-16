using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_MarkingOrderManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               if(Session["post"]!=null)
                {
                    if (Session["post"].Equals("bo"))
                    {
                        LinkButton2.Visible = true;
                        LinkButton3.Visible = true;
                        LinkButton2.Text = "Hello " + Session["admin_name"].ToString();
                    }
                }
                else
                {
                    LinkButton2.Visible = false;
                }

            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["post"] = "";

            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            Response.Redirect("home.aspx");
        }
    }
}