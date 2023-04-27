using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customerMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   

    protected void Button1_Click1(object sender, EventArgs e)
    {
  Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
}
