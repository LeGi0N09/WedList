<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thank.aspx.cs" Inherits="Default2"  EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!-- Thank page -->
	<section class="main-container">
		<div class="container text-center">
			<asp:Image ID="Image1" runat="server" Height="186px" ImageUrl="~/images/thank.png" Width="396px" />
            <br />
            <br />
			<div class="error-sub-heading">Customer Registration Succesfully done.</div>
      <a href="Default.aspx" class="btn btn-pink">Back To Home</a> &nbsp; <a href="#" data-toggle="modal" data-target="#login-model" class="btn btn-pink">Log In</a>
		</div>

    
		
	</section>
<!-- Thank page -->
</asp:Content>

