using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_TASKS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    

        protected void Button2_Click1(object sender, EventArgs e)
        {
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
            //   "swal('Good job!', 'You clicked Success button!', 'success')", true);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                 "swal('Error!', 'You clicked Error button!', 'error')", true);
        }
    }
    
}