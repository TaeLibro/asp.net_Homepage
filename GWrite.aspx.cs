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
    public partial class GWrite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnWrite_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            if (Request["Action"].CompareTo("Reply") != 0)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into [dbo].[GBoard] ([name], [pass], [email], [title], [contents], [writedate], [readcount], [refer], [depth], [pos]) values(@name, @pass, @email, @title, @contents, @writedate, @readcount, 0, 0, 0)";
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@pass", txtPass.Text);
                cmd.Parameters.AddWithValue("@email", txtEMail.Text);
                cmd.Parameters.AddWithValue("@title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@contents", txtContents.Text);
                cmd.Parameters.AddWithValue("@writedate", DateTime.Now.ToShortDateString());
                cmd.Parameters.AddWithValue("@readcount", 0);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            else
            {
                int iRefer = int.Parse(Request["refer"]);
                int iDepth = int.Parse(Request["depth"]);
                int iPos = int.Parse(Request["pos"]);

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "update [dbo].[GBoard] set [pos]=[pos]+1 where [refer] = @refer and [pos] = @pos";
                cmd.Parameters.AddWithValue("@pos", iPos);
                cmd.Parameters.AddWithValue("@refer", iRefer);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                iDepth++;
                iPos++;

                cmd.CommandText = "insert into [dbo].[GBoard] ([name], [pass], [email], [title], [contents], [writedate], [readcount], [refer], [depth], [pos]) values(@name, @pass, @email, @title, @contents, @writedate, @readcount, @refer, @depth, @pos)";
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@pass", txtPass.Text);
                cmd.Parameters.AddWithValue("@email", txtEMail.Text);
                cmd.Parameters.AddWithValue("@title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@contents", txtContents.Text);
                cmd.Parameters.AddWithValue("@writedate", DateTime.Now.ToShortDateString());
                cmd.Parameters.AddWithValue("@readcount", 0);
                cmd.Parameters.AddWithValue("@depth", iDepth);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            con.Close();

            Response.Redirect("~/GList.aspx");
        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GList.aspx");
        }
    }
}