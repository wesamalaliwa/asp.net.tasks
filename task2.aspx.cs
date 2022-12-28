using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ASP.NET_TASKS
{
    public partial class task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ccc(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection connection =
           new SqlConnection("data source =  DESKTOP-N9T9K9N\\SQLEXPRESS; database = tasks ; integrated security=SSPI");
            SqlCommand command = new SqlCommand($"insert into tasks (comment) values (@commment) ", connection);
            command.Parameters.AddWithValue("@commment", TextBox1.Text);
            connection.Open();
            command.ExecuteNonQuery();

            connection.Close();
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Member Registered Sucessfully');", true);

        }
    }
}