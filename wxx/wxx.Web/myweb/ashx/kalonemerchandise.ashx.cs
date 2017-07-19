using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using System.Web.SessionState;
using System.IO;

namespace wxx.ashx
{
    /// <summary>
    /// 生成代码时间： ljxtime
    /// 文件说明：kalonemerchandise
    /// 开发者：
    /// 最后编辑时间：
    /// 编辑说明：
    /// </summary>
    public class kalonemerchandise : baseashxClass, IRequiresSessionState
    {
        
        public override void ProcessRequest(HttpContext context)
        {
            wxx.BLL.kalonemerchandise bll = new wxx.BLL.kalonemerchandise(context); 
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
                    string foodName = context.Request.QueryString["foodName"];
                    int amount = int.Parse(context.Request.QueryString["amount"]);
                    string unit = context.Request.QueryString["unit"];
                    string description = context.Request.QueryString["description"];
                    float price =float.Parse(context.Request.QueryString["price"]);
                    string pic = context.Request.QueryString["pic"];
                    string editTime = DateTime.Now.ToString();
                    string addTime = context.Request.QueryString["addTime"];
                    string addTime1 = DateTime.Now.ToString();
                    string editor = context.Session["userName"].ToString();
                    string foodID = DateTime.Now.ToFileTime().ToString();
                    string state = context.Request.QueryString["state"];
                    string new1 = context.Request.QueryString["new1"];
                    string new2 = context.Request.QueryString["new2"];

                    pic=urlXiangdui(pic, context);                
                         
                if (context.Request.QueryString["Id"] != null && context.Request.QueryString["Id"] != "")
                {
                    bll.Update(context.Request.QueryString["Id"].ToString(),foodName,amount,unit,description,price,pic,editTime,addTime,editor,foodID,state,new1,new2);
                }
                else
                {
                    bll.Add(foodName,0,unit,description,price,pic,editTime,addTime1,editor,foodID,state,new1,new2);
                }

                context.Response.Write("true");
            }
            else if (Convert.ToString(context.Request.Form["action"]) == "query")
            {
                //string strret = bll.GetListByPageColumns_tojson("id,产品名称,产品数量,产品规格,备注", "1=1", "产品数量"); 加权限, 1=1 改为:部门编号 like '1010%'
                string strret = bll.GetListByPageColumns_tojson("Id,foodName,amount,unit,description,price,pic,editTime,addTime,editor,foodID,state,new1,new2", pagestrif, "Id");
                context.Response.Write(strret);
                return;
            }
            else
            {
                
            }
        }

        private string urlXiangdui(string pic,HttpContext context)
        {
            string path = RelativePath(@"C:\fakepath\Release", @pic);
            return path;
        }
        string RelativePath(string absolutePath, string relativeTo)
        {
            //from - www.cnphp6.com

            string[] absoluteDirectories = absolutePath.Split('\\');
            string[] relativeDirectories = relativeTo.Split('\\');

            //Get the shortest of the two paths
            int length = absoluteDirectories.Length < relativeDirectories.Length ? absoluteDirectories.Length : relativeDirectories.Length;

            //Use to determine where in the loop we exited
            int lastCommonRoot = -1;
            int index;

            //Find common root
            for (index = 0; index < length; index++)
                if (absoluteDirectories[index] == relativeDirectories[index])
                    lastCommonRoot = index;
                else
                    break;

            //If we didn't find a common prefix then throw
            if (lastCommonRoot == -1)
                throw new ArgumentException("Paths do not have a common base");

            //Build up the relative path
            StringBuilder relativePath = new StringBuilder();

            //Add on the ..
            for (index = lastCommonRoot + 1; index < absoluteDirectories.Length; index++)
                if (absoluteDirectories[index].Length > 0)
                    relativePath.Append("..\\\\images\\\\");

            //Add on the folders
            for (index = lastCommonRoot + 1; index < relativeDirectories.Length - 1; index++)
                relativePath.Append(relativeDirectories[index] + "\\");
            relativePath.Append(relativeDirectories[relativeDirectories.Length - 1]);

            return relativePath.ToString();
        }

       
    }
}