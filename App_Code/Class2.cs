using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for Class2
/// </summary>
public class Class2
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\sahar\OneDrive\Desktop\Final_Project\Final_Project\App_Data\Database.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();

    
    public int flag = 0;
	public Class2()
	{
        cmd.Connection = con;
        cmd1.Connection = con;
	}
    public void ins_vendor(string p, string p2, string p3, string p4, string p5, string p6, string p7, string p8, string p9, string p10, string p11, string p12, string p13, string p14, string p15, string p16, string p17, string p18, string p19, string p20, string p21, string p22, string p23,string p24,string p25,string p26)
    {

        SqlCommand cmd = new SqlCommand("insert into vendor_signup values(@name,@age,@dob,@gender,@companyname,@category,@subcategory,@services,@materials,@staff,@charge,@paymenttype,@deposit,@notice,@address,@city,@pincode,@photo,@idtype,@idphoto,@email,@phone,@alterphone,@username,@password,@status )", con);
        con.Open();
        cmd.Parameters.AddWithValue("@name", p);
        cmd.Parameters.AddWithValue("@age", p2);
        cmd.Parameters.AddWithValue("@dob", p3);
        cmd.Parameters.AddWithValue("@gender", p4);
        cmd.Parameters.AddWithValue("@companyname", p5);
        cmd.Parameters.AddWithValue("@category", p6);
        cmd.Parameters.AddWithValue("@subcategory", p7);
        cmd.Parameters.AddWithValue("@services", p8);
        cmd.Parameters.AddWithValue("@materials", p9);
        cmd.Parameters.AddWithValue("@staff", p10);
        cmd.Parameters.AddWithValue("@charge", p11);
        cmd.Parameters.AddWithValue("@paymenttype", p12);
        cmd.Parameters.AddWithValue("@deposit", p13);
        cmd.Parameters.AddWithValue("@notice", p14);
        cmd.Parameters.AddWithValue("@address", p15);
        cmd.Parameters.AddWithValue("@city", p16);
        cmd.Parameters.AddWithValue("@pincode", p17);
        cmd.Parameters.AddWithValue("@photo", p18);
        cmd.Parameters.AddWithValue("@idtype", p19);
        cmd.Parameters.AddWithValue("@idphoto", p20);
        cmd.Parameters.AddWithValue("@email", p21);
        cmd.Parameters.AddWithValue("@phone", p22);
        cmd.Parameters.AddWithValue("@alterphone", p23);
        cmd.Parameters.AddWithValue("@username", p24);
        cmd.Parameters.AddWithValue("@password", p25);
        cmd.Parameters.AddWithValue("@status", p26);

        flag = 1;
        cmd.ExecuteNonQuery();


        //-------------------------------------------------------------------------------
        cmd.CommandText = "select max(id) from vendor_signup";
        string username = Convert.ToString(cmd.ExecuteScalar());


        SqlCommand cmd1 = new SqlCommand("insert into login values(@user,@email,@username,@password,@status)", con);
        cmd.Parameters.Clear();

        cmd1.Parameters.AddWithValue("@user", "vendor");
        cmd1.Parameters.AddWithValue("@email", p21);
        cmd1.Parameters.AddWithValue("@username", p24);
        cmd1.Parameters.AddWithValue("@password", p25);
        cmd1.Parameters.AddWithValue("@status", p26);


        cmd1.ExecuteNonQuery();
        con.Close();

    }
}