<%@ Page Title="AView" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AView.aspx.cs" Inherits="ASPBoard.AView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 1048px">
        <h2 align="center">앨범보기</h2>
        작성자 : <asp:Label ID="lblName" runat="server" ></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        작성일 : <asp:Label ID="lblDate" runat="server" ></asp:Label>
        조회수 : <asp:Label ID="lblCount" runat="server" ></asp:Label>
        <br />
        파일이름:<asp:Label ID="lblFileName" runat="server" Text="Label"></asp:Label>
    <hr />
        <p align = "center">
        <asp:Label ID="lblTitle" runat="server" ></asp:Label>
        </p>
        <hr />
        <asp:Image ID="Image1" runat="server" width="400px" Height="400px"/>
    <br />
        <asp:TextBox ID="txtContents" runat="server" TextMode ="MultiLine" Height ="161px" Width ="1015px"></asp:TextBox>
    <hr />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnList" runat="server" Text="목록보기"  OnClick="btnList_Click"/>
    
    </div>
    <table>
        <tr>
        <td width="100" bgcolor="cccccc" align="center"><font size="2"><b>작성자</b></font></td>
        <td><asp:TextBox ID="txtReName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
        <td width="100" bgcolor="cccccc" align="center"><font size="2"><b>한줄 댓글</b></font></td>
        <td width="400">
        <asp:TextBox ID="txtComment" runat="server" Width="397px"></asp:TextBox>
        </td>
        <td>
        <asp:Button ID="btnComment" runat="server" Text="댓글등록" OnClick="btnComment_Click" />
        </td>
        </tr>
        </table>
        <br />
        <table border="0" cellspacing="5" cellpadding="10" width="600">
            <asp:Repeater ID="Repeater" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
            <tr bgcolor="cccccc">
            <td>
            <%# Eval("name") %> :
            <%# Eval("contents") %> [<%# Eval("writedate") %>]
                
            </td>
            </tr>
            </ItemTemplate>
            </asp:Repeater>
         </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="Selection" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AComment] WHERE [id] = @id">
            <SelectParameters>
                <asp:Parameter Name ="id" Type="String" />    
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
