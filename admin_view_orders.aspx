<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="admin_view_orders.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%-- Vendor Dashboard Menu--%>
      <asp:Label ID="Label100" runat="server" ></asp:Label>
      <section id="couple-profile" class="couple-profile-main-page">
          
    <div class="container">
      <div class="couple-profile-tabs general-nav-tabs tabs">
        <a href="admin_dashboard.aspx" class=" btn btn-default"><span class="badge">Dashboard</span></a>
        <a href="#" class="active btn btn-default"><span class="badge">View Orders</span></a>
        <a href="a_manage_vendors.aspx" class="btn btn-default"><span class="badge">Manage Vendors</span></a>
        <a href="a_manage_customers.aspx" class="btn btn-default"><span class="badge">Manage Customer</span></a>
          <a href="ans_query.aspx" class=" btn btn-default"><span class="badge">Queries</span></a>
      <%-- 
        <a href="#" class="btn btn-default"><span class="badge">Real Wedding</span></a>--%>
      </div>
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


<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"   >
          <ItemTemplate> 
         

                  <div class="panel panel-default">
                  <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title to-do-list-heading">
                      <a role="button"  aria-expanded="true" >
                    <spam>Vendor Email: <%# DataBinder.Eval(Container,"DataItem.Vendor_email") %></spam>  
                        
            
               
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
  transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);" >
       
         <%# DataBinder.Eval(Container,"DataItem.status") %>
           
       
    </span>
       
                      </a>
                    </h4>
                  </div>
                  <div class="panel-collapse collapse in" role="tabpanel" >
                    <div class="panel-body to-do-list-dtl">
                      <div class="row">
                        <div class="col-sm-9">
                          <span > Customer Name: <%# DataBinder.Eval(Container,"DataItem.customer_name") %></span> <br /><br />
                       <span > Email: <%# DataBinder.Eval(Container,"DataItem.email") %></span> <br /><br />


                         <span> Date:<%# DataBinder.Eval(Container,"DataItem.date") %></span></div>
                        <div class="col-sm-3">
                         <span>Contact no:<%# DataBinder.Eval(Container,"DataItem.contact") %></span><br /><br /><span>City:<%# DataBinder.Eval(Container,"DataItem.city") %></span></div>
                      </div>
                    </div>
                  </div>
                </div>
                  
              
</ItemTemplate>
                    </asp:Repeater>
     

                    
                
                          
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [booking]">
                    </asp:SqlDataSource>
                
            </div>
          </div>
        </div>
        </div>
        </section>

     <%-- Vendor Dashboard Menu--%>
    
</asp:Content>

