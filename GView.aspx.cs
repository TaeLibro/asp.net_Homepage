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
    public partial class GView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "Update [dbo].[GBoard] SET readcount = readcount+1 Where num = " + Request["Num"];
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

                cmd.CommandText = "Select * from [dbo].[GBoard] Where num = " + Request["Num"];
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    lblName.Text = dr["name"].ToString();
                    lblDate.Text = dr["writedate"].ToString();
                    lblCount.Text = dr["readcount"].ToString();
                    lblTitle.Text = dr["title"].ToString();
                    txtContents.Text = dr["contents"].ToString();

                    lblRefer.Text = dr["refer"].ToString();
                    lblDepth.Text = dr["depth"].ToString();
                    lblPos.Text = dr["pos"].ToString();
                }
                dr.Close();
                con.Close();
            }
        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GList.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GPass.aspx?Action=Delete&Num=" + Request["Num"]);
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GPass.aspx?Action=Modify&Num=" + Request["Num"]);
        }

        protected void btnReply_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GWrite.aspx?Action=Reply&Num=" + Request["Num"] + "&refer=" + lblRefer.Text + "&depth=" + lblDepth.Text + "&pos=" + lblPos.Text);
        }
    }
}