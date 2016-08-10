using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses
{
    public partial class Gallery : System.Web.UI.Page
    {
      

        protected void Page_Load(object sender, EventArgs e)
        {
            this.LoadComplete += Gallery_LoadComplete;
        }

        private void Gallery_LoadComplete(object sender, EventArgs e)
        {
            DataTable dt = MadhavClass.get_images();

            String id = dt.Rows[0]["image_path"].ToString();
            image_listView.DataSource = dt;
            image_listView.DataBind();
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }
}