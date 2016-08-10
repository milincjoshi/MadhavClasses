using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MadhavClasses.Admin
{
    public partial class AdminVideos : System.Web.UI.Page
    {
        // player width
        private int _W = 640;

        // player height
        private int _H = 505;

        // autoplay disabled
        bool auto = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                #region Start mode customization via Web Query String
                int idx = 0;
                string qry = "";

                // Web Query to set autoplay option
                try
                {
                    qry = "auto";
                    qry = (Request.QueryString[qry] == null) ? "" : Request.QueryString[qry];
                    if (qry != "") { auto = Boolean.Parse(qry); }
                }
                catch { }

                // Web Query to set item index
                try
                {
                    qry = "item";
                    qry = (Request.QueryString[qry] == null) ? "" : Request.QueryString[qry];
                    if (qry != "") { idx = int.Parse(qry); }
                }
                catch { }
                #endregion

                // set selected index
                cmbPlaylist.SelectedIndex = idx;

                // generate script on page load
                Literal1.Text = Youtubescript.Get(cmbPlaylist.SelectedValue, auto, _W, _H);
            }
            else
            {
                // generate script on page postback
                Literal1.Text = Youtubescript.Get(cmbPlaylist.SelectedValue, false, _W, _H);
            }
        }
    }
}