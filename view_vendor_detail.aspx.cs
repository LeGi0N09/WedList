 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;
using System.Configuration;
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
            Label100.Text = ds.Tables[0].Rows[0]["email"].ToString();
           
            Label100.Visible = false;
        }
        catch
        {
            Response.Write("<script>alert('First you have to login');window.location.href='Default.aspx';</Script>");
        }

        
    }
    protected void Button2_click(object sender, EventArgs e)
    { 
       
        string p1 = null;
        SqlConnection cn = new SqlConnection(strConnString);
        if ((TextBox7.Text != "") && (TextBox9.Text != "") && (TextBox10.Text !=""))
        {
 SqlCommand cd = new SqlCommand("insert into suggestion values('" + Label4.Text + "','" + TextBox7.Text + "','" +Label100.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + p1 + "')", cn);
      
        cn.Open();
        cd.ExecuteNonQuery();
        Label2.Visible = true;
           
    cn.Close();
        }
       else{
           Label5.Visible = true;
        }

       
    }
    public void Button1_click(object sender, EventArgs e)
    {
        string p1 = "PENDING";
        SqlConnection cn = new SqlConnection(strConnString);
        if ((TextBox1.Text != "") && (TextBox3.Text != "") && (TextBox4.Text != "") && (TextBox5.Text != "") && (TextBox2.Text != ""))
        {
            SqlCommand cd = new SqlCommand("insert into booking values('" + TextBox1.Text + "','" + Label4.Text + "','" + Label100.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox2.Text + "', '" + p1 + "')", cn);

            cn.Open();
            cd.ExecuteNonQuery();
            Label1.Visible = true;

            cn.Close();
        }
        else
        {
            Label3.Visible = true;
        }
    }
   
}