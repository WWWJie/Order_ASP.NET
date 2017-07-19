using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using System.Web.SessionState;

namespace wxx.ashx
{
    /// <summary>
    /// 生成代码时间： ljxtime
    /// 文件说明：kaloneaddress
    /// 开发者：
    /// 最后编辑时间：
    /// 编辑说明：
    /// </summary>
    /// 
    public class kaloneaddress : baseashxClass
    {
        
        public override void ProcessRequest(HttpContext context)
        {
            wxx.BLL.kaloneaddress bll = new wxx.BLL.kaloneaddress(context); 
            base.ProcessRequest(context);
            context.Response.ContentType = "text/plain";
            string userID = getId(context);//获取前面客户基础信息表（kalonebasicinfo.html）传来的userID
            mycommonClass mycommonClassobj = new mycommonClass();
            context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
            if (context.Request.QueryString["type"] == "edit")//获取编辑信息
            {
                if (context.Request.QueryString["Id"] != null)
                {
                    string strret = bll.Geteditdata(context.Request.QueryString["Id"].ToString());//aa1
                    context.Response.Write(strret);
                }
            }
            else if (context.Request.QueryString["type"] == "del")//删除信息
            {
                if (context.Request.QueryString["Id"] == null)
                    return;
                string Id = context.Request.QueryString["Id"].ToString();                
                bll.Delete(int.Parse(Id));               
            }
            else if (context.Request.QueryString["type"] == "combox")//保存修改或添加 信息 aa2
            {

            }
             
            else if (context.Request.QueryString["type"] == "save")//保存修改或添加 
            {
                    string address = context.Request.QueryString["address"];
                    string phone = context.Request.QueryString["phone"];
                    string name = context.Request.QueryString["name"];
                  
                    string new1 = context.Request.QueryString["new1"];
                    string new2 = context.Request.QueryString["new2"];

                
                if (context.Request.QueryString["Id"] != null && context.Request.QueryString["Id"] != "")
                {
                    bll.Update(context.Request.QueryString["Id"].ToString(),address,phone,name,userID,new1,new2);
                }
                else
                {
                    bll.Add(address,phone,name,userID,new1,new2);
                }

                context.Response.Write("true");
            }
            else if (Convert.ToString(context.Request.Form["action"]) == "query")
            {
                
                //string strret = bll.GetListByPageColumns_tojson("id,产品名称,产品数量,产品规格,备注", "1=1", "产品数量"); 加权限, 1=1 改为:部门编号 like '1010%'
                string strret = bll.GetListByPageColumns_tojson("Id,address,phone,name,userID,new1,new2", "userID="+userID, "Id");
                context.Response.Write(strret);
                return;
            }
            else if (context.Request.QueryString["type"] == "moren")//设置为默认地址
            {
                wxx.Model.kaloneaddress admodel = new wxx.Model.kaloneaddress();
                string Idad = context.Request.QueryString["Id"].ToString();
                admodel = bll.GetModel(int.Parse(Idad));//获取当前的地址信息
                string morenaddress = admodel.address.ToString();//获取要设置的默认的地址
                string morenname = admodel.name.ToString();
                string morenphone = admodel.phone.ToString();

                wxx.BLL.kalonebasicinfo bibll = new wxx.BLL.kalonebasicinfo();//更改基础客户表中的地址等信息
                wxx.Model.kalonebasicinfo bimodel = new wxx.Model.kalonebasicinfo();
                bimodel.address = morenaddress;
                bimodel.contact = morenname;
                bimodel.phone = morenphone;
                bibll.Update1(bimodel);
                context.Response.Write("true");
            }
        }
        /// <summary>
        /// 获取基本客户信息表中的userID
        /// </summary>
        /// <param name="httpContext"></param>
        /// <returns></returns>
        private string getId(HttpContext httpContext)
        {
            string StrCom = "";
            string sArray = "";
            string urlstr = httpContext.Request.UrlReferrer.Query;
            if (urlstr != null && urlstr != "")
            {
                StrCom = urlstr.Substring(urlstr.IndexOf("="));//得到="传进来的参数"
                sArray = StrCom.Split('=')[1].ToString();
            }
            return sArray;
        }
    }
}