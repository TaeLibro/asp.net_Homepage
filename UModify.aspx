<%@ Page Title="UModify" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UModify.aspx.cs" Inherits="ASPBoard.UModify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    정보수정 [수정할 정보를 입력하시오]<br />
        <br />
        UID :
        <asp:Label ID="lblUID" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        ID : <asp:TextBox ID="ID" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="아이디를 입력하세요" ControlToValidate="ID">
    </asp:RequiredFieldValidator>
        <br /><br />
        PW :
        <asp:TextBox ID="PW" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="암호를 입력하세요" ControlToValidate="PW">
    </asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button ID="modify" runat="server" OnClick="modify_Click" Text="입력" />
</asp:Content>
