<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <link type="text/css" rel="stylesheet" href="/Content/css/style.css" />
    <title>用户登录</title>
</head>
<body class="bg-img">
    <form runat="server">
        <div class="login-box">
            <div class="input-wrapper">
                <asp:TextBox ID="txtMobilePhone" CssClass="bod-b" placeholder="用户名" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtPassWord" placeholder="密码" runat="server" CssClass="bod-b" TextMode="Password"></asp:TextBox>
                <br />
                <div style="margin: 24px 12px;">
                    <asp:CheckBox ID="cbSaveUserName" runat="server" Checked="false" Text="保持登录状态" />
                </div>
            </div>
            <div class="err">
                <asp:Label ID="lbMsg" runat="server" Visible="false"></asp:Label>
            </div>

            <asp:Button ID="btnLogin" CssClass="log_btn" runat="server" OnClick="btnLogin_Click" Text="登录" />
            <p class="tip">建议使用IE9以上版本或者Safari/FireFox/Chrome最新版本。</p>
        </div>
    </form>
</body>
<script src="/Scripts/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
    $(function () {
        localStorage.clear();
    })
</script>
</html>

