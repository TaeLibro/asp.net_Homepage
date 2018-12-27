using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPBoard
{
    public partial class GModify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings[
                    "ConnectionString"].ConnectionString;
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "SELECT * FROM [dbo].[GBoard] WHERE num = " + Request["Num"];

                SqlDataReader read = cmd.ExecuteReader();

                if (read.Read())
                {
                    lblName.Text = read["name"].ToString();
                    txtTitle.Text = read["title"].ToString();
                    txtContents.Text = read["contents"].ToString();
                }

                read.Close();
                con.Close();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GList.aspx");
        }

        protected void btnWrite_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "ConnectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "UPDATE [dbo].[GBoard] SET title =N'" + txtTitle.Text + "', contents =N'"
               + txtContents.Text + "' WHERE num = " + Request["Num"];

            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/GList.aspx");

        }
    }
}