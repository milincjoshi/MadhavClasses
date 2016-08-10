using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace MadhavClasses
{
    public static class Youtubescript
    {
     
        public static string Get(string id)
        { return Get(id, false, 320, 240); }

        public static string Get(string id, bool auto)
        { return Get(id, auto, 320, 240); }

        public static string Get(string id, int auto)
        { return Get(id, ((auto == 1) ? true : false), 320, 240); }

        public static string Get(string id, bool auto, int W, int H)
        { return Get(id, auto, W, H, true); }

        public static string Get(string id, bool auto, int W, int H, bool Border)
        { return Get(id, auto, W, H, Border, "0x2b405b", "0x6b8ab6", 0); }

        public static string Get
                (string id,
                bool auto,
                int W,
                int H,
                string C1,
                string C2)
        { return Get(id, auto, W, H, true, C1, C2, 0); }

        public static string Get (string id, bool auto, int W,int H,bool Border,string C1,string C2, int Start)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(@"<embed src='http://www.youtube.com/v/");

            // select the youTube item to play
            sb.Append(id);

            // set autoplay options (indicates number of plays)
            if (auto) sb.Append("&autoplay=1");

            // no related items to display
            sb.Append("&rel=0");

            // set border color 1 and 2
            if (Border)
            {
                sb.Append("&border=1");
                sb.Append("&color1=" + @C1);
                sb.Append("&color2=" + @C2);
            }

            // start position
            if (Start > 0) sb.Append("&start=" + Start.ToString());

            // allow full screen
            sb.Append("&fs=1");

            // closing single quote after parameter list
            sb.Append("' ");


            sb.Append("type='application/x-shockwave-flash' ");

            // add id
            sb.Append("id='youTubePlayer" + DateTime.Now.Millisecond.ToString() + "' ");
            sb.Append("allowscriptaccess='never' enableJavascript ='false' ");

            // set parameters: allowfullscreen
            sb.Append("allowfullscreen='true' ");

            // set width
            sb.Append("width='" + W.ToString() + "' ");

            // set height
            sb.Append("height='" + H.ToString() + "' ");

            sb.Append(@"></embed>");

            // get final script
            string scr = sb.ToString();

            sb = null;
            return scr;
        }
    }
}
