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
    public partial class StudentExploreDocuments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LoadComplete += StudentExploreDocuments_LoadComplete;
        }

        private void StudentExploreDocuments_LoadComplete(object sender, EventArgs e)
        {
            if (Session["student_email"] == null)
            {
                Response.Redirect("StudentLogin.aspx");
            }
        }

        protected void view_Click(object sender, EventArgs e)
        {
            //main_class m = new main_class();
            //string i = ((Button)sender).CommandArgument.ToString();
            //string get = string.Format("select * from docs where docs_id = '{0}' ", i);
            //DataTable dt = m.filldt(get);

            //string outputPdfFile = dt.Rows[0]["doc_path"].ToString();

            //Response.ContentType = "Application/pdf";
            //Response.TransmitFile(outputPdfFile);

        }

        protected void download_Click(object sender, EventArgs e)
        {
            //main_class m = new main_class();

            //string i = ((Button)sender).CommandArgument.ToString();
            //string d = string.Format("select * from docs where docs_id = {0}", i);
            //DataTable dt = m.filldt(d);

            //string q = dt.Rows[0]["doc_path"].ToString();
            //string filePath = q;
            //Response.ContentType = ContentType;
            //Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            //Response.WriteFile(filePath);
            //Response.End();

            //m.cn.Close();
        }

        protected void search_Click(object sender, EventArgs e)
        {
            if (searchBox.Text.Equals("") || searchBox.Text == null) {
                results_found.Text = "Please enter a search term";
                results_found.Visible = true;
            }
            else {
                string get_docs = string.Format("SELECT * FROM documents WHERE document_title LIKE '%{0}%' OR document_desc LIKE '%{0}%' ", searchBox.Text);

                MadhavClass.connect();
                DataTable dt = MadhavClass.get_data(get_docs);
                MadhavClass.disconnect();

                doc_listView.DataSource = dt;
                doc_listView.DataBind();

                results_found.Text = ""+dt.Rows.Count+" results found for \" "+searchBox.Text+" \"";
                results_found.Visible = true;
            }

        }

        protected void lnkDownload_Click(object sender, EventArgs e)
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