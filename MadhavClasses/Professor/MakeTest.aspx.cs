using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Professor
{
    public partial class MakeTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LoadComplete += MakeTest_LoadComplete;
        }

        private void MakeTest_LoadComplete(object sender, EventArgs e)
        {
            if (Session["professor_email"] == null)
            {
                Response.Redirect("ProfessorLogin.aspx");
            }
            else {

                if (!IsPostBack) {

                //getting email from session
                String professor_email = Session["professor_email"].ToString();

                //getting id form email
                int professor_id = MadhavClass.get_id_from_email("professor",professor_email);

                String get_tests = String.Format("select * from tests where test_by={0}",professor_id);
                DataTable dt = MadhavClass.get_data(get_tests);
                test_listView.DataSource = dt;
                test_listView.DataBind();
                }
            }
        }

        protected void test_available_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void test_for_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Add_Click(object sender, EventArgs e)
        {

            String session_user = Session["professor_email"].ToString();
            String available = test_available.SelectedValue;
            int test_by = MadhavClass.get_id_from_email("professor", session_user);
            String for_ = test_for.SelectedValue;
            String date = MadhavClass.get_current_date();
            String time = MadhavClass.get_current_time();
            String title = test_title.Text;
            String desc = test_desc.Text;

            String make_test = String.Format("insert into tests(test_available, test_by, test_for,test_date,test_time, test_title, test_desc) values ('{0}',{1},'{2}','{3}','{4}','{5}','{6}')",available,test_by, for_,date, time, title, desc);
            MadhavClass.connect();
            MadhavClass.insert(make_test);
            MadhavClass.disconnect();

            Response.Redirect("MakeTest.aspx");
        }

        protected void delete_Command(object sender, CommandEventArgs e)
        {
            String delete_test = String.Format("delete from tests where test_id = {0}", e.CommandArgument);
            MadhavClass.connect();
            MadhavClass.insert(delete_test);
            MadhavClass.disconnect();

            Response.Redirect("MakeTest.aspx");
        }
    }
}