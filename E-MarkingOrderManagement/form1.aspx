<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="form1.aspx.cs" Inherits="E_MarkingOrderManagement.form1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="main%20css/application.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
   <div class="container">
       <div class="row">
           <div class="col-md-8 mx-auto">
               <div class="card" style="border:0px;">
                   <div class="card-body" style="margin-bottom: 125px;">

                       <div class="row">
                           <div class="col">
                               <center>
                                   <h1> Application Form(Form-1)</h1>
                               </center>
                           </div>
                       </div>

                        <div class="row">
                           <div class="col">
                               <center>
                                   <h3> Please fill the form given below</h3>
                               </center>
                           </div>
                       </div>

                       <div class="row">
                           <div class="col-md-6">
                               <label>Full Name</label>
                                 <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1"  runat="server" placeholder="Full Name"></asp:TextBox>
                                  </div>
                           </div>
                            <div class="col-md-6">
                               <label>Father's Name</label>
                                  <div class="form-group">
                                         <asp:TextBox CssClass="form-control" ID="TextBox2"  runat="server" placeholder="Father's Name"></asp:TextBox>
                                   </div>
                             </div>    
                       </div>
                       
                       <div class="row">
                           <div class="col-md-6">
                               <label>Permanent Address</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox3"  runat="server" placeholder="Permanent Address"></asp:TextBox>
                               </div>
                           </div>
                           <div class="col-md-6">
                               <label>Residential Address</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox4"  runat="server" placeholder="Residential Address"></asp:TextBox>
                               </div>
                           </div>
                       </div>

                       <div class="row">
                           <div class="col-md-6">
                               <label>Phone No.</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox5" pattern=[0-9]{0,12}$ runat="server" placeholder="Phone/Mobile Number"></asp:TextBox>
                               </div>
                           </div>
                           <div class="col-md-6">
                               <label>Email-Id</label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox6" pattern=[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$ runat="server" placeholder="Email Id"></asp:TextBox>
                           </div>
                       </div>

                       <div class="row">
                           <div class="col-md-3">
                               <label>Number of Trees</label>
                               <div class="form-group">
                                   <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                       <asp:ListItem Text="Select" Value="select" />
                                       <asp:ListItem Text="2 or less" Value="2" />
                                       <asp:ListItem Text="4 or less" Value="4" />
                                       <asp:ListItem Text="8 or less" Value="8" />
                                       <asp:ListItem Text="10 or more" Value="10" />
                                   </asp:DropDownList>
                               </div>
                           </div>
                           <div class="col-md-3">
                                <label>District</label>
                                <div class="form-group">
                                     <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                                       <asp:ListItem Text="Gangtok" Value="Gangtok" />
                                      
                                     </asp:DropDownList>
                                </div>
                            </div>
                           <div class="col-md-3">
                                <label>Division</label>
                                <div class="form-group">
                                     <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server">
                                       <asp:ListItem Text="Gangtok" Value="Gangtok" />
                                       
                                     </asp:DropDownList>
                                </div>
                            </div>
                           <div class="col-md-3">
                                <label>Range</label>
                                <div class="form-group">
                                     <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server">
                                       <asp:ListItem Text="Gangtok" Value="Gangtok" />
                                       
                                     </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                           <div class="col-md-6">
                               <label>Reason for felling of tree/trees</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox9"  runat="server" placeholder="Enter reason for tree/trees felling here" TextMode="MultiLine"></asp:TextBox>
                               </div>
                           </div>
                           <div class="col-md-6">
                               <label>Purpose</label>
                                   <div class="form-group">
                                     <asp:DropDownList ID="DropDownList5" CssClass="form-control" runat="server">
                                       <asp:ListItem Text="Select" Value="select" />
                                       <asp:ListItem Text="Commercial Use" Value="Commercial" />
                                       <asp:ListItem Text="Domestic Use" Value="Domestic" />
                                       <asp:ListItem Text="firewood" Value="firewood" />
                                     </asp:DropDownList>
                                </div>
                           </div>
                       </div>

                       <div class="row">
                           <div class="col-md-6">
                               <label>Was last produce commercialized ?</label>
                               <div class="form-group">
                                   <asp:DropDownList ID="DropDownList7" CssClass="form-control" runat="server">
                                       <asp:ListItem Text="Select" Value="select" />
                                       <asp:ListItem Text="Yes" Value="true" />
                                       <asp:ListItem Text="No" Value="false" />
                                     </asp:DropDownList>
                               </div>
                           </div>
                           <div class="col-md-6">
                               <label>Place of use of the last/previous produce</label>
                                   <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="place of last produce use" TextMode="MultiLine"></asp:TextBox>
                                </div>
                           </div>
                       </div>

                       <div class="row">
                           <div class="col-md-4">
                               <label>Will the produce be used by the applicant ?</label>
                               <div class="form-group">
                                   <asp:DropDownList ID="DropDownList6" CssClass="form-control" runat="server">
                                       <asp:ListItem Text="Select" Value="select" />                                       
                                       <asp:ListItem Text="Yes" Value="true" />
                                       <asp:ListItem Text="No" Value="false" />
                                     </asp:DropDownList>
                               </div>
                           </div>
                           <div class="col-md-4">
                               <label>If No then please enter the name of the produce user</label>
                                   <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Enter Name" ></asp:TextBox>
                                </div>
                           </div>
                           <div class="col-md-4">
                               <label>Relation with the applicant</label>
                               <div class="form-group">
                                   <asp:DropDownList ID="DropDownList8" CssClass="form-control" runat="server">
                                       <asp:ListItem Text="Select" Value="select" />                                       
                                     </asp:DropDownList>
                               </div>
                       </div> 
                     </div>

                       <div class="row">
                           <div class="col-md-6">
                               <label>Name of nearest forest nursery</label>
                                 <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Enter Name of nearest forest nursery"></asp:TextBox>
                                  </div>
                           </div>
                           <div class="col-md-6">
                        <label>Date of last marking order</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="date" TextMode="Date"></asp:TextBox>
                        </div>
                        </div>
                        </div>
                         
                        <div class="row">
                            <div class="col">
                                 <div class="form-group">
                                     <center>
                                     <asp:Button class="btn btn-success btn-block btn-lg" style="margin-top:10px;" ID="ButtonSignup" runat="server" Text="Submit" OnClick="Button_Signup" />
                                     </center>
                                  </div>
                            </div>
                        </div>
                       <br>
                       <center>
                       <a href="home.aspx">Back to home page</a>
                       </center>
               </div>
               
           </div>
       </div>
   </div>
  </div>
</div>
</asp:Content>
