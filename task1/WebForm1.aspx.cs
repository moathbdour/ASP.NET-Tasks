using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) { 
            Response.Redirect("http://localhost:53181/WebForm2.aspx");
            }
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
          
            if (Page.IsValid)
            {
                Response.Redirect("http://localhost:53181/WebForm3.aspx");
            }
            }
        

      
    }
}