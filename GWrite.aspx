<%@ Page Title="GWrite" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GWrite.aspx.cs" Inherits="ASPBoard.GWrite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 상단 타이틀 -->
            <table border="0" width="600" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="center"><font size="3"><b> 게시판 글쓰기 </b></font></td>
                </tr>
                <tr><td><hr size="1" /></td></tr>
            </table>
<!-- 작성자 -->
            <table border="0" width="600" cellpadding="2" cellspacing="2">
                <tr>
                    <td width="100" bgcolor="cccccc" align="center">
                        <font size="2"><b>작성자</b></font>
                    </td>
                    <td><p>&nbsp;
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        * 필수 </p>
                    </td>
                </tr>
<!-- 비밀번호 -->
                <tr>
                    <td width="100" bgcolor="cccccc" align="center">
                        <font size="2"><b>비밀번호</b></font>
                    </td>
                    <td><p>&nbsp;
                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                            필수 (게시물 수정 삭제시 필요합니다.)</p>
                    </td>
                </tr>
<!-- 이메일 -->
                <tr>
                    <td width="100" bgcolor="cccccc" align="center">
                        <font size="2"><b>E-mail</b></font>
                    </td>
                    <td>
                        <font size="2">&nbsp;
                            <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>
                        </font>
                    </td>
                </tr>

                <tr><td colspan="2"><hr size="1" /></td></tr>

<!-- 글 제목 -->
                <tr>
                    <td width="100" bgcolor="cccccc" align="center">
                        <font size="2"><b>글 제목</b></font>
                    </td>
                    <td><font size="2">&nbsp;
                            <asp:TextBox ID="txtTitle" runat="server" Width="477px"></asp:TextBox>
                        </font></td>
                </tr>
<!-- 글내용 -->
                <tr>
                    <td bgcolor="cccccc" align="center">
                        <font size="2"><b>글 내용</b></font>
                    </td>
                    <td><font size="2">&nbsp;
                            <asp:TextBox ID="txtContents" runat="server" Width="487px" Height="276px"  TextMode="MultiLine"></asp:TextBox>
                        </font></td>
                </tr>

                <tr><td colspan="2"><hr size="1" /></td></tr>
<!-- 버튼 -->
                <tr>
                    <td align="right" colspan="2" width="100%">
                        <asp:Button ID="btnWrite" runat="server" Text="게시물 등록" OnClick="btnWrite_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnList" runat="server" Text="목록" OnClick="btnList_Click" />
                    </td>
                </tr>
            </table>
</asp:Content>
