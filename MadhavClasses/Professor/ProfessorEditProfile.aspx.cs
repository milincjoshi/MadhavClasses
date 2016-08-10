using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Professor
{
    public partial class ProfessorEditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["professor_email"] == null)
                {
                    Response.Redirect("professorLogin.aspx");
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
                    professor_username.Text = dt.Rows[0]["professor_username"].ToString();
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

        protected void save_Click(object sender, EventArgs e)
        {
            String email = Session["professor_email"].ToString();
            String firstname = professor_firstname.Text;
            String lastname = professor_lastname.Text;
            String phoneno = professor_phoneno.Text;
            String city = professor_city.Text;
            String state = professor_state.Text;
            String country = professor_country.Text;
            String about = professor_about.Text;
            String username = professor_username.Text;
            //Process Image
            if (profile_pic.HasFile)
            {
                try
                {
                    //Save image to filesystem 
                    string q = "../profile_pics/" + profile_pic.FileName;
                    profile_pic.SaveAs(MapPath(q));

                    //Save path to database 
                    String updateImage = String.Format("update professors set professor_current_profile_pic='{0}' where professor_email='{1}'", q, email);
                    MadhavClass.insert(updateImage);
                }
                catch (Exception ex) { }

            }

            String sql = "update professors set professor_username = '"+professor_username.Text+"',professor_firstname='" + firstname + "', professor_lastname='" + lastname + "', professor_phoneno='" + phoneno + "', professor_city='" + city + "', professor_state='" + state + "', professor_country='" + country + "', professor_about='" + about + "' where professor_email='" + email + "'";
            MadhavClass.connect();
            MadhavClass.insert(sql);
            MadhavClass.disconnect();

            save_success.Visible = true;
        }
    }
}