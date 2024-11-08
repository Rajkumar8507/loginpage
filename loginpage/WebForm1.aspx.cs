using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using Microsoft.SqlServer.Server;

namespace loginpage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=HEMANTH\\SQLEXPRESS2019;Initial Catalog=login_page;Integrated Security=True;Trust Server Certificate=True");
            con.Open();
            string loginquery = "select count(*)from login where username=@username and password=@password";
            SqlCommand cmd = new SqlCommand(loginquery, con);
            cmd.Parameters.AddWithValue("@username", tb1.Text);
            cmd.Parameters.AddWithValue("@password", tb2.Text);
            int count = (int)cmd.ExecuteScalar();
            con.Close();
            if (count > 6)
            {
                Response.Write("<script>alert('login successful');</script>");
            }
            else
            {
                Response.Write("<script>alert('please enter more than 6 characters');</script>");
            }
        }
    }
}