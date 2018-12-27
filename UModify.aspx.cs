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
    public partial class UModify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = Page.User.Identity.Name;

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select UID From [dbo].[User] Where UserId = @userId ";
            cmd.Parameters.AddWithValue("@UserId", userId);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                lblUID.Text = dr["UID"].ToString();

            }
            dr.Close();
            con.Close();
        }
        protected void modify_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "update [dbo].[User] set [UserID] = @UserID , [Password] = @Password Where UID=@UID";
            cmd.Parameters.AddWithValue("@UID", lblUID.Text);
            cmd.Parameters.AddWithValue("@UserID", ID.Text);
            cmd.Parameters.AddWithValue("@Password", PW.Text);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            con.Close();

            string strst = "<script>alert('변경이 완료되었습니다 다시로그인하십시오..');location.href='ULogin.aspx' </script>";

            Page.ClientScript.RegisterClientScriptBlock(GetType(), "goUDefault", strst);
        }
    }
}