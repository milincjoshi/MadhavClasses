using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MadhavClasses
{
    class MadhavClass
    {
        static String db_server = "mysql3.gear.host";
        static String db_username = "madhavclasses";
        static String db_password = "Zl33hio0?!au";
        static String db = "madhavclasses";
        static String conString;
        private static MySqlConnection con;

        public static void connect()
        {
            conString = "SERVER="+db_server+"; DATABASE="+db+" ;UID="+db_username+";PASSWORD="+db_password+";";
            try
            {
                con = new MySqlConnection(conString);
                con.Open();
            }
            catch (Exception ex)
            {}
        }
        public static void disconnect()
        {
            try
            {
                con.Close();
            }
            catch (Exception ex)
            { }
        }
        public static DataTable get_images() {
            DataTable dt = new DataTable();

            connect();
            using (MySqlConnection con = new MySqlConnection(conString))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM image_gallery";
                    cmd.Connection = con;
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                    }
                }
            }
            return dt;

        }
        public static DataTable get_docs(String professor_email)
        {
            DataTable dt = new DataTable();

            connect();
            using (MySqlConnection con = new MySqlConnection(conString))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    String cmdString = String.Format("SELECT * FROM documents where document_uploadedby='{0}'",professor_email);
                    cmd.CommandText = cmdString;
                    cmd.Connection = con;
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                    }
                }
            }
            return dt;

        }

        public static void insert(String sql) {
            MySqlCommand cmd = new MySqlCommand(sql, con);
            cmd.ExecuteNonQuery();
        }

        public static DataTable get_data(String sql) {
            DataTable dt = new DataTable();

            connect();
            using (MySqlConnection con = new MySqlConnection(conString))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    cmd.CommandText = sql;
                    cmd.Connection = con;
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                    }
                }
            }

            return dt;

        }

        public static DataTable get_details_from_id(String user_type, int id) {

            String sql = String.Format("select * from {0}s where {0}_id = {1}", user_type, id);
            DataTable dt = new DataTable();

            connect();
            using (MySqlConnection con = new MySqlConnection(conString))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    cmd.CommandText = sql;
                    cmd.Connection = con;
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                    }
                }
            }
            return dt;
        }

        public static int get_id_from_email(String user_type, String email)
        {

            String sql = String.Format("select {0}_id from {0}s where {0}_email = '{1}'", user_type, email);
            DataTable dt = new DataTable();

            connect();
            using (MySqlConnection con = new MySqlConnection(conString))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    cmd.CommandText = sql;
                    cmd.Connection = con;
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                    }
                }
            }
            int i = Int32.Parse(dt.Rows[0][0].ToString());
            return  i;
        }

        public static String get_current_date() {
            DateTime date = DateTime.Now;
            String dateOnly = date.Date.ToString("MM/dd/yyyy");

            return dateOnly;
            //Console.WriteLine(date1.ToString());
            //       6/1/2008 7:47:00 AM
            //Console.WriteLine(dateOnly.ToString("d"));
            //       6/1/2008
            //Console.WriteLine(dateOnly.ToString("g"));
            //       6/1/2008 12:00 AM
            //Console.WriteLine(dateOnly.ToString("MM/dd/yyyy HH:mm"));
            //       06/01/2008 00:00
        }
        public static String get_current_time()
        {
            DateTime date = DateTime.Now;
            String timeOnly = date.ToString("HH:mm");
            return timeOnly;

        }
    }
}
