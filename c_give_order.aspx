<%@ Page Title="give_order" Language="C#" MasterPageFile="~/customerMasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="c_give_order.aspx.cs" Inherits="Default2" %>

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
        <li><a href="#" class="active btn btn-default"><span class="badge">Give Order</span></a></li>
        <li><a href="c_ask_query.aspx" class="btn btn-default"><span class="badge">Ask Query</span></a></li>

       <li><a href="c_See_query.aspx" class=" btn btn-default"><span class="badge">See Queries</span></a></li>
      </ul>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
           
  <div class="refine-search">
        <h4 class="refine-search-heading">Search Vendor</h4>
        <form>
          <div class="form-group"> 
               
            <div class="row">
               <asp:UpdatePanel runat="server">
                <ContentTemplate>
              <div class="col-md-3 col-sm-6">
                <div class="select-category-dropdown dropdown">
                  
                  <asp:DropDownList ID="DropDownList2" Class="form-control" runat="server" RepeatDirection="Horizontal" AutoPostBack="true">
                         <asp:ListItem Selected="True">Select Category</asp:ListItem>
                      <asp:ListItem >BAND/DJ</asp:ListItem>
                         <asp:ListItem>CATERER</asp:ListItem>
                         <asp:ListItem>DECORATOR</asp:ListItem>
                         <asp:ListItem>EVENTPLANNER</asp:ListItem>
                         <asp:ListItem>FLORIST</asp:ListItem>
                         <asp:ListItem>HOSPITALITY STAFF</asp:ListItem>
                         <asp:ListItem>PANDIT</asp:ListItem>
                         <asp:ListItem>PHOTOGRAPHER</asp:ListItem>
                        </asp:DropDownList>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="select-city-dropdown dropdown">
                  <asp:DropDownList ID="DropDownList3" Class="form-control" runat="server" RepeatDirection="Horizontal" DataSourceID="SqlDataSource1" DataTextField="subcategory" DataValueField="subcategory">
                        </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [subcategory] FROM [subcategory] WHERE ([category] = @category)">
                            <SelectParameters>
                              <asp:ControlParameter ControlID="DropDownList2" Name="category" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                         </asp:SqlDataSource>
                </div>
              </div>
                </ContentTemplate>
                   </asp:UpdatePanel>
              <div class="col-md-3 col-sm-6">
                  <asp:DropDownList ID="DropDownList4"  Class="form-control"  runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem>Select your City </asp:ListItem>
                    <asp:ListItem>Ahmedabad</asp:ListItem>
                    <asp:ListItem>Surat</asp:ListItem>
                    <asp:ListItem>Vadodra</asp:ListItem>
                     </asp:DropDownList>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="search-btn">
                  <asp:Button ID="Search" class="btn btn-pink" text="Search" runat="server" OnClick="Search_Click" />

                </div>
              </div>

               
            </div>
                  
          </div>
              </div>
        <br />
          <br />
  <br />
  <br />

        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <div class="col-md-3 col-sm-3">
            <div class="category-listing-section" >
              <div class="category-listing-dtl" >
                <div class="category-listing-img" >
                  <a href="view_vendor_detail.aspx?username=<%# DataBinder.Eval(Container,"DataItem.username") %>"><img src="<%# DataBinder.Eval(Container,"DataItem.photo") %>"  class="img-responsive"   alt="category-img"></a>
                </div>
                <div class="category-info">
                  <h6 class="category-dtl-heading"><a href="view_vendor_detail.aspx?username=<%# DataBinder.Eval(Container,"DataItem.username") %>"><%# DataBinder.Eval(Container,"DataItem.name") %></a></h6>
                  <div class="category-dtl-address"><i class="fa fa-building-o" aria-hidden="true"></i>  <%# DataBinder.Eval(Container,"DataItem.companyname") %></div>
                </div>
              </div>
              <div class="category-listing-text">
                <div class="row">
                  <div class="col-md-6">
                    <div class="category-text-heading">
                      <a href="view_vendor_detail.aspx?username=<%# DataBinder.Eval(Container,"DataItem.username") %>"">View Profile</a>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="category-price text-right">₹ <%# DataBinder.Eval(Container,"DataItem.charge") %></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
            </ItemTemplate>
        </asp:Repeater>
      </div>
               
      
       
            </section>
  
     <%-- Vendor Dashboard Menu--%>
</asp:Content>

