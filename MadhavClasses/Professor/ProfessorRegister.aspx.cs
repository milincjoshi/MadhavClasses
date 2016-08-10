using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Professor
{
    public partial class ProfessorRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            String email = professor_email.Text;
            String password = professor_password.Text;
            String sql = "insert into professors(professor_email, professor_password) values ('" + email + "','" + password + "')";
            MadhavClass.connect();
            MadhavClass.insert(sql);
            MadhavClass.disconnect();
            Response.Redirect("ProfessorLogin.aspx");
        }
    }
}