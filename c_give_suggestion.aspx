<%@ Page Title="" Language="C#" MasterPageFile="~/customerMasterPage.master" AutoEventWireup="true" CodeFile="c_give_suggestion.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <%-- Customer Dashboard Menu--%>
    <asp:Label ID="Label100" runat="server" ></asp:Label>
      <section id="vendor-dashboard" class="vendor-dashboard-main-block">
    <div class="container">
      <ul class="vendor-dashboard-tabs general-nav-tabs tabs">
        <li><a href="customer_dashboard.aspx" class=" btn btn-default"><span class="badge">Dashboard</span></a></li>
        <li><a href="cutomer_profile.aspx" class="btn btn-default"><span class="badge">Profile</span></a></li>
        <li><a href="c_give_order.aspx" class="btn btn-default"><span class="badge">Search Vendor</span></a></li>
        <li><a href="c_ask_query.aspx" class="btn btn-default"><span class="badge">Ask Query</span></a></li>
        
        <li><a href="c_See_query" class="btn btn-default"><span class="badge">See Queries</span></a></li>
      </ul>
        </div>
            </section>

     <%-- Vendor Dashboard Menu--%>
</asp:Content>

