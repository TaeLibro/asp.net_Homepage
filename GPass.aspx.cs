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
    public partial class GPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GList.aspx");
        }

        protected void btnPass_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            //strSql
            cmd.CommandText = "SELECT * FROM [dbo].[GBoard] WHERE Num = " + Request["Num"];

            SqlDataReader read = cmd.ExecuteReader();

            string strPass;
            read.Read();
            strPass = read["pass"].ToString();
            read.Close();

            if (strPass.CompareTo(txtPass.Text) == 0 && Request["Action"].CompareTo("Modify") == 0)
            {
                Response.Redirect("~/GModify.aspx?Num=" + Request["Num"]);
            }

            if (strPass.CompareTo(txtPass.Text) == 0 && Request["Action"].CompareTo("Delete") == 0)
            {
                cmd.CommandText = "DELETE FROM [dbo].[GBoard] WHERE Num = " + Request["Num"];
                cmd.ExecuteNonQuery();

                Response.Redirect("~/GList.aspx");
            }
            con.Close();

        }
    }
}