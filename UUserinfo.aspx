<%@ Page Title="UUserinfo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UUserinfo.aspx.cs" Inherits="ASPBoard.UUserinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1>회원관리</h1>
        <h3>회원 정보보기</h3>
        UID:<asp:Label ID="lblUID" runat="server" ></asp:Label><br />
        아이디:<asp:Label ID="txtUserId" runat="server"></asp:Label><br />
        암호:<asp:Label ID="txtPassword" runat="server"></asp:Label><br />
        <asp:Button ID="btnModify" runat="server" Text="정보 수정"  OnClick="btnModify_Click"/>
</asp:Content>
