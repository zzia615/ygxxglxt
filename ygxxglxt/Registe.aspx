<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registe.aspx.cs" Inherits="jsxxglxt.Registe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="员工编号"></asp:Label>
        <asp:TextBox ID="YGID" runat="server"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="教师编号不能为空" ForeColor="Red" ControlToValidate="ID" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="员工编号必须是8位的数字" ForeColor="Red" ControlToValidate="ID" EnableClientScript="false" OnServerValidate="CustomValidator1_ServerValidate" Display="Dynamic"></asp:CustomValidator>
    </div>
    
    <div>
        <asp:Label ID="Label2" runat="server" Text="姓名"></asp:Label>
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="姓名不能为空" ForeColor="Red" ControlToValidate="Name" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    
    <div>
        <asp:Label ID="Label3" runat="server" Text="月工资"></asp:Label>
        <asp:TextBox ID="Salary" runat="server"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="月工资不能为空" ForeColor="Red" ControlToValidate="Salary"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="月工资必须为数字" ForeColor="Red" ControlToValidate="Salary" EnableClientScript="false" Display="Dynamic" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="月工资范围2000-20000" ForeColor="Red" ControlToValidate="Salary" MinimumValue="2000" Display="Dynamic" MaximumValue="20000" Type="Double"></asp:RangeValidator>
    </div>

    <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click"/>
</asp:Content>
