using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Student
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            String email = student_email.Text;
            String password = student_password.Text;

            String sql = "select * from students where student_email='" + email + "' and student_password='" + password + "'";
            MadhavClass.connect();
            DataTable dt = MadhavClass.get_data(sql);
            MadhavClass.disconnect();
            if (dt.Rows.Count != 0)
            {
                Session["student_email"] = email;
                Response.Redirect("StudentHome.aspx");
            }
            else {
                invalid.Visible = true;
            }
        }
    }
}