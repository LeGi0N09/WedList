using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class Default2 : System.Web.UI.Page
{
    Class2 obj=new Class2();
    Class1 email = new Class1();
    Class1 username = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {           
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "" && TextBox9.Text != "" && TextBox10.Text != "" && TextBox11.Text != "" && TextBox12.Text != "" )
        {
            if (TextBox13.Text == TextBox14.Text)
            {
                if (CheckBox1.Checked == true)
                {
                    email.EmailExist(TextBox11.Text.Trim());
                    if(email.flag2==0)
                    {
                        username.UserExist(TextBox12.Text.Trim());
                        if(username.flag3==0)
                        {
                            if (FileUpload1.HasFile == true)
                            {
                                String contenttype = FileUpload1.PostedFile.ContentType;

                                if (contenttype == "image/jpeg" || contenttype == "image/png")
                                {
                                    string p1 = Server.MapPath("vendorprofile");
                                    string p2 = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
                                    this.FileUpload1.SaveAs(p1 + "/" +TextBox11.Text+ p2);
                                    p1 = ("vendorprofile/" + TextBox11.Text + p2);
                                    string p3 = Server.MapPath("vendorid");
                                    string p4 = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
                                    this.FileUpload1.SaveAs(p3 + "/" + TextBox11.Text + p4);
                                    p3 = ("vendorid/" + TextBox11.Text + p4);
                                    string status = "PENDING";
                                    obj.ins_vendor(TextBox1.Text.Trim(), TextBox2.Text.Trim(), TextBox3.Text.Trim(), DropDownList1.SelectedValue.Trim(), TextBox4.Text.Trim(), DropDownList2.SelectedValue.Trim(), DropDownList3.SelectedValue.Trim(), TextBox5.Text.Trim(), RadioButtonList1.SelectedValue.Trim(), TextBox6.Text.Trim(), TextBox7.Text.Trim(), DropDownList4.SelectedValue.Trim(), TextBox8.Text.Trim(), DropDownList5.SelectedValue.Trim(), TextBox9.Text.Trim(),DropDownList7.SelectedValue.Trim(), TextBox10.Text.Trim(), p1, DropDownList6.SelectedValue.Trim(), p3, TextBox11.Text.Trim(), TextBox15.Text.Trim(), TextBox16.Text.Trim(), TextBox12.Text.Trim(), TextBox13.Text.Trim(),status);
                                    Response.Redirect("thanks.aspx");
                                    Label27.Visible = false;
                                    Label28.Visible = false;
                                    Label29.Visible = false;
                                    Label30.Visible = false;
                                    Label31.Visible = false;
                                    Label32.Visible = false;
                                }
                                else
                                {
                                   Response.Write("<script>alert('File')</script>");
                                    Label26.Visible = false;
                                    Label27.Visible = true;
                                    Label28.Visible = false;
                                    Label29.Visible = false;
                                    Label30.Visible = false;
                                    Label31.Visible = false;
                                    Label32.Visible = false;
                                }
                            }
                    
     
                  

                    }
                        else
                        {
                            Response.Write("<script>alert('UserName already exist')</script>");
                            Label26.Visible = false;
                            Label27.Visible = false;
                            Label28.Visible = true;
                            Label29.Visible = false;
                            Label30.Visible = false;
                            Label31.Visible = false;
                            Label32.Visible = false;
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Email already exist')</script>");
                        Label26.Visible = false;
                        Label27.Visible = false;
                        Label28.Visible = false;
                        Label29.Visible = true;
                        Label30.Visible = false;
                        Label31.Visible = false;
                        Label32.Visible = false;
                    }
               
                }
                else
                {
                    Response.Write("<script>alert('Check All Terms & Conditions.')</script>");
                    Label26.Visible = false;
                    Label27.Visible = false;
                    Label28.Visible = false;
                    Label29.Visible = false;
                    Label30.Visible = true;
                    Label31.Visible = false;
                    Label32.Visible = false;
                }

            }

            else
            {
                Response.Write("<script>alert('Please enter same Password.')</script>");
                Label26.Visible = false;
                Label27.Visible = false;
                Label28.Visible = false;
                Label29.Visible = false;
                Label30.Visible = false;
                Label31.Visible = true;
                Label32.Visible = false;
            }
        }
        else
        {
           Response.Write("<script>alert('Enter All The Data.')</script>");
            Label26.Visible = false;
            Label27.Visible = false;
            Label28.Visible = false;
            Label29.Visible = false;
            Label30.Visible = false;
            Label31.Visible = false;
            Label32.Visible = true;
        }
    }
}