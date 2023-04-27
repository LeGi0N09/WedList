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
            Response.Write("<script>alert('First you have to login');window.location.href='Default.aspx';</Script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        if ((TextBox1.Text != "") && (TextBox2.Text != ""))
        {
        SqlCommand cd = new SqlCommand("update  query set ans_query='" + TextBox2.Text + "'  where Id='" + TextBox1.Text+ "' ", con);

        con.Open();
        cd.ExecuteNonQuery();
        Response.Write("<script>alert('Response Succesully Sent.');</Script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label4.Visible = false;  
        Response.Redirect("ans_query.aspx");
        con.Close();
        }
        else
        {

            Label4.Visible = true;  
         }
       
    }

}