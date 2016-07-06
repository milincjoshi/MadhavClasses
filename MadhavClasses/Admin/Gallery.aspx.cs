using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Admin
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            this.LoadComplete += Gallery_LoadComplete;
        }

        private void Gallery_LoadComplete(object sender, EventArgs e)
        {

            if (Session["admin_email"] == null) {
                Response.Redirect("AdminLogin.aspx");
            }
            else {
                DataTable dt = MadhavClass.get_images();

                image_list.DataSource = dt;
                image_list.DataBind();
            }
            
        }

        protected void upload_image_Click(object sender, EventArgs e)
        {

            if (file.HasFiles)
            {
                string q = "Image_Gallery/" + file.FileName;
                file.SaveAs(MapPath(q));

                String Image_title = image_title.Text;
                String sql = String.Format("insert into image_gallery(image_path, image_title ) values ('{0}','{1}')", q, Image_title);
                MadhavClass.insert(sql);
            }
        }

        protected void image_list_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                String sql = String.Format("delete * from image_gallery where image_id={0}", id);
                MadhavClass.connect();
                MadhavClass.insert(sql);
                MadhavClass.disconnect();
            }

        }
    }
}