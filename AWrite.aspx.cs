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
    public partial class AWrite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnWrite_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string strfn = FileUpload1.FileName;
                string strfs = Server.MapPath("~/photo/" + strfn);
                FileUpload1.SaveAs(strfs);


                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings[
                    "connectionString"].ConnectionString;
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "INSERT INTO [dbo].[AAlbum]([name], [title], [contents], [writedate], [readcount], [fileurl]) VALUES("
                    + "N'" + txtName.Text + "', N'" + txtTitle.Text + "', N'"
                    + txtContents.Text + "', '" + DateTime.Now.ToShortDateString() + "', 0, N'" + strfn + "')";
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.ExecuteNonQuery();

                con.Close();

                string strnow = "<script>alert('사진등록');</script>";
                Page.ClientScript.RegisterClientScriptBlock(GetType(), "AWrite", strnow);
                Response.Redirect("~/AList");
            }
        }
        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AList.aspx");
        }
    }
}