using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
      
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "" && TextBox9.Text != "")
        {
            if (TextBox10.Text == TextBox11.Text)
            {
                if (CheckBox1.Checked == true)
                {
                    if (FileUpload1.HasFile == true)
                    {
                        String contenttype = FileUpload1.PostedFile.ContentType;

                       if (contenttype == "image/jpeg" || contenttype=="image/png")
                       {
                           string p1 = Server.MapPath("Customerprofile");
                            string p2 = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
                            this.FileUpload1.SaveAs(p1 + "/" + TextBox5.Text +p2 );
                            p1= ("Customerprofile/" + TextBox5.Text + p2);
                            string status = "null";
                            obj.ins_user(TextBox1.Text.Trim(), TextBox2.Text.Trim(), TextBox3.Text.Trim(), TextBox4.Text.Trim(), DropDownList1.SelectedValue.Trim(), TextBox5.Text.Trim(), TextBox6.Text.Trim(), TextBox7.Text.Trim(), TextBox8.Text.Trim(), p1, TextBox9.Text.Trim(), TextBox10.Text.Trim(),status);
                            Response.Redirect("thank.aspx");
                        }  
                       else
                       {
                           Response.Write("<script>alert('File')</script>");
                       }
                    }
                }
                else
                {
                    Response.Write("<script>alert('Check All Terms & Conditions.')</script>");
                }

            }

            else
            {
                Response.Write("<script>alert('Please enter same Password.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Enter All The Data.')</script>");
        }
    }
    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    if (FileUpload1.HasFile == true)
    //    {

    //        String contenttype = FileUpload1.PostedFile.ContentType;

    //        if (contenttype == "image/jpeg" || contenttype=="image/png")
    //        {
    //            Response.Write("<script>alert('Success')</Script>");
    //        }
    //        else
    //        {
    //            Response.Write("<script>alert('Not Upload')</Script>");

    //        }
    //    }
    //}
}