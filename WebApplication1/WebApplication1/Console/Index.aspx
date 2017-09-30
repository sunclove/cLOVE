<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Account.Index" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>首页</title>
</asp:Content>

<%--body--%>
    <asp:Content ID="Content4" ContentPlaceHolderID="HeaderContent" runat="server">
        <iframe id="Header" runat="server" width="100%" height="100%" noresize="0" src="/Console/Header.aspx" frameborder="0" name="Header" scrolling="auto" style="border-right: 1px solid #e0e3e4;">
        </iframe>
    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
        <iframe id="LeftNav" runat="server" width="100%" height="100%" noresize="0" src="/Console/Left.aspx" frameborder="0" name="LeftNav" scrolling="auto" style="border-right: 1px #e0e3e4 solid;">
        </iframe>
    </asp:Content>

    <asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <iframe id="RightNav" runat="server" style="margin-left: 8px;" width="100%" height="100%" noresize="0" src="/Console/Default.aspx" frameborder="0" name="rightFrame" scrolling="auto"></iframe>
   
    <!-- Placed js at the end of the document so the pages load faster -->
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.min.js"></script>
    <script src="js/jquery.nicescroll.js"></script>
    <!--easy pie chart-->
    <script src="js/easypiechart/jquery.easypiechart.js"></script>
    <script src="js/easypiechart/easypiechart-init.js"></script>
    <!--Sparkline Chart-->
    <script src="js/sparkline/jquery.sparkline.js"></script>
    <script src="js/sparkline/sparkline-init.js"></script>
    <!--icheck -->
    <script src="js/iCheck/jquery.icheck.js"></script>
    <script src="js/icheck-init.js"></script>
    <!-- jQuery Flot Chart-->
    <script src="js/flot-chart/jquery.flot.js"></script>
    <script src="js/flot-chart/jquery.flot.tooltip.js"></script>
    <script src="js/flot-chart/jquery.flot.resize.js"></script>

    <!--Morris Chart-->
    <script src="js/morris-chart/morris.js"></script>
    <script src="js/morris-chart/raphael-min.js"></script>
    <!--Calendar-->
    <script src="js/calendar/clndr.js"></script>
    <script src="js/calendar/evnt.calendar.init.js"></script>
    <script src="js/calendar/moment-2.2.1.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>
    <!--common scripts for all pages-->
    <script src="js/scripts.js"></script>
    <!--Dashboard Charts-->
    <script src="js/dashboard-chart-init.js"></script>


    </asp:Content>
