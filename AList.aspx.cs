﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPBoard
{
    public partial class AList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnWrite_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/AWrite.aspx");
        }
    }
}