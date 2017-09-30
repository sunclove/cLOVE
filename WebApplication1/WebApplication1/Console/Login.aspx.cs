using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterHyperLink.NavigateUrl = "Register";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];

            //var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            //if (!String.IsNullOrEmpty(returnUrl))
            //{
            //    RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            //}
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //string mobilephone = txtMobilePhone.Text.FilterSqlString();
            //string password = txtPassWord.Text;
            //if (string.IsNullOrEmpty(mobilephone) || string.IsNullOrEmpty(password))
            //{
            //    lbMsg.Visible = true;
            //    lbMsg.Text = "用户名密码不能为空";
            //    return;
            //}

            //if (bll.Exists(mobilephone, core.GetMD5(password)))
            //{
            //    FXH.Model.agency agencyModel = agencyDal.GetModel(mobilephone);
            //    logDal.Insert(new FXH.Model.pub_sys_log() { agency_id = agencyModel.agency_id, Content = "登录", SouceTableId = agencyModel.agency_id.ToString(), SourceTable = "agency", Ip = Request.UserHostAddress, create_dt = DateTime.Now.ToString() });
            //    FormsAuthentication.RedirectFromLoginPage(mobilephone, cbSaveUserName.Checked);
            //    return;
            //}
            //else
            //{
            //    lbMsg.Visible = true;
            //    lbMsg.Text = "帐号或密码错误";
            //    return;
            //}

            FormsAuthentication.RedirectFromLoginPage(txtMobilePhone.Text, cbSaveUserName.Checked);
            return;
        }
    }
}