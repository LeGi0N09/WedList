using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
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
            str = "select * from customer_signup where username='" + Session["username"] + "'";

            //str = "SELECT tbl_faculty.f_id,tbl_faculty.f_username,tbl_faculty.dob,tbl_faculty.gender,tbl_fac_info.profession, tbl_fac_info.work_experience,tbl_fac_info.cat_name,tbl_fac_info.course_name,tbl_fac_info.state,tbl_fac_info.city,tbl_fac_info.area,tbl_fac_info.address,tbl_fac_info.fee,tbl_fac_info.phone_no FROM tbl_faculty INNER JOIN tbl_fac_info ON tbl_faculty.f_username=tbl_fac_info.f_username where f_id ='" + Session["l_id"] + "'";
            com = new SqlCommand(str, con);

            SqlDataAdapter da = new SqlDataAdapter(com);

            DataSet ds = new DataSet();

            da.Fill(ds);

            Image1.ImageUrl = ds.Tables[0].Rows[0]["profile"].ToString();
           TextBox1.Text = ds.Tables[0].Rows[0]["firstname"].ToString();

           TextBox2.Text = ds.Tables[0].Rows[0]["lastname"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["email"].ToString();
            Label1.Text = ds.Tables[0].Rows[0]["username"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["age"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0]["dob"].ToString();
            DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["gender"].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0]["number"].ToString();
            //// Label10.Text = ds.Tables[0].Rows[0]["username"].ToString();
            ////Label11.Text = ds.Tables[0].Rows[0]["fee"].ToString();
            ////Label12.Text = ds.Tables[0].Rows[0]["phone_no"].ToString();
            TextBox7.Text = ds.Tables[0].Rows[0]["altnumber"].ToString();
            TextBox8.Text = ds.Tables[0].Rows[0]["address"].ToString();
        }
        catch
        {

            Response.Write("<script>alert('First you have to login');window.location.href='404.aspx';</Script>");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {

            String contenttype = FileUpload1.PostedFile.ContentType;

            if (contenttype == "image/jpeg")
            {
                Response.Write("<script>alert('Success')</Script>");
            }
            else
            {
                Response.Write("<script>alert('Not Upload')</Script>");

            }
        }
    }

    protected void change_password_Click(object sender, EventArgs e)
    {    SqlConnection con = new SqlConnection(strConnString);

       
        if (TextBox10.Text == TextBox11.Text)
        {
          

           

            SqlCommand cmd = new SqlCommand("update  login set password='" + TextBox10.Text + "' where username='" + Label1.Text + "' and password='" + TextBox9.Text + "' ", con);
            SqlCommand cmd2 = new SqlCommand("update  customer_signup set password='" + TextBox10.Text + "' where username='" + Label1.Text + "' and password='" + TextBox9.Text + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            Label2.Visible = true;
            Label3.Visible = false;
            Label4.Visible =false;
            con.Close();
        }
        else
        {
            Label3.Visible = false;
            Label2.Visible = false;
            Label4.Visible = true;
        }
    }
    
}