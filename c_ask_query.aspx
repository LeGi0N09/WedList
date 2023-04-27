 <%@ Page Title="" Language="C#" MasterPageFile="~/customerMasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="c_ask_query.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <%-- Customer Dashboard Menu--%>
    <asp:Label ID="Label100" runat="server" ></asp:Label>
      <section id="vendor-dashboard" class="vendor-dashboard-main-block">
    <div class="container">
      <ul class="vendor-dashboard-tabs general-nav-tabs tabs">
        <li><a href="customer_dashboard.aspx" class="btn btn-default"><span class="badge">Dashboard</span></a></li>
        <li><a href="cutomer_profile.aspx" class="btn btn-default"><span class="badge">Profile</span></a></li>
        <li><a href="c_give_order.aspx" class="btn btn-default"><span class="badge">Search Vendor</span></a></li>
        <li><a href="#" class="active btn btn-default"><span class="badge">Ask Query</span></a></li>
       
    <li><a href="c_See_query.aspx" class=" btn btn-default"><span class="badge">See Queries</span></a></li>
      </ul>
        <div class="to-do-list-block">
        <div class="row">
          <div class="col-md-11">
            <div class="create-task-block">
              <h4 class="create-task-heading">Ask Query</h4>
              <div class="form-group">
                <form id="create-task-form" >
                  <label for="task-title">Your Name:</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control name-valid"></asp:TextBox>
                  <label for="task-date">Your Email:</label>
                   <asp:Label ID="Label1" runat="server" CssClass="form-control" ></asp:Label>
                  <label for="task-dis"> Contact No:</label>
                 <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                     <label for="task-dis">Enter Your Query:</label>
                 <asp:TextBox ID="TextBox2" runat="server" Textmode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
                  <asp:Button ID="Button1" runat="server" class="btn btn-pink" Text="Ask Query" OnClick="Button1_Click"/>
                    <br />
                    <br />

                     <asp:Label ID="Label2" runat="server" CssClass="alert alert-success" Text="*Your Query suceessfilly Recieved." Visible="false"></asp:Label>
                    <br/>
                    <br />
                    <br />
              

                     <asp:Label ID="Label3" runat="server" CssClass="alert alert-info"  Text="We will answer in 24 hours" visible="false"></asp:Label>
                </form>
              </div>
            </div>
          </div>
        </div>
            </div>
        </div>
            </section>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                      <script>
                          $(document).ready(function () {
                              $('.name-valid').on('keypress', function (e) {
                                  var regex = new RegExp("^[a-zA-Z ]*$");
                                  var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
                                  if (regex.test(str)) {
                                      return true;
                                  }
                                  e.preventDefault();
                                  return false;
                              });
                          });
</script> 
           

     <%-- Vendor Dashboard Menu--%>

<!-- end to do list -->
</asp:Content>

