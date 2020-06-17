<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowInfo.aspx.cs" Inherits="jsxxglxt.ShowInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="员工编号" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
            <asp:BoundField DataField="Salary" HeaderText="月工资" SortExpression="Salary" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='server=192.168.1.105,9443;uid=sa;pwd=JL@881103l;database=ygxxglxt' ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [EmployeeInfo]">
    </asp:SqlDataSource>
</asp:Content>
