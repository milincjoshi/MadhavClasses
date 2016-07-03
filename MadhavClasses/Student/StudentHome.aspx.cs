using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Student
{
    public partial class StudentHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LoadComplete += StudentHome_LoadComplete;
        }

        private void StudentHome_LoadComplete(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["student_email"] == null)
                {
                    Response.Redirect("StudentLogin.aspx");
                }
            }
        }
    }
}