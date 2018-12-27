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
    public partial class UUserinfo : System.Web.UI.Page
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
            cmd.CommandText = "Select * From [dbo].[User] Where UserId = @userId ";
            cmd.Parameters.AddWithValue("@UserId", userId);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                lblUID.Text = dr["UID"].ToString();
                txtUserId.Text = dr["UserID"].ToString();
                txtPassword.Text = dr["Password"].ToString();
            }
            dr.Close();
            con.Close();
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            string strst = "<script>alert('수정페이지로 이동합니다..'); </script>";

            Response.Redirect("UModify.aspx");
            Page.ClientScript.RegisterClientScriptBlock(GetType(), "goUDefault", strst);
        }
    }
}