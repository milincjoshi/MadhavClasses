using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Professor
{
    public partial class ProfessorProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["professor_email"] == null)
                {
                    Response.Redirect("ProfessorLogin.aspx");
                }
                else
                {
                    String email = Session["professor_email"].ToString();
                    String sql = "select * from professors where professor_email='" + email + "'";
                    DataTable dt = MadhavClass.get_data(sql);

                    professor_email.Text = dt.Rows[0]["professor_email"].ToString();
                    professor_firstname.Text = dt.Rows[0]["professor_firstname"].ToString();
                    professor_lastname.Text = dt.Rows[0]["professor_lastname"].ToString();
                    professor_city.Text = dt.Rows[0]["professor_city"].ToString();
                    professor_state.Text = dt.Rows[0]["professor_state"].ToString();
                    professor_country.Text = dt.Rows[0]["professor_country"].ToString();
                    professor_phoneno.Text = dt.Rows[0]["professor_phoneno"].ToString();
                    professor_about.Text = dt.Rows[0]["professor_about"].ToString();
                    professor_username.Text= dt.Rows[0]["professor_username"].ToString();

                    //Process Image 
                    String prof_pic = dt.Rows[0]["professor_current_profile_pic"].ToString();
                    if (prof_pic == "")
                    {
                        professor_profilepic.ImageUrl = "../profile_pics/person-icon.png";
                    }
                    else
                    {
                        professor_profilepic.ImageUrl = prof_pic;
                    }

                }

            }
        }
    }
}