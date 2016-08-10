using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
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


            string get_docs = string.Format("SELECT * FROM documents ORDER BY document_id DESC LIMIT 10 ");

            MadhavClass.connect();
            DataTable dt = MadhavClass.get_data(get_docs);
            MadhavClass.disconnect();

            doc_listView.DataSource = dt;
            doc_listView.DataBind();   

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string i = ((LinkButton)sender).CommandArgument.ToString();
            string getDoc = string.Format("select * from documents where document_id = {0}", i);

            MadhavClass.connect();
            DataTable dt = MadhavClass.get_data(getDoc);
            MadhavClass.disconnect();

            string q = dt.Rows[0]["document_path"].ToString();
            string filePath = q;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }
    }
}