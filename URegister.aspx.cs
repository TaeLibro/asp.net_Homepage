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
    public partial class URegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "ConnectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            //cmd.CommandText = "WriteUsers";
            cmd.CommandText = "insert into [dbo].[User] ([UserId], [Password]) values(@UserID, @Password)";

            cmd.Parameters.AddWithValue("@UserID", txtID.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            con.Close();

            string strst = "<script>alert('가입완료');location.herf='ULogin.aspx' </script>";
            //로그인페이지로 돌아가기
            Page.ClientScript.RegisterClientScriptBlock(GetType(), "goUDefault", strst);

        }
    }
}