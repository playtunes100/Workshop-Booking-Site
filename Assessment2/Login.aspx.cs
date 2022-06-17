using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Assessment2
{
    public partial class Login : System.Web.UI.Page
    {
        public String conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDBFilename=|DataDirectory|\StudentDB.mdf;Integrated Security=True";
        public SqlConnection conn;
        public SqlDataReader dataReader;
        public SqlCommand comm;
        public DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(conString);
                conn.Open();
                conn.Close();
            }
            catch (Exception error)
            {
                lblError.Text = error.Message;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String query = $"SELECT Username, Password FROM StudentTable WHERE Username ='{tbUsername.Text}'";
            
            try
            {
                conn.Open();
                
                comm = new SqlCommand(query, conn);
                dataReader = comm.ExecuteReader();
                while (dataReader.Read())
                {
                    
                    if (tbPassword.Text == dataReader.GetValue(1).ToString())
                    {
                        Session["user"] = tbUsername.Text;
                        conn.Close();
                        Response.Redirect("Workshop.aspx");
                    }
                    else
                        lblError.Text = "Invalid password!";
                }
                
                
            }
            catch (Exception error)
            {
                lblError.Text = error.Message + " Failed to login!";
            }
        }
    }
}