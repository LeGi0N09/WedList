using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
   
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\sahar\OneDrive\Desktop\Final_Project\Final_Project\App_Data\Database.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();
    SqlDataReader rdr;
    public int flag = 0;
    public int flag2 = 0;
    public int flag3 = 0;
    public Class1()
    {
        //
        // TODO: Add constructor logic here
        //
        cmd.Connection = con;
        cmd1.Connection = con;
        cmd2.Connection = con;
    }
    public string[] log(string email, string Password  )
    {
        string qry = "select * from login where email=@p1 and Password=@p2";
        cmd.CommandText = qry;   
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@p1", email);
        cmd.Parameters.AddWithValue("@p2", Password);
        

        con.Open();
        rdr = cmd.ExecuteReader();

        string[] type = new string[3];

        if (rdr.Read())
        {
            type[0] = Convert.ToString(rdr["role"]);
            type[1] = Convert.ToString(rdr["username"]);
            type[2] = Convert.ToString(rdr["status"]);
        }
        con.Close();
        return type;
    }

    public void ins_user(string p, string p2, string p3, string p4, string p5, string p6, string p7, string p8, string p9,string p10,string p11,string p12,string p13)
    {

        SqlCommand cmd = new SqlCommand("insert into customer_signup values(@firstname,@lastname,@age,@dob,@gender,@email,@number,@altnumber,@address,@profile,@username,@password,@status )", con);
        con.Open();
        cmd.Parameters.AddWithValue("@firstname", p);
        cmd.Parameters.AddWithValue("@lastname", p2);
        cmd.Parameters.AddWithValue("@age", p3);
        cmd.Parameters.AddWithValue("@dob", p4);
        cmd.Parameters.AddWithValue("@gender", p5);
        cmd.Parameters.AddWithValue("@email", p6);
        cmd.Parameters.AddWithValue("@number", p7);
        cmd.Parameters.AddWithValue("@altnumber", p8);
        cmd.Parameters.AddWithValue("@address", p9);
        cmd.Parameters.AddWithValue("@profile", p10);

        cmd.Parameters.AddWithValue("@username", p11);
        cmd.Parameters.AddWithValue("@password", p12);
        cmd.Parameters.AddWithValue("@status", p13);

        flag= 1;
        cmd.ExecuteNonQuery();
        

        //-------------------------------------------------------------------------------


        SqlCommand cmd1 = new SqlCommand("insert into login values(@user,@email,@username,@password,@status)",con);
        cmd.Parameters.Clear();   
        
        cmd1.Parameters.AddWithValue("@user", "user");
        cmd1.Parameters.AddWithValue("@email", p6);
        cmd1.Parameters.AddWithValue("@username",p11);
        cmd1.Parameters.AddWithValue("@password", p12);
        cmd1.Parameters.AddWithValue("@status", p13);


        cmd1.ExecuteNonQuery();
        con.Close();
     
    }

    public void ins_admin(string p,string p2,string p3)
    {
        SqlCommand cmd2 = new SqlCommand("insert into login values(@admin,@email,@username,@password)", con);
        con.Open();
        cmd2.Parameters.Clear(); 
        cmd2.Parameters.AddWithValue("@admin", "admin");
        cmd2.Parameters.AddWithValue("@email", p);
        cmd2.Parameters.AddWithValue("@username", p2);
        cmd2.Parameters.AddWithValue("@password", p3);
      

        cmd2.ExecuteNonQuery();
        con.Close();
    }
    public void EmailExist(string email)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from login where email =@email", con);
        cmd.Parameters.AddWithValue("@email", email);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            flag2 = 1;
        }
        else
        {
            flag2 = 0;
        }
        con.Close();
    }
    public void UserExist(string username)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from login where username =@username", con);
        cmd.Parameters.AddWithValue("@username", username);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            flag3 = 1;
        }
        else
        {
            flag3 = 0;
        }
        con.Close();
    }
}