using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using System.Web.SessionState;
using wxx.ashx;

namespace wxx.myweb.ashx
{
    /// <summary>
    /// kaloneshop 的摘要说明
    /// </summary>
    public class  kaloneshop : baseashxClass
    {

        public override void ProcessRequest(HttpContext context)
        {
            wxx.BLL.kalonemerchandise cdbll = new wxx.BLL.kalonemerchandise(context);
            base.ProcessRequest(context);
            context.Response.ContentType = "text/plain";
            mycommonClass mycommonClassobj = new mycommonClass();
            context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
            if (context.Request.QueryString["type"] == "goods")
            {
                string str = cdbll.GetListByColumn_tojson("*","state="+"'可用'","Id");
                context.Response.Write(str);
            }


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