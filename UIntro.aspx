<%@ Page Title="UIntro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UIntro.aspx.cs" Inherits="ASPBoard.UIntro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2>회원관리</h2>
        <h3>로그인 확인</h3>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="~/UUserInfo.aspx">정보보기
        </asp:HyperLink><br />
        <asp:Label ID="lblName" runat="server" ></asp:Label>님 반가워요!
</asp:Content>
