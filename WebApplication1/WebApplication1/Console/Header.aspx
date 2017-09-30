<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Header.aspx.cs" Inherits="WebApplication1.Console.Header" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
    <form runat="server">
        <asp:LinkButton ID="lnkbtnSignOut" runat="server" OnClick="lnkbtnSignOut_Click">安全退出</asp:LinkButton>    
    </form>
</asp:Content>
