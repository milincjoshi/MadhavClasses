using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Student
{
    public partial class StudentRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            String email = student_email.Text;
            String password = student_password.Text;
            String sql = "insert into students(student_email, student_password) values ('"+email+"','"+password+"')";
            MadhavClass.connect();
            MadhavClass.insert(sql);
            MadhavClass.disconnect();
            Response.Redirect("StudentLogin.aspx");
        }
    }
}