<%@ Page Title="" Language="C#" MasterPageFile="~/customerMasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    
    
    <tr>
        <td>Username:</td>
        <td>
          
            <asp:Label ID="Label1" runat="server"></asp:Label></td>
    </tr>
    <tr>
        <td>Image:</td>
        <td><asp:Image ID="Image1" runat="server" width="50px" Height="50px"/></td>
    </tr>
    <tr>
         <td>Profession:</td>
        <td>
            <asp:Label ID="Label3" runat="server" ></asp:Label>
        </td>
    </tr>
    <tr>
        <td>Work-Experience:</td>
<td>
        <asp:Label ID="Label4" runat="server"></asp:Label></td>
    </tr>
    <tr>
       <td>Category:</td>
        <td> 
        <asp:Label ID="Label5" runat="server"></asp:Label></td>
    </tr>
   <tr>
       <td>Course:</td>
       <td>
       <asp:Label ID="Label6" runat="server" ></asp:Label></td>
   </tr>
   
   <tr>
       <td>State:</td>
       <td>
       <asp:Label ID="Label7" runat="server"></asp:Label></td>
   </tr>
   <tr>
         <td>City:</td>
       <td><asp:Label ID="Label8" runat="server"></asp:Label></td>
   </tr>
   <tr>
       <td>Area:</td>
       <td><asp:Label ID="Label9" runat="server"></asp:Label></td>
   </tr>

    <tr>
       <td>Address</td>
       <td> <asp:Label ID="Label10" runat="server"></asp:Label></td>
    </tr>
   <tr>
       <td>Fee:</td>
      <td> <asp:Label ID="Label11" runat="server"></asp:Label></td>
   </tr>
     <tr>
          <td>Phone No:</td>
       <td>
         <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
   </tr>
   
   
    
    <tr>
        <td></td>
    </tr>
</table>
    <br />
   

</asp:Content>

