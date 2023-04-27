<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" CodeFile="a_manage_vendors.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <%-- Vendor Dashboard Menu--%>
      <asp:Label ID="Label100" runat="server" ></asp:Label>
      <section id="couple-profile" class="couple-profile-main-page">
    <div class="container">
      <div class="couple-profile-tabs general-nav-tabs tabs">
        <a href="admin_dashboard.aspx" class=" btn btn-default"><span class="badge">Dashboard</span></a>
        <a href="admin_view_orders.aspx" class=" btn btn-default"><span class="badge">View Orders</span></a>
        <a href="#" class="active btn btn-default"><span class="badge">Manage Vendors</span></a>
        <a href="a_manage_customers.aspx" class="btn btn-default"><span class="badge">Manage Customer</span></a>
       <a href="ans_query.aspx" class=" btn btn-default"><span class="badge">Queries</span></a>
     <a href="#" class="btn btn-default"><span class="badge">Verify vendor</span></a>
          
          <br />
          <br />
          <br />
             <div class="refine-search">
        <h4 class="refine-search-heading">Search Vendor</h4>
           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
          
           <div class="manage-item-listing-block" >
                
        <table>
          <tr class="top-heading-row">
            <th class="vendor-img" style="text-align:center">Image</th>
            <th class="title" style="text-align:center">Name</th>
            <th class="address" style="text-align:center">Email</th>
            <th class="price" style="text-align:center">Username</th>
            <th class="action-icons">Action</th>
          </tr>
          <asp:Repeater ID="Repeater1" runat="server"  >
          <ItemTemplate> 
              <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                 <ContentTemplate>
          <tr>
            <td class="vendor-img"><img src="<%# DataBinder.Eval(Container,"DataItem.photo") %>" class="img-responsive" alt="vendor-img"></td>
            <td class="title"><%# DataBinder.Eval(Container,"DataItem.name") %></td>
            <td class="address"><%# DataBinder.Eval(Container,"DataItem.email")%></td>
            <td class="price">
                  
                <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.username") %>'></asp:Label></td>
            <td class="action-icons">
              <div class="table-editable-icon">
              
                  <div class="uiverse">
    <span  data-toggle="modal" data-target="#login-model" >Delete</span>
 
</div>
</ContentTemplate>
 </asp:UpdatePanel>
                  <!-- Vertically centered modal -->
 <div class="modal fade login-model" id="login-model" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h5 class="modal-title text-center">CONFIRM ????</h5>
            </div>
            <div class="modal-body login-model-body text-center">
             
         
         
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
    
   
        
       
           <div class="col-sm-16">
               <asp:Label ID="Label2" runat="server" Text="Are you Sure??"></asp:Label>
           </div>
       <br />
          <div class="col-sm-16">     
        
               </div>
                       <br />
                     <div class="modal-footer">
          <button type="button" class="btn btn-success" style="  background: linear-gradient(320deg,  rgb(37, 150, 190),  rgb(37, 150, 190) );
  color: #ffffff" data-dismiss="modal">No</button>
            <asp:Button ID="Button1" runat="server" class="btn btn-pink " Text="Yes"  Height="34px" style="width:auto ; border-radius:4px;" onclick="Button1_click" />
                
  
                         </div>
                  
          
      
  

          
</ContentTemplate>
             </asp:UpdatePanel>
               

<!-- end register page -->
            </div>            
          </div>
        </div>
      </div>
                  <style>
.uiverse {
  position: relative;
  background: #FF4061;
  color: #fff;
  padding: 15px;
  margin: 10px;
  border-radius: 10px;
  width: 130px;
  height: 40px;
  font-size: 17px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
  cursor: pointer;
  transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.tooltip {
  position: absolute;
  top: 0;
  font-size: 14px;
  background: #ffffff;
  color: #ffffff;
  padding: 5px 8px;
  border-radius: 5px;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
  opacity: 0;
  pointer-events: none;
  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.tooltip::before {
  position: absolute;
  content: "";
  height: 8px;
  width: 8px;
  background: #ffffff;
  bottom: -3px;
  left: 50%;
  transform: translate(-50%) rotate(45deg);
  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.uiverse:hover .tooltip {
  top: -45px;
  opacity: 1;
  visibility: visible;
  pointer-events: auto;
}

svg:hover span,
svg:hover .tooltip {
  text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.1);
}

.uiverse:hover,
.uiverse:hover .tooltip,
.uiverse:hover .tooltip::before {
  background: linear-gradient(320deg, rgb(3, 77, 146), rgb(0, 60, 255));
  color: #ffffff;
}
      </style>
                  
                         
                
              </div>
            </td>
          </tr>
          </ItemTemplate>
        </asp:Repeater>
        </table>
      </div> 
         

      </div>


       

        </div> 
        </section>
  
        

       

     <%-- Vendor Dashboard Menu--%>
  
     
 
  
</asp:Content>

