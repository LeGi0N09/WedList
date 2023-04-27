using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;


public partial class Default2 : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
       {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into contact values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Your Message Successfully Recieved.')</Script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";

     }
        else
        {
            Response.Write("<script>alert('Make Input Data proper')</Script>");
        }
    }
}