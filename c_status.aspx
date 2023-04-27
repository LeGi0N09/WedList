<%@ Page Title="Booking Status" Language="C#" MasterPageFile="~/customerMasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="c_status.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Label ID="Label100" runat="server" ></asp:Label>
     <section id="vendor-dashboard" class="vendor-dashboard-main-block">
    <div class="container">
      <ul class="vendor-dashboard-tabs general-nav-tabs tabs">
        <li><a href="customer_dashboard.aspx" class=" btn btn-default"><span class="badge">Dashboard</span></a></li>
        <li><a href="cutomer_profile.aspx" class="btn btn-default"><span class="badge">Profile</span></a></li>
        <li><a href="c_give_order.aspx" class="btn btn-default"><span class="badge">Give Order</span></a></li>
        <li><a href="c_ask_query.aspx" class="btn btn-default"><span class="badge">Ask Query</span></a></li>
     
        <li><a href="c_See_query.aspx" class=" btn btn-default"><span class="badge">See Queries</span></a></li>
      </ul>

           <div class="col-md-3">
          <div class="search-block">
            <form>
            <%--  <input type="search" class="form-control" id="search" placeholder="Search Here..."/>
              <a href="#"><i class="fa fa-search"></i></a>--%>
                <asp:TextBox ID="TextBox1" class="form-control" placeholder="Search Here..." runat="server"></asp:TextBox>
             <div style="margin-top:-13%;margin-right:13px"><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/search-interface-symbol.png" ImageAlign="Right" Height="25px" /></div> 
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
           


<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"  >
          <ItemTemplate> 
              

                  <div class="panel panel-default">
                  <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title to-do-list-heading">
                      <a role="button"  aria-expanded="true" >
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
  transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);">
        <%# DataBinder.Eval(Container,"DataItem.status") %>
    </span>

                     
                
                          
                      </a>
                    </h4>
                  </div>
                  <div class="panel-collapse collapse in" role="tabpanel" >
                    <div class="panel-body to-do-list-dtl">
                      <div class="row">
                        <div class="col-sm-9">
                       <span >Vendor's Email: <%# DataBinder.Eval(Container,"DataItem.vendor_email") %></span> <br /><br />


                         <span> Date:<%# DataBinder.Eval(Container,"DataItem.date") %></span></div>
                        <div class="col-sm-3">
                         <span>Contact no:<%# DataBinder.Eval(Container,"DataItem.contact") %></span><br /><br /><span>City:<%# DataBinder.Eval(Container,"DataItem.city") %></span></div>
                      </div>
                    </div>
                  </div>
                </div>
            
</ItemTemplate>
                    </asp:Repeater>

                

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [booking] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label100" Name="email" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                

            </div>
          </div>
        </div>

        </div>
            </section>

</asp:Content>

