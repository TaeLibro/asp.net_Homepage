<%@ Page Title="URegister" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="URegister.aspx.cs" Inherits="ASPBoard.URegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
아이디 : <asp:TextBox ID="txtID" runat="server"></asp:TextBox> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="아이디를 입력하세요" ControlToValidate="txtID">
    </asp:RequiredFieldValidator>
    <br />
    비밀번호 : <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="암호를 입력하세요" ControlToValidate="txtPassword">
    </asp:RequiredFieldValidator>
    <br />
        <asp:Button ID="Button1" runat="server" Text="회원가입"  OnClick="Button1_Click"/>
</asp:Content>
