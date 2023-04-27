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
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        string str;
        SqlCommand com;
    Class1 obj = new Class1();
    Class1 username = new Class1();
    Class1 email = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(strConnString);

            con.Open();
            str = "select * from login where username='" + Session["username"] + "'";

            //str = "SELECT tbl_faculty.f_id,tbl_faculty.f_username,tbl_faculty.dob,tbl_faculty.gender,tbl_fac_info.profession, tbl_fac_info.work_experience,tbl_fac_info.cat_name,tbl_fac_info.course_name,tbl_fac_info.state,tbl_fac_info.city,tbl_fac_info.area,tbl_fac_info.address,tbl_fac_info.fee,tbl_fac_info.phone_no FROM tbl_faculty INNER JOIN tbl_fac_info ON tbl_faculty.f_username=tbl_fac_info.f_username where f_id ='" + Session["l_id"] + "'";
            com = new SqlCommand(str, con);

            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();

            da.Fill(ds);
            Label100.Text = ds.Tables[0].Rows[0]["username"].ToString();
            Label100.Visible = false;
        }
        catch
        {
            Response.Write("<script>alert('You have to log In First');window.location.href='Default.aspx';</Script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        email.EmailExist(TextBox1.Text.Trim());
        if (email.flag2 == 0)
        {
            username.UserExist(TextBox2.Text.Trim());
            if (username.flag3 == 0)
            {
                if (TextBox3.Text == TextBox4.Text)
                {
                    obj.ins_admin(TextBox1.Text.Trim(), TextBox2.Text.Trim(),TextBox3.Text.Trim());
                   // Response.Write("<script>alert('New Admin is Succesfully Added.')</script>");
                    Label3.Visible = false;
                    Label1.Visible = false;
                    Label2.Visible = false; 
                    Label4.Visible = true;
                }
                else
                {
                    Label3.Visible = false; 
                    Label1.Visible = true;
                    Label4.Visible = false;
                    Label2.Visible = false;
                    // Response.Write("<script>alert('Please enter same Password.')</script>");
                }
            }
            else
            {Label4.Visible = false;
                Label3.Visible = false;
                Label2.Visible = true;
                Label1.Visible = false; 
            }
        }
        else
        {
            Label1.Visible = false;
            Label2.Visible = false; 
            Label4.Visible = false;
            Label3.Visible = true;
        }
    }
}