using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ASPBoard
{
    public partial class AView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "UPDATE [dbo].[AAlbum] SET readcount=readcount+1 WHERE no =" + Request["No"];
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            cmd.CommandText = "SELECT * FROM [dbo].[AAlbum] WHERE no = " + Request["No"];
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lblName.Text = dr["name"].ToString();
                lblDate.Text = dr["writedate"].ToString();
                lblCount.Text = dr["readcount"].ToString();
                lblFileName.Text = dr["fileurl"].ToString();
                lblTitle.Text = dr["title"].ToString();
                txtContents.Text = dr["contents"].ToString();

                Image1.ImageUrl = "/Photo/" + lblFileName.Text;
            }
            dr.Close();
            con.Close();

        }
        protected void Selection(object sender, SqlDataSourceCommandEventArgs e)
        {
            e.Command.Parameters["@id"].Value = Request["No"];
        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AList.aspx");
        }
        protected void btnComment_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO [dbo].[AComment]([id], [name], [contents], [writedate]) VALUES (" + " '" +
                Int32.Parse(Request["No"]) + "', N'" + txtReName.Text + "', N'" + txtComment.Text + "', '" + DateTime.Now.ToShortDateString() + "')";
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("AView.aspx?No=" + Request["No"]);
        }
    }
}