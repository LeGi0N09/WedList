<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">404</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li class="active">404</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- error 404 page -->
	<section class="main-container">
		<div class="container text-center">
			<h1 class="error-heading">4<span>0</span>4</h1>
			<div class="error-sub-heading">Page not found</div>
      <a href="Default.aspx" class="btn btn-pink">Back To Home</a>
		</div>
	</section>
<!-- end error 404 page -->
</asp:Content>