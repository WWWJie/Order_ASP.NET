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
    /// 文件说明：kalonebusinessdetail
    /// 开发者：
    /// 最后编辑时间：
    /// 编辑说明：
    /// </summary>
    public class kalonebusinessdetail : baseashxClass
    {
        
        public override void ProcessRequest(HttpContext context)
        {
            wxx.BLL.kalonebusinessdetail bll = new wxx.BLL.kalonebusinessdetail(context);
            wxx.BLL.kalonebusiness bnbll = new wxx.BLL.kalonebusiness();
            wxx.Model.kalonebusiness bnmodel = new wxx.Model.kalonebusiness();
            base.ProcessRequest(context);
            context.Response.ContentType = "text/plain";
            string orderID = getId(context);//获取kalonebusiness.html页面传过来的当前订单号
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

                string foodID = context.Request.QueryString["foodID"];
                string foodName = context.Request.QueryString["foodName"];
                int amount = int.Parse(context.Request.QueryString["amount"]);
                string new1 = context.Request.QueryString["new1"];
                float new2 = float.Parse(context.Request.QueryString["new2"]);


                if (context.Request.QueryString["Id"] != null && context.Request.QueryString["Id"] != "")
                {
                    bll.Update(context.Request.QueryString["Id"].ToString(), orderID, foodID, foodName, amount, new1, new2);
                }
                else
                {
                    bll.Add(orderID, foodID, foodName, amount, new1, new2);
                }

                context.Response.Write("true");
            }
            else if (Convert.ToString(context.Request.Form["action"]) == "query")
            {

                //string strret = bll.GetListByPageColumns_tojson("id,产品名称,产品数量,产品规格,备注", "1=1", "产品数量"); 加权限, 1=1 改为:部门编号 like '1010%'
                string strret = bll.GetListByPageColumns_tojson("Id,orderID,foodID,foodName,amount,new1,new2", "orderID=" + orderID, "Id");
                context.Response.Write(strret);
                return;
            }

            else if (context.Request.QueryString["type"] == "queren")
            {
                string IDbn = "";
                DataSet bnds = bnbll.GetList("orderID='" + orderID + "'");
                if (bnds.Tables[0].Rows.Count > 0)
                { IDbn = bnds.Tables[0].Rows[0][0].ToString(); }
                bnmodel = bnbll.GetModel(int.Parse(IDbn));
                string status = bnmodel.status;//获得该订单的状态
                if (status == "待接单")
                {
                    bnmodel.status = "已接单";
                    bnbll.Update1(bnmodel);//修改该订单的状态为已接单
                    context.Response.Write("yijiedan");
                }
                else {
                    context.Response.Write("yichuli");//订单已被处理
                }
            }
            else if (context.Request.QueryString["type"] == "quxiao")
            {
                string IDbn = "";
                DataSet bnds = bnbll.GetList("orderID='" + orderID + "'");
                if (bnds.Tables[0].Rows.Count > 0)
                { IDbn = bnds.Tables[0].Rows[0][0].ToString(); }
                bnmodel = bnbll.GetModel(int.Parse(IDbn));//获得该订单的状态
                string status = bnmodel.status;
                if (status == "待接单" || status=="已接单")
                {
                    bnmodel.status = "已取消";
                    bnbll.Update1(bnmodel);//修改该订单的状态为已接单
                    if (status == "已接单")
                    {
                        wxx.BLL.kalonecalendar calbll = new BLL.kalonecalendar();//日程安排表中的状态变成已取消
                        wxx.Model.kalonecalendar calmodel = new Model.kalonecalendar();
                        string IDcal = calbll.GetValue("Id","new1='"+orderID+"'");
                        calmodel = calbll.GetModel(int.Parse(IDcal));
                        calmodel.status = "已取消";
                        calbll.Update1(calmodel);

                     }
                    context.Response.Write("yiquxiao");
                }
                else
                {
                    context.Response.Write("yichuli");//订单已被处理
                }
            }
        }

        private string  getId(HttpContext httpContext)
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