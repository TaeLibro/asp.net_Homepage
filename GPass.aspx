<%@ Page Title="GPass" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GPass.aspx.cs" Inherits="ASPBoard.GPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <table border="0" width="600" cellpadding="0" cellspacing="0">
<!-- 타이틀 -->
                <tr><td align="center" colspan="2"><font size="3"><b>비밀번호 확인</b></font></td></tr>
<!-- === -->
                <tr><td colspan="2"><hr size="1" /></td></tr>
<!-- 비밀번호 -->
                <tr>
                    <td align="center"><font size="2"><B>비밀번호</B></font></td>
                    <td>&nbsp;
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>&nbsp;
                        <asp:Button ID="btnPass" runat="server" Text="확인" OnClick="btnPass_Click" />
                    </td>
                </tr>
<!-- === -->
                <tr><td colspan="2"><hr size="1" /></td></tr>
<!-- 버튼 -->
                <tr><td colspan="2" align="center">
                    <asp:Button ID="btnList" runat="server" Text="목록 보기" OnClick="btnList_Click" />
                </td></tr>

            </table>
</asp:Content>
