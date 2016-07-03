using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Student
{
    public partial class StudentProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                if (Session["student_email"] == null) {
                    Response.Redirect("StudentLogin.aspx");
                }
                else
                {
                    String email = Session["student_email"].ToString();
                    String sql = "select * from students where student_email='" + email + "'";
                    DataTable dt = MadhavClass.get_data(sql);

                    student_email.Text = dt.Rows[0]["student_email"].ToString();
                    student_firstname.Text = dt.Rows[0]["student_firstname"].ToString();
                    student_lastname.Text = dt.Rows[0]["student_lastname"].ToString();
                    student_city.Text = dt.Rows[0]["student_city"].ToString();
                    student_state.Text = dt.Rows[0]["student_state"].ToString();
                    student_country.Text = dt.Rows[0]["student_country"].ToString();
                    student_phoneno.Text = dt.Rows[0]["student_phoneno"].ToString();
                    student_about.Text = dt.Rows[0]["student_about"].ToString();

                    //Process Image 
                    String prof_pic = dt.Rows[0]["student_current_profile_pic"].ToString();
                    if (prof_pic == "")
                    {
                        student_profilepic.ImageUrl = "../profile_pics/person-icon.png";
                    }
                    else
                    {
                        student_profilepic.ImageUrl = prof_pic;
                    }

                }

            }

        }
    }
}