using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Handlers
{
    /// <summary>
    /// Default 的摘要说明
    /// </summary>
    public class Default : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string method = context.Request.Params["method"];
            switch (method)
            { 
                case "":
                    GetSomething(context);
                    break;
                default:
                    break;
            }

        }

        private void GetSomething(HttpContext context)
        {
            context.Response.ContentType = "application/json";
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}