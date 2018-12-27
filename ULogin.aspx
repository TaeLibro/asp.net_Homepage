<%@ Page Title="ULogin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ULogin.aspx.cs" Inherits="ASPBoard.ULogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>회원 관리</h1>
        <h3>로그인</h3>
        아이디:<asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="아이디를 입력하세요." ControlToValidate="txtUserID">
    </asp:RequiredFieldValidator><br />
        암호: <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="암호를 입력하세요." ControlToValidate="txtPassword">
    </asp:RequiredFieldValidator><br />
        <asp:Button ID="btnLogin" runat="server" Text="로그인"  OnClick ="btnLogin_Click"/>
</asp:Content>
