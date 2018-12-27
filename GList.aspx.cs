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
    public partial class GList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListDisplay();
        }
        protected void btnWrite_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GWrite.aspx?Action=Write");
        }

        private void ListDisplay()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT [Num], [name], [title], [writedate], [readcount], [depth], [refer], [pos] FROM [dbo].[GBoard] ORDER BY [refer] DESC, [pos]";

        }

        string SetSpace(int depth)
        {
            if (depth == 0) return "";

            string strSpace = "";

            for (int i = 0; i < depth; i++)
                strSpace += "&nbsp;&nbsp;&nbsp;";

            return strSpace;
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT [Num], [name], [title], [writedate], [readcount], [depth], [refer], [pos] FROM [dbo].[GBoard] WHERE @Selvalue LIKE '%@txtSearch%' ORDER BY [refer] DESC, [pos]";
            cmd.Parameters.AddWithValue("@Selvalue", drdwSearch.SelectedValue);
            cmd.Parameters.AddWithValue("@txtSearch", txtSearch.Text);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
        }
    }
}