<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="applicationstatus.aspx.cs" Inherits="E_MarkingOrderManagement.applicationstatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card" style="margin-top: 60px;">
                 <div class="card-body">
                     <div class="row">
                         <div class="col">
                            <center>
                               <h3>Check Application Status</h3>
                            </center>
                         </div>
                      </div>
                     <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Phone Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                        </div>
                         <br>
                        <div class="form-group d-grid gap-2 col-6 mx-auto">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="ButtonStatus" runat="server" Text="Submit" OnClick="ButtonStatus_Click" />
                        </div>
                     </div>
                  </div>
                     <div class="row">
                         <div class="col-md-6">
                           <label>Your Application ID</label>
                                <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=""></asp:TextBox>
                                </div>
                         </div>
                         <div class="col-md-6">
                           <label>Your Application Status</label>
                                <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder=""></asp:TextBox>
                                </div>
                         </div>
                     </div>
                 </div>
                </div>
                 <center>
                        <a href="home.aspx">>>Back to home page</a>
                 </center>
                <br>
                <br>

             </div>
          </div>
       </div>
</asp:Content>
