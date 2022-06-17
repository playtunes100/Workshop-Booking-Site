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
    public partial class Workshop : System.Web.UI.Page
    {
        public String conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDBFilename=|DataDirectory|\StudentDB.mdf;Integrated Security=True";
        public SqlConnection conn;
        public SqlDataReader dataReader;
        public SqlDataAdapter adapter;
        public SqlCommand comm;
        public DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(conString);
                
                conn.Open();
                
                if (Session["user"] != null)
                {
                    lblWelcome.Text = "Welcome " + Session["user"];

                    String query = $"SELECT * FROM StudentTable WHERE Username ='{Session["user"].ToString()}'";
                    ;
                    comm = new SqlCommand(query, conn);
                    dataReader = comm.ExecuteReader();
                    while(dataReader.Read())
                    {
                        lblUsername.Text = dataReader.GetValue(1).ToString();
                        lbldate.Text = dataReader.GetValue(3).ToString();
                        lbljava.Text = dataReader.GetValue(4).ToString();
                        lblcsharp.Text = dataReader.GetValue(5).ToString();
                        lblcplus.Text = dataReader.GetValue(6).ToString();
                    }
                    

                }
                else
                    Response.Redirect("Login.aspx");

                conn.Close();
            }
            catch (Exception error)
            {
                lblError.Text = error.Message;
            }
        }

        protected void btnConfirmDate_Click(object sender, EventArgs e)
        {
            int java = 0;
            int csharp = 0;
            int cpp = 0;
            if (rbJava.Checked)
                java = 1;
            else if (rbCH.Checked)
                csharp = 1;
            else if (rbCplus.Checked)
                cpp = 1;

            String query = $"UPDATE StudentTable SET WorkshopDate='{Calendar1.SelectedDate.Date}', Java='{java}', CSharp='{csharp}', CPP='{cpp}' WHERE Username='{Session["user"].ToString()}'";
            try
            {
                conn.Open();
                adapter = new SqlDataAdapter();
                comm = new SqlCommand(query, conn);
                adapter.UpdateCommand = comm;
                adapter.UpdateCommand.ExecuteNonQuery();
                
                conn.Close();
                
            }
            catch (Exception error)
            {
                lblError.Text = error.Message + " Failed to update database!";
            }
        }
    }
}