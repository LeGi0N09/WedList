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

    protected void Search_Click(object sender, EventArgs e)
    {
        try
        {
             SqlConnection cn = new SqlConnection(strConnString);
            string status_value ="CONFIRM";
             SqlCommand cd = new SqlCommand("select username,photo,name,companyname,charge from vendor_signup where category='"+DropDownList2.SelectedItem.Text+"' AND subcategory='"+DropDownList3.SelectedItem.Text+"' AND CITY='"+DropDownList4.SelectedItem.Text+"' AND status='"+status_value+"' " , cn);
             SqlDataAdapter da = new SqlDataAdapter(cd);
            DataSet ds = new DataSet();
             cn.Open();
               cd.ExecuteScalar();
               da.Fill(ds);
              Repeater1.DataSource=ds.Tables[0];
             Repeater1.DataBind();
                 cn.Close();
        }
        catch
        {
            Response.Write("<script>alert('No Vendor Found in Category')</script>");
        }
       
    }
    protected void Repeater1_ItemCommand(object sender, EventArgs e)
    {

    }
}