using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Professor
{
    public partial class ProfessorLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            String email = professor_email.Text;
            String password = professor_password.Text;

            String sql = "select * from professors where professor_email='" + email + "' and professor_password='" + password + "'";
            MadhavClass.connect();
            DataTable dt = MadhavClass.get_data(sql);
            MadhavClass.disconnect();
            if (dt.Rows.Count != 0)
            {
                Session["professor_email"] = email;
                Response.Redirect("ProfessorHome.aspx");
            }
            else
            {
                //Invalid login id password
            }
        }
    }
}