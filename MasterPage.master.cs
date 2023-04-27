using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class MasterPage : System.Web.UI.MasterPage
{
    Class1 obj1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string[] type;
        type = obj1.log(this.TextBox1.Text, this.TextBox2.Text);
        if (type[0] == "admin")
        {
            Session.Add("type", "admin");
            Session.Add("username", type[1]);
            Label1.Visible = false;
            Label2.Visible = false;
            Response.Redirect("admin_dashboard.aspx");
        }
        else if (type[0] == "user")
        {
            Session.Add("type", "user");
            Session.Add("username", type[1]);
            Label1.Visible = false;
            Label2.Visible = false;
            Response.Redirect("cutomer_profile.aspx");
        }

        else if (type[0] == "vendor")
        {   if( type[2] == "CONFIRM")
           {
            Session.Add("type", "vendor");
            Session.Add("username", type[1]);
            Label1.Visible = false;
            Label2.Visible = false;
            Response.Redirect("vendor_profile.aspx");
           }
        else {  Label2.Visible = true;

        Label1.Visible = false;
        }
        }
        else
        {
            Label1.Visible = true;
            Label2.Visible = false;
        }
    }
}
