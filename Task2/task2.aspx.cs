using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task2
{
    public partial class task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("data source = DESKTOP-9HB31TL; database = comments ; integrated security=SSPI");
            connection.Open();
           
            SqlCommand command1 = new SqlCommand("select * from comments1 order by id asc ", connection);
            SqlDataReader reader = command1.ExecuteReader();
            moath.InnerHtml = "";
            while (reader.Read())
            {
                moath.InnerHtml += "<div class=\"d-flex flex-start align-items-center\">\r\n " +
                    "             <img class=\"rounded-circle shadow-1-strong me-3\"\r\n  " +
                    "              src=\"t.jpg\" alt=\"avatar\" width=\"60\"\r\n  " +
                    "              height=\"60\" />\r\n              <div>\r\n  " +
                    "              <h6 class=\"fw-bold text-primary mb-1\">Moath Bdour</h6>\r\n    " +
                    "            <p class=\"text-muted small mb-0\">\r\n            " +
                    $"      Shared publicly - {reader[2]}\r\n                </p>\r\n     " +
                    $"         </div>\r\n            </div>\r\n\r\n            <p class=\"mt-3 mb-4 pb-2\"> {reader[1]}       " +
                    "     </p>\r\n\r\n            <div class=\"small d-flex justify-content-start\">\r\n   " +
                    "           <a href=\"#!\" class=\"d-flex align-items-center me-3\">\r\n          " +
                    "      <i class=\"far fa-thumbs-up me-2\"></i>\r\n          " +
                    "      <p class=\"mb-0\">Like</p>\r\n              </a>\r\n           " +
                    "   <a href=\"#!\" class=\"d-flex align-items-center me-3\">\r\n     " +
                    "           <i class=\"far fa-comment-dots me-2\"></i>\r\n            " +
                    "    <p class=\"mb-0\">Comment</p>\r\n              </a>\r\n         " +
                    "     <a href=\"#!\" class=\"d-flex align-items-center me-3\">\r\n     " +
                    "           <i class=\"fas fa-share me-2\"></i>\r\n               " +
                    " <p class=\"mb-0\">Share</p>\r\n              </a>\r\n            </div>";
            }
            connection.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection =new SqlConnection("data source = DESKTOP-9HB31TL; database = comments ; integrated security=SSPI");
            connection.Open();
            SqlCommand command = new SqlCommand("insert into comments1 values (@moath ,@dates)" , connection);
            command.Parameters.AddWithValue("@moath", textAreaExample.Value.ToString());
            command.Parameters.AddWithValue("@dates", DateTime.Now.ToString());
            command.ExecuteNonQuery();
            connection.Close();
            connection.Open();
            SqlCommand command1 = new SqlCommand("select * from comments1 order by id asc ", connection);
            SqlDataReader reader= command1.ExecuteReader();
            moath.InnerHtml = "";
            while(reader.Read())
            {
                moath.InnerHtml += "<div class=\"d-flex flex-start align-items-center\">\r\n " +
                    "             <img class=\"rounded-circle shadow-1-strong me-3\"\r\n  " +
                    "              src=\"t.jpg\" alt=\"avatar\" width=\"60\"\r\n  " +
                    "              height=\"60\" />\r\n              <div>\r\n  " +
                    "              <h6 class=\"fw-bold text-primary mb-1\">Moath Bdour</h6>\r\n    " +
                    "            <p class=\"text-muted small mb-0\">\r\n            " +
                    $"      Shared publicly - {reader[2]}\r\n                </p>\r\n     " +
                    $"         </div>\r\n            </div>\r\n\r\n            <p class=\"mt-3 mb-4 pb-2\"> {reader[1]}       " +
                    "     </p>\r\n\r\n            <div class=\"small d-flex justify-content-start\">\r\n   " +
                    "           <a href=\"#!\" class=\"d-flex align-items-center me-3\">\r\n          " +
                    "      <i class=\"far fa-thumbs-up me-2\"></i>\r\n          " +
                    "      <p class=\"mb-0\">Like</p>\r\n              </a>\r\n           " +
                    "   <a href=\"#!\" class=\"d-flex align-items-center me-3\">\r\n     " +
                    "           <i class=\"far fa-comment-dots me-2\"></i>\r\n            " +
                    "    <p class=\"mb-0\">Comment</p>\r\n              </a>\r\n         " +
                    "     <a href=\"#!\" class=\"d-flex align-items-center me-3\">\r\n     " +
                    "           <i class=\"fas fa-share me-2\"></i>\r\n               " +
                    " <p class=\"mb-0\">Share</p>\r\n              </a>\r\n            </div>";
            }
            connection.Close();

            textAreaExample.Value="";
        }
    }
}