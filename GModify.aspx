<%@ Page Title="GModify" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GModify.aspx.cs" Inherits="ASPBoard.GModify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <table border="0" width="600" cellpadding="0“" cellspacing="0">
<!-- 타이틀 -->               
                <tr><td align="center"><font size="3"><b> 게시판 	수정하기</b></font></td></tr>

                <tr><td><hr size="1" /></td></tr>
            </table>
<!-- 작성자 -->
            <table border="0" width="600" cellpadding="2" cellspacing="2">
                <tr>
                    <td width="100" bgcolor="cccccc" align="center">
                        <font size="2"><b>작성자</b></font></td>
                    <td><p>&nbsp; 
                        <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label></p></td>
                </tr>

                <tr><td colspan="2"><hr size="1" /></td></tr>
<!-- 글제목 -->
                <tr>
                    <td width="100" bgcolor="cccccc" align="center">
                        <font size="2"><b>글 제목</b></font></td>
                    <td><font size="2">&nbsp;
                        <asp:TextBox ID="txtTitle" runat="server" Width="477px"></asp:TextBox></font></td>
                </tr>
<!-- 글내용 -->
                <tr>
                    <td bgcolor="cccccc" align="center">
                        <font size="2"><b>글 내용</b></font></td>
                    <td><font size="2">&nbsp;
                        <asp:TextBox ID="txtContents" runat="server" Width="487px" Height="276px" TextMode="MultiLine"></asp:TextBox></font></td>
                </tr>

                <tr><td colspan="2"><hr size="1" /></td></tr>
<!-- 버튼 -->
                <tr>
                    <td align="right" colspan="2" width="100%">
                        <asp:Button ID="btnReset" runat="server" Text="수정 취소" OnClick="btnReset_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnWrite" runat="server" Text="게시물 수정" OnClick="btnWrite_Click" />
                    </td>
                </tr>
            </table>
</asp:Content>
