using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Account
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //获取当前登录用户身份级别,跳转到不同的左侧菜单页
                int levelId = Convert.ToInt32(this.Context.User.Identity.Name);
                //int levelId = 8; 
                //if (Login == "2")
                //{
                //    levelId = 0;
                //}
                if (!Page.IsPostBack)
                {
                    //总后台管理员
                    if (levelId == -1)
                    {
                        LeftNav.Attributes["src"] = "/Console/Left.aspx";
                        //RightNav.Attributes["src"] = "/Console/Statistics.aspx";
                    }
                    //企业版
                    else if (levelId == 0)
                    {
                        LeftNav.Attributes["src"] = "/Console/Left.aspx";
                    }
                    //城市合伙人
                    else if (levelId == 1)
                    {
                        LeftNav.Attributes["src"] = "/Console/PartnerLeft.aspx";
                    }
                    //代理商
                    else if (levelId == 2)
                    {
                        LeftNav.Attributes["src"] = "/Console/AgencyLeft.aspx";
                    }
                    //其它情况都属于非法数据-->返回登录
                    else
                    {
                        FormsAuthentication.SignOut();
                        ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscripts", "<script>parent.location.href='/Console/Login.aspx';</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                FormsAuthentication.SignOut();
                ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscripts", "<script>parent.location.href='/Console/Login.aspx';</script>");
            }
        }
    }
}