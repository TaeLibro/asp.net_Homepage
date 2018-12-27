<%@ Page Title="AWrite" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AWrite.aspx.cs" Inherits="ASPBoard.AWrite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 align="center">게시판 글쓰기</h2>
        작성자 <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
        사진등록 <asp:FileUpload ID="FileUpload1" runat="server" />
        <hr />
        사진제목 <asp:TextBox ID="txtTitle" runat="server" Width="652px"></asp:TextBox><br />
        사진내용 <asp:TextBox ID="txtContents" runat="server" Height="369px" Width="654px"></asp:TextBox>
        <br /><hr />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <asp:Button ID="btnWrite" runat="server" Text="사진등록"  OnClick="btnWrite_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnList" runat="server" Text="목록"  OnClick="btnList_Click"/>
</asp:Content>
