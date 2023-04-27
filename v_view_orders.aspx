<%@ Page Title="View Orders" Language="C#" MasterPageFile="~/Vendormasterpage.master" AutoEventWireup="true" EnableEventValidation="false"  CodeFile="v_view_orders.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%-- Vendor Dashboard Menu--%>

    <asp:Label ID="Label100" runat="server" ></asp:Label>
      <section id="vendor-dashboard" class="vendor-dashboard-main-block">
    <div class="container">
      <ul class="vendor-dashboard-tabs general-nav-tabs tabs">
        <li><a href="vendor_dashboard.aspx" class="btn btn-default"><span class="badge">Dashboard</span></a></li>
        <li><a href="vendor_profile.aspx" class="btn btn-default"><span class="badge">Profile</span></a></li>
        <li><a href="#" class="active btn btn-default"><span class="badge">View Orders</span></a></li>
       
        <li><a href="read_suggetion.aspx" class="btn btn-default"><span class="badge">Review</span></a></li>
        <li><a href="#" class="btn btn-default"><span class="badge">My Wishlist</span></a></li>
      </ul>
        
        <div class="col-md-3">
          <div class="search-block">
            <form>
              <input type="search" class="form-control" id="search" placeholder="Search Here..."/>
              <a href="#"><i class="fa fa-search"></i></a>
            </form>
          </div>
          <div class="faq-nav-list">
            <h6 class="faq-nav-heading">Order</h6>
            <ul>
              <li><a href="#" class="active">All Order</a></li>
              <li><a href="#">Pending</a></li>
              <li><a href="#">Completed</a></li>
              
            </ul>
          </div>
            
        </div>
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="col-md-9">
          <div class="faq-block">
            <div class="panel-group faq-panel" id="accordion" role="tablist" aria-multiselectable="true">
             <%-- <div class="panel panel-default">
                
                  <table style="width:100%">
                      <tr>
                          <th ><h6 style="margin:5% 0% 5% 5%">Customer Name</h6> </th>
                          <th ><h6 style="margin:0% 0% 2% 5%">Email</h6></th>
                          <th ><h6 style="margin:0% 0% 0% 5%">Contact</h6></th>
                          <th ><h6 style="margin:0% 0% 0% 5%">Date</h6></th>
                          <th ><h6 style="margin:0% 0% 0% 5%">City</h6></th>
                          <th ><h6 style="margin:0% 0% 0% 5%">Status</h6></th>
                      </tr>
                  </table>
                  
              </div>--%>


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
                      <a aria-expanded="true" >
                    <spam>Customer Name:  <%# DataBinder.Eval(Container,"DataItem.customer_name") %></spam>  
                   
                
    <span style=" 
  background: #FF4061;
  color: #fff;
  padding-top:0.5%;
  border-radius: 10px;
  width: 100px;
  height: 30px;
  font-size: 17px;
 
  justify-content: center;
  text-align: center;
  flex-direction: column;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
  cursor: pointer;
  transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);"  data-toggle="modal" data-target="#assign-model">
        <%# DataBinder.Eval(Container,"DataItem.status") %>
    </span>

 <div class="modal fade assign-model" id="assign-model" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content"> 
                
        
            <div class="modal-header">
          <h5 class="modal-title" id="assignOrderModalLabel">Assign Order</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div  >
        <div class="modal-body">
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
         
            <div class="form-group">
              <label for="assignedTo">Customer name:</label>
              <label class="form-control"><%# DataBinder.Eval(Container,"DataItem.customer_name") %></label>
            </div>
            <div class="form-group">
              <label for="dueDate">Due Date:</label>
                           <label class="form-control" ><%# DataBinder.Eval(Container,"DataItem.date") %></label>

            </div>
              <div class="form-group">
              <label for="assignedTo">Vendor's Email:</label>
              <label class="form-control"><%# DataBinder.Eval(Container,"DataItem.vendor_email") %></label>
                 <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Vendor_email") %>' Visible="false"></asp:Label>
            </div>
              <div class="form-group">
              <label for="assignedTo">Customer no:</label>
              <label class="form-control"><%# DataBinder.Eval(Container,"DataItem.contact") %></label>
            </div>
              <div class="form-group">
              <label for="assignedTo">Status:</label>
                  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" >
                <asp:ListItem>PENDING</asp:ListItem>
                 <asp:ListItem>Completed</asp:ListItem>
                <asp:ListItem>CANCEL</asp:ListItem> 
            </asp:DropDownList>
            </div>
             <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.email") %>' Visible="false"></asp:Label>
             
          <%--   <asp:Label ID="Label3" CssClass="alert alert-info" runat="server"  Visible="false" Text='<%# DataBinder.Eval(Container,"DataItem.status") %>'> </asp:Label>
            <br />
            <br /> --%>      
             </ContentTemplate>
                 </asp:UpdatePanel>
        </div>     
        
             <div class="modal-footer">  
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Save Change" Height="34px" Width="130px" style=" border-radius:4px" OnClick="Button1_Click"/>     
          </div>     
     
    
             </div>             
                
                          
                      </a>
                    </h4>
                  </div>
                  <div class="panel-collapse collapse in" role="tabpanel" >
                    <div class="panel-body to-do-list-dtl">
                      <div class="row">
                        <div class="col-sm-9">
                       <span > Email: <%# DataBinder.Eval(Container,"DataItem.email") %></span> <br /><br />


                         <span> Date:<%# DataBinder.Eval(Container,"DataItem.date") %></span>
                            <br />
                            <br /> 
                            <span> Message:<%# DataBinder.Eval(Container,"DataItem.message") %></span> 
                        </div>
                        <div class="col-sm-3">
                         <span>Contact no:<%# DataBinder.Eval(Container,"DataItem.contact") %></span><br />
                            <br />

                          <span>City:<%# DataBinder.Eval(Container,"DataItem.city") %></span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            
</ItemTemplate>
                    </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [booking] WHERE ([vendor_email] = @vendor_email)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label100" PropertyName="Text" Name="vendor_email" Type="String"></asp:ControlParameter>

                        </SelectParameters>
                    </asp:SqlDataSource>

            </div>
          </div>
        </div>

        </div>
          

          

            </section>

     <%-- Vendor Dashboard Menu--%>

    
</asp:Content>

