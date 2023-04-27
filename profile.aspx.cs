using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
public partial class Default2 : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    string str;
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);

        con.Open();
        str = "select * from customer_signup where username='" + Session["username"] + "'";
      
        //str = "SELECT tbl_faculty.f_id,tbl_faculty.f_username,tbl_faculty.dob,tbl_faculty.gender,tbl_fac_info.profession, tbl_fac_info.work_experience,tbl_fac_info.cat_name,tbl_fac_info.course_name,tbl_fac_info.state,tbl_fac_info.city,tbl_fac_info.area,tbl_fac_info.address,tbl_fac_info.fee,tbl_fac_info.phone_no FROM tbl_faculty INNER JOIN tbl_fac_info ON tbl_faculty.f_username=tbl_fac_info.f_username where f_id ='" + Session["l_id"] + "'";
        com = new SqlCommand(str, con);

        SqlDataAdapter da = new SqlDataAdapter(com);

        DataSet ds = new DataSet();

        da.Fill(ds);

        Image1.ImageUrl = ds.Tables[0].Rows[0]["profile"].ToString();
        Label1.Text = ds.Tables[0].Rows[0]["firstname"].ToString();
        
        Label3.Text = ds.Tables[0].Rows[0]["lastname"].ToString();
        Label4.Text = ds.Tables[0].Rows[0]["age"].ToString();
        Label5.Text = ds.Tables[0].Rows[0]["dob"].ToString();
        Label6.Text = ds.Tables[0].Rows[0]["gender"].ToString();
        Label7.Text = ds.Tables[0].Rows[0]["email"].ToString();
        Label8.Text = ds.Tables[0].Rows[0]["number"].ToString();
        Label9.Text = ds.Tables[0].Rows[0]["address"].ToString();
        Label10.Text = ds.Tables[0].Rows[0]["username"].ToString();
        //Label11.Text = ds.Tables[0].Rows[0]["fee"].ToString();
        //Label12.Text = ds.Tables[0].Rows[0]["phone_no"].ToString();
    }
    }