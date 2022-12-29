using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_TASKS
{
    public partial class task4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get the current date and time and set the label's text to display it
            lblDateTime.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");

            // Check if there is a cookie stored with the desired color value
            //HttpCookie cookie = Request.Cookies["labelColor"];
            if (Request.Cookies["labelColor"] != null)
            {
                string cookie = Request.Cookies["labelColor"]["color"];

                switch (cookie)
                {
                    case "yellow":
                        lblDateTime.ForeColor = System.Drawing.Color.Yellow;
                        break;
                    case "green":
                        lblDateTime.ForeColor = System.Drawing.Color.Green;
                        break;
                    case "blue":
                        lblDateTime.ForeColor = System.Drawing.Color.Blue;
                        break;
                    case "red":
                        lblDateTime.ForeColor = System.Drawing.Color.Red;
                        break;
                    default:
                        lblDateTime.ForeColor = System.Drawing.Color.Black;
                        break;
                }
            }

        }


        protected void ddlColors_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Label1.ForeColor = System.Drawing.Color.Yellow;

            // Create a new cookie and set the selected color value as a cookie variable
            HttpCookie cookie = new HttpCookie("labelColor");
            cookie.Values.Add("color", ddlColors.SelectedValue);
            //cookie["color"] = color;
            cookie.Expires = DateTime.Now.AddDays(10);  // Set the cookie to expire in 30 days

            // Add the cookie to the response
            Response.Cookies.Add(cookie);
            Response.Cookies["labelColor"].Expires = DateTime.Now.AddDays(7);
            //cookie.Values.Add("color", ddlColors.SelectedValue);

            // Get the selected color value from the dropdown list
            string color = Request.Cookies["labelColor"]["color"];




            switch (color)
            {
                case "yellow":
                    lblDateTime.ForeColor = System.Drawing.Color.Yellow;
                    break;
                case "green":
                    lblDateTime.ForeColor = System.Drawing.Color.Green;
                    break;
                case "blue":
                    lblDateTime.ForeColor = System.Drawing.Color.Blue;
                    break;
                case "red":
                    lblDateTime.ForeColor = System.Drawing.Color.Red;
                    break;
                default:
                    lblDateTime.ForeColor = System.Drawing.Color.Black;
                    break;
            }
            Label1.Text = color;

            //// Change the color of the dropdown list based on the selected item
            //if (color == "yellow")
            //{
            //    lblDateTime.ForeColor = System.Drawing.Color.Yellow;
            //}
            //else if (color == "green")
            //{
            //    lblDateTime.ForeColor = System.Drawing.Color.Green;
            //}
            //// Add additional conditions for the other colors (blue, black, red) here
            //else
            //{
            //    lblDateTime.ForeColor = System.Drawing.Color.Black;

            //}





        }
    }
}
