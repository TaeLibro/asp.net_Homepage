<%@ Page Title="UDefault" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UDefault.aspx.cs" Inherits="ASPBoard.UDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <asp:LoginStatus ID="LoginStatus1" runat="server"  LoginText="로그인"/> 
                | 
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/URegister.aspx">회원가입</asp:HyperLink>  
            </AnonymousTemplate>
            <LoggedInTemplate>
                <asp:LoginStatus ID="LoginStatus2" runat="server"  LoginText="로그아웃"/> |

                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UUserInfo.aspx">
                     <asp:LoginName ID="LoginName1" runat="server" />
                </asp:HyperLink>
            </LoggedInTemplate>

        </asp:LoginView>
</asp:Content>
