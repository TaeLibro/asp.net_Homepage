<%@ Page Title="GView" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GView.aspx.cs" Inherits="ASPBoard.GView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 타이틀 -->
            <table border="0" width="600" cellpadding="0" cellspacing="0">
                <tr><td align="center"><font size="3"><b> 게시판 글보기 </b></font></td></tr>
                <tr><td><hr size="1" /></td></tr>
            </table>
<!-- 상단바 -->
            <table border="0" width="600">
                <tr>
                    <td align="left"><font size="2"> 
                        작성자 : <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label></font>
                    </td>

                    <td align="right"><font size="2">
                        작성일: <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>,&nbsp; 
                        조회수: <asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label>
                    </font></td>
                </tr>
            </table>
<!-- === -->
            <table border="0" cellspacing="3" cellpadding="3" width="600">
                <tr bgcolor="cccccc"><td align="center">
                        <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
                </td></tr>
            </table>
<!-- 내용 -->
            <table border="0" cellspacing="5" cellpadding="10" width="600">
                <tr bgcolor="ededed"><td>
                        <asp:TextBox ID="txtContents" runat="server" Height="184px" ReadOnly="True" TextMode="MultiLine" Width="567px"></asp:TextBox>
                </td></tr>
            </table>
<!-- === -->
            <table border="0" cellspacing="5" cellpadding="10" width="600">
                <tr><td colspan="2"><hr size="1" /></td></tr>
<!-- 버튼 -->
                <tr>
                    <td align="left" width="50%">
                        <asp:Button ID="btnUpdate" runat="server" Text="수정" onclick="btnUpdate_Click" />&nbsp;
                        <asp:Button ID="btnDelete" runat="server" Text="삭제" onclick="btnDelete_Click" />
                    </td>
                    <td align="right" width="50%">
                        <asp:Label ID="lblRefer" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblDepth" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblPos" runat="server" Visible="False"></asp:Label>
                        <asp:Button ID="btnReply" runat="server" Text="답변 등록" onclick="btnReply_Click" />
                        &nbsp;
                        <asp:Button ID="btnList" runat="server" Text="목록보기" onclick="btnList_Click" />
                    </td>
                </tr>
            </table>
</asp:Content>
