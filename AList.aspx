<%@ Page Title="AList" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AList.aspx.cs" Inherits="ASPBoard.AList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h2 align="center">앨 범</h2>
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" DataKeyField="no" DataSourceID="SqlDataSourceA">
            <ItemTemplate>
                <asp:Label Text='<%# Eval("title") %>' runat="server" ID="titleLabel" /><br />
               
              <a href =" <%# "AView.aspx?No=" + Eval("no") %>">
                  <img src="C:~/ASPBoard/photo/<%# Eval("fileurl") %>" width="190" height="200" />
              </a>
                <br /> <hr />
               <center>
                <asp:Label Text='<%# Eval("writedate") %>' runat="server" ID="writedateLabel" />
                </center> <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSourceA" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringA %>" ProviderName="<%$ ConnectionStrings:ConnectionStringA.ProviderName %>" SelectCommand="SELECT * FROM [AAlbum]"></asp:SqlDataSource>
        <hr />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnWrite" runat="server" Text="사진등록"  OnClick="btnWrite_Click"/>
</asp:Content>
