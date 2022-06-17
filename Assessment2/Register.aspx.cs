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
    public partial class Register : System.Web.UI.Page
    {
        public String conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDBFilename=|DataDirectory|\StudentDB.mdf;Integrated Security=True";
        public SqlConnection conn;
        public SqlDataAdapter adapter;
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

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            String query = $"INSERT INTO StudentTable (Username, Password, WorkshopDate, Java, CSharp, CPP) VALUES('{tbRegUsername.Text}','{tbRegPassword.Text}', '{DateTime.Today}', '{1}','{0}','{0}')";
            try
            {
                conn.Open();
                adapter = new SqlDataAdapter();
                comm = new SqlCommand(query, conn);
                adapter.InsertCommand = comm;
                adapter.InsertCommand.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Login.aspx");
            }
            catch (Exception error)
            {
                lblError.Text = error.Message+" Failed to create account!";
            }
        }
    }
}