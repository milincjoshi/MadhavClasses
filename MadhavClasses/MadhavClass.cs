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
                con.Clone();
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
       


    }
}
