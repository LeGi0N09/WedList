<%@ Page Title="Suggetion" Language="C#" MasterPageFile="~/Vendormasterpage.master" AutoEventWireup="true" CodeFile="read_suggetion.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%-- Vendor Dashboard Menu--%>
    <asp:Label ID="Label100" runat="server" ></asp:Label>
      <section id="vendor-dashboard" class="vendor-dashboard-main-block">
    <div class="container">
      <ul class="vendor-dashboard-tabs general-nav-tabs tabs" >
        <li><a href="vendor_dashboard.aspx" class="btn btn-default"><span class="badge">Dashboard</span></a></li>
        <li><a href="vendor_profile.aspx" class="btn btn-default"><span class="badge">Profile</span></a></li>
          <li><a href="read_suggetion.aspx" class="active btn btn-default" ><span class="badge">Reviews</span></a></li>
        <li><a href="v_view_orders.aspx" class="btn btn-default"><span class="badge">View Orders</span></a></li>
        <li><a href="#" class="btn btn-default"><span class="badge">My Wishlist</span></a></li>
      </ul>

<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"  >
          <ItemTemplate> 
                <%--<div class="panel panel-default">
            <table style="width:100%">
                      <tr>
                          <td ><h6 style="margin:5% 0% 5% 5%"><%# DataBinder.Eval(Container,"DataItem.customer_name") %></h6> </td>
                          <td><h6 style="margin:0% 0% 2% 5%"><%# DataBinder.Eval(Container,"DataItem.email") %></h6></td>
                          <td ><h6 style="margin:0% 0% 0% 5%"><%# DataBinder.Eval(Container,"DataItem.contact") %></h6></td>
                          <td ><h6 style="margin:0% 0% 0% 5%"><%# DataBinder.Eval(Container,"DataItem.date") %></h6></td>
                          <td ><h6 style="margin:0% 0% 0% 5%"><%# DataBinder.Eval(Container,"DataItem.city") %></h6></td>
                          <td ><h6 style="margin:0% 0% 0% 5%"><div class="uiverse">
    <span class="tooltip"><%# DataBinder.Eval(Container,"DataItem.status") %></span>
    <span>
        <%# DataBinder.Eval(Container,"DataItem.status") %>
    </span>
</div></h6></td>
                      </tr>
                  </table>
                </div>--%>

                  <div class="panel panel-default">
                  <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title to-do-list-heading">
                      <a role="button"  aria-expanded="true" >
                    <spam>Customer Name:  <%# DataBinder.Eval(Container,"DataItem.customer_name") %></spam>  
                   
      

             
                
                          
                      </a>
                    </h4>
                  </div>
                  <div class="panel-collapse collapse in" role="tabpanel" >
                    <div class="panel-body to-do-list-dtl">
                      <div class="row">
                        <div class="col-sm-9">
                       <span > Email: <%# DataBinder.Eval(Container,"DataItem.email") %></span> <br /><br />


                         <span> Date:<%# DataBinder.Eval(Container,"DataItem.number") %></span> 
                        </div>
                        <div class="col-sm-3">
                         <span>Reviews:<%# DataBinder.Eval(Container,"DataItem.suggestion") %></span><br />
                            <br />

                         
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            
</ItemTemplate>
                    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [suggestion] WHERE ([vendor_email] = @vendor_email)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label100" PropertyName="Text" Name="vendor_email" Type="String"></asp:ControlParameter>

        </SelectParameters>
                    </asp:SqlDataSource>

        </div>
            </section>


     <%-- Vendor Dashboard Menu--%>

    

</asp:Content>

