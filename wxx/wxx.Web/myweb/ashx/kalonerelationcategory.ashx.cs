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
    /// 文件说明：kalonerelationcategory
    /// 开发者：
    /// 最后编辑时间：
    /// 编辑说明：
    /// </summary>
    public class kalonerelationcategory : baseashxClass
    {
        
        public override void ProcessRequest(HttpContext context)
        {
            wxx.BLL.kalonerelationcategory bll = new wxx.BLL.kalonerelationcategory(context); 
            base.ProcessRequest(context);
            context.Response.ContentType = "text/plain";

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
                    string category = context.Request.QueryString["category"];
                    string level = context.Request.QueryString["level"];
                    string memo = context.Request.QueryString["memo"];
                    string new1 = context.Request.QueryString["new1"];
                    string new2 = context.Request.QueryString["new2"];

                
                if (context.Request.QueryString["Id"] != null && context.Request.QueryString["Id"] != "")
                {
                    bll.Update(context.Request.QueryString["Id"].ToString(),category,level,memo,new1,new2);
                }
                else
                {
                    bll.Add(category,level,memo,new1,new2);
                }

                context.Response.Write("true");
            }
            else if (Convert.ToString(context.Request.Form["action"]) == "query")
            {
                //string strret = bll.GetListByPageColumns_tojson("id,产品名称,产品数量,产品规格,备注", "1=1", "产品数量"); 加权限, 1=1 改为:部门编号 like '1010%'
                string strret = bll.GetListByPageColumns_tojson("Id,category,level,memo,new1,new2", pagestrif, "Id");
                context.Response.Write(strret);
                return;
            }
            else
            {
                
            }
        }         
    }
}