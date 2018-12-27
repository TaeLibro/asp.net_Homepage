<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPBoard._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
    </div>
        <div>
            <br /><hr /><br />
            <table>
                <tr><td>
                            <asp:Panel ID="Panel1" runat="server" Title="주요일정" Width="400">
                                - 12 / 24 (월) 종강 <br />
                                - 12 / 25 (화) 크리스마스 <br />
                            </asp:Panel>
                </td><td width="50">
                </td><td>
                            <asp:Calendar ID="Calendar1" runat="server" Width="250"></asp:Calendar>
                </td></tr>
            </table>
        </div>
</asp:Content>
