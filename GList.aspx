<%@ Page Title="GList" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GList.aspx.cs" Inherits="ASPBoard.GList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table border="0" width="600" cellpadding="0" cellspacing="0">
                <tr><td align="center"><font size="3"><b> 게시판</b></font></td></tr>
                <tr><td><hr size="1" /></td></tr>
            </table>

            <asp:GridView ID="GridView1" runat="server"
                AutoGenerateColumns="False"
                DataKeyNames="num" DataSourceID="SqlDataSourceG"
                BackColor="White" BorderColor="#999999"
                BorderStyle="None" BorderWidth="1px" CellPadding="3"
                GridLines="Vertical" Width="600px">
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <Columns>
                    <asp:BoundField DataField="num" HeaderText="No."
                        InsertVisible="False" ReadOnly="True"
                        SortExpression="num">
                        <HeaderStyle Width="30px" />
                    </asp:BoundField>

                    <asp:TemplateField HeaderText="제목">
                        <ItemTemplate>
                            <a href="<%# "GView.aspx?Num=" + Eval("num") %>">
                                <%# Eval("Title") %></a>
                        </ItemTemplate>
                        <HeaderStyle Width="250px" />
                    </asp:TemplateField>

                    <asp:BoundField DataField="name" HeaderText="이름" SortExpression="name">
                        <HeaderStyle Width="80px" />
                    </asp:BoundField>

                    <asp:BoundField DataField="writedate" HeaderText="올린 날짜" SortExpression="writedate">
                        <HeaderStyle Width="200px" />
                    </asp:BoundField>

                    <asp:BoundField DataField="readcount" HeaderText="조회수" SortExpression="readcount">
                        <HeaderStyle Width="60px" />
                    </asp:BoundField>
                </Columns>

                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="#DCDCDC" />
            </asp:GridView>
                        
            
                        
            <asp:SqlDataSource ID="SqlDataSourceG" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringG %>" ProviderName="<%$ ConnectionStrings:ConnectionStringG.ProviderName %>" SelectCommand="SELECT * FROM [GBoard]"></asp:SqlDataSource>
                        
            
                        
            <table border="0" width="600" cellpadding="0" cellspacing="0">
                <tr><td><hr size="1" /></td></tr>
            </table>

            <table border="0" width="600">
        <tr>
            <td align="left">
                <asp:DropDownList ID="drdwSearch" runat="server">
                    <asp:ListItem Value="title">제목</asp:ListItem>
                    <asp:ListItem Value="name">작성자</asp:ListItem>
                    <asp:ListItem Value="contents">내용</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="검색" OnClick="btnSearch_Click" />
            </td>
            <td align="right">
                <asp:Button ID="Button1" runat="server" Text="글쓰기" OnClick="btnWrite_Click" />
            </td></tr>
    </table>
</asp:Content>
