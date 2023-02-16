<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="E_MarkingOrderManagement.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:225px;">
        <div class="row">
            <div class="col-md-8-mx-auto">
                <div class="card-body" >
                    <div class="row">
                        <div class="col">
                            <center>
                                <p class="font-italic" style="color:red;">*Click the following links to go to the respective pages.</p>
                                <p class="font-italic" style="color:red;">*The first button will take the applicant to the application form where he/she will fill out the details for the marking order application</p>
                                <p class="font-italic" style="color:red;">*The second button is to check whether the application status is approved or not</p>

                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>

                                <a href="form1.aspx"<button type="button" class="btn btn-success btn-lg">Click For Applicantion Form</button></a>
                            </center>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col">
                            <center>
                                <a href="applicationstatus.aspx"><button type="button" class="btn btn-success btn-lg">Click For Application Status</button></a>
                            </center>
                        </div>
                    </div>
                   <br>
                   <br>
                    <center>
                        <a href="adminlogin.aspx"> >>Admin Login</a>
                    </center>
                    
                </div>
                
            </div>
        </div>

    </div>
</asp:Content>
