<%@ Page Title="" Language="C#" MasterPageFile="~/customerMasterPage.master" AutoEventWireup="true" CodeFile="c_See_query.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <asp:Label ID="Label100" runat="server" ></asp:Label>
    <asp:ScriptManager ID="Scriptmanager1" runat="server">


    </asp:ScriptManager>
      <section id="vendor-dashboard" class="vendor-dashboard-main-block">
    <div class="container">
      <ul class="vendor-dashboard-tabs general-nav-tabs tabs">
        <li><a href="customer_dashboard.aspx" class="btn btn-default"><span class="badge">Dashboard</span></a></li>
        <li><a href="cutomer_profile.aspx" class="btn btn-default"><span class="badge">Profile</span></a></li>
        <li><a href="c_give_order.aspx" class="btn btn-default"><span class="badge">Search Vendor</span></a></li>
        <li><a href="c_ask_query.aspx" class="btn btn-default"><span class="badge">Ask Query</span></a></li>
       
        <li><a href="c_See_query.aspx" class="active btn btn-default"><span class="badge">See Queries</span></a></li>
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
            

                
                  <div class="panel panel-default" style="width:70%; margin:auto">
                  <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title to-do-list-heading">
                      <a role="button"  aria-expanded="true" >
                    <spam>Your Name:  <%# DataBinder.Eval(Container,"DataItem.customer_name") %></spam>  
               
                      </a>
                    </h4>
                  </div>
                  <div class="panel-collapse collapse in" role="tabpanel" >
                    <div class="panel-body to-do-list-dtl">
                      <div class="row"> 
                           <asp:UpdatePanel ID="Updatepanel1" runat="server" >
                  <ContentTemplate>
                        <div class="col-sm-10 input-group">
                       <span class="input-group-addon" > Email:</span> 
                         <asp:Label ID="Label2" runat="server" CssClass="form-control" style="padding-top:1.5%" Text='<%# DataBinder.Eval(Container,"DataItem.email") %>' ></asp:Label> <br /><br />
                            
                        </div>
                          <br />
                        <div class="col-sm-10 input-group">
                         <span class="input-group-addon"> Contact:</span> 
                            <span class="form-control" style="padding-top:2.5%" ><%# DataBinder.Eval(Container,"DataItem.contact") %></span>
                           
                        </div>
                         <br />
                           
                          
                             <div class="col-sm-10 input-group">
                    <span class="input-group-addon">Query</span>
                               
                                  <asp:Label  ID="Label1" runat="server" CssClass="form-control" style="padding-top:1.5%" Text='<%# DataBinder.Eval(Container,"DataItem.query") %>' ></asp:Label>
             </div>
                          <br /> 
                                 <div class="col-sm-10 input-group">
                    <span class="input-group-addon">Answer:</span>
                               <asp:Label  ID="Label5" runat="server" CssClass="form-control" style="padding-top:1.5%" Text='<%# DataBinder.Eval(Container,"DataItem.ans_query") %>' ></asp:Label>
             </div>
                          <br />
                     
                  </ContentTemplate>
              </asp:UpdatePanel>
                         
                      </div>
                    </div>
                  </div>
                </div>
            <br/>
                
</ItemTemplate>
                    </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [query] WHERE ([email] = @email)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label100" PropertyName="Text" Name="email" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
            </section>
</asp:Content>

