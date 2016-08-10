using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Professor
{
    public partial class ProfessorAddDocuments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LoadComplete += ProfessorAddDocuments_LoadComplete;
        }

        private void ProfessorAddDocuments_LoadComplete(object sender, EventArgs e)
        {

            if (Session["professor_email"] == null)
            {
                Response.Redirect("ProfessorLogin.aspx");
            }
            else
            {
                DataTable dt = MadhavClass.get_docs(Session["professor_email"].ToString());

                doc_listView.DataSource = dt;
                doc_listView.DataBind();
            }
        }

        protected void upload_doc_Click(object sender, EventArgs e)
        {
            String professor = Session["professor_email"].ToString();
            if (file.HasFiles)
            {
                //
                string file_extension = System.IO.Path.GetExtension(file.FileName);
                if (file_extension == ".pdf" || file_extension == ".PDF")
                {
                    string q = "../docs/" + file.FileName;
                    file.SaveAs(MapPath(q));


                    //Date Conversions
                    DateTime date = DateTime.Now;
                    String dateOnly = date.Date.ToString("d");
                    
                    //Console.WriteLine(date1.ToString());
                    //       6/1/2008 7:47:00 AM
                    //Console.WriteLine(dateOnly.ToString("d"));
                    //       6/1/2008
                    //Console.WriteLine(dateOnly.ToString("g"));
                    //       6/1/2008 12:00 AM
                    //Console.WriteLine(dateOnly.ToString("MM/dd/yyyy HH:mm"));
                    //       06/01/2008 00:00

                    String document_title = doc_title.Text;
                    String sql = String.Format("insert into documents(document_path, document_title, document_desc, document_uploadedby,document_date, document_time ) values ('{0}','{1}','{2}','{3}','{4}','{5}')", q, document_title, doc_desc.Text, professor, dateOnly, System.DateTime.Now.ToShortTimeString() );
                    MadhavClass.insert(sql);
                }
                else
                {
                    //invalid upload
                }

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