<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="applicationmanagement.aspx.cs" Inherits="E_MarkingOrderManagement.applicationmanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Text="APPLICATION APPROVAL HERE"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="All pending applications are listed Below:-"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" class="table table-bordered table-condensed table-responsive table-hover" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField HeaderText="Approval">
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField DataField="name_of_applicant" HeaderText="Applicant Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="application_id" HeaderText="Application ID">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="no_of_trees" HeaderText="Number of trees to be marked">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#00CC00" OnClick="Button1_Click" Text="Submit For Approval" Width="187px" />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sikkimforestmarkingorderDBConnectionString %>" SelectCommand="SELECT application_id, name_of_applicant, purpose, no_of_trees FROM testtable WHERE (approval = 'unapproved')"></asp:SqlDataSource>
    <br />
        </div>

</asp:Content>
