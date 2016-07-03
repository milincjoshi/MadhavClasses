using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Student
{
    public partial class StudentEditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                if (Session["student_email"] == null)
                {
                    Response.Redirect("StudentLogin.aspx");
                }
                else {
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

        protected void save_Click(object sender, EventArgs e)
        {
            String email = Session["student_email"].ToString();
            String firstname = student_firstname.Text;
            String lastname = student_lastname.Text;
            String phoneno = student_phoneno.Text;
            String city = student_city.Text;
            String state = student_state.Text;
            String country = student_country.Text;
            String about = student_about.Text;

            //Process Image
            if (profile_pic.HasFile) {
            try
            {
                //Save image to filesystem 
                string q = "../profile_pics/" + profile_pic.FileName;
                profile_pic.SaveAs(MapPath(q));

                //Save path to database 
                String updateImage = String.Format("update students set student_current_profile_pic='{0}' where student_email='{1}'", q, email);
                MadhavClass.insert(updateImage);
             }
            catch (Exception ex) {  }

            }

            String sql = "update students set student_firstname='"+firstname+"', student_lastname='"+lastname+"', student_phoneno='"+phoneno+"', student_city='"+city+"', student_state='"+state+"', student_country='"+country+"', student_about='"+about+"' where student_email='"+email+"'";
            MadhavClass.connect();
            MadhavClass.insert(sql);
            MadhavClass.disconnect();
        }
    }
}