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
    /// business 的摘要说明
    /// </summary>
    public class business : baseashxClass
    {

        public override void ProcessRequest(HttpContext context)
        {
            wxx.BLL.kalonebusiness bll = new wxx.BLL.kalonebusiness(context);
            base.ProcessRequest(context);
            context.Response.ContentType = "text/plain";

            mycommonClass mycommonClassobj = new mycommonClass();
            context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
            
            if (context.Request.QueryString["type"] == "order")//保存修改或添加 
            {
                string userName = context.Request.QueryString["userName"];
                string userID = context.Request.QueryString["userID"];
                string orderID = context.Request.QueryString["orderID"];
                string orderID1 = DateTime.Now.ToFileTime().ToString();
                string address = context.Request.QueryString["address"];
                string phone = context.Request.QueryString["phone"];
                float totalPrice = float.Parse(context.Request.QueryString["totalPrice"]);
                string status = context.Request.QueryString["status"];
                string addTime = context.Request.QueryString["addTime"];
                string addTime1 = DateTime.Now.ToString();
                string shipTime = context.Request.QueryString["shipTime"];
                string finishTime = context.Request.QueryString["finishTime"];
                string new1 = context.Request.QueryString["new1"];
                string new2 = context.Request.QueryString["new2"];
                if(context.Session["username"]!=null)
                {
                    bll.Add(userName, userID, orderID1, address, phone, totalPrice, status, addTime1, shipTime, finishTime, new1, new2);

                    
                    calender(context, userID, userName, orderID1, address, phone, new1);//在外卖日程安排中添加一条记录
                    string ftime = bll.GetValue("finishTime", "orderID=" + orderID1);
                    if(ftime!="")
                        relationup(context, userID, userName, totalPrice);//订单完成后等级上升
                    context.Response.Write("true");
                }    
                else
                {
                    context.Response.Write("false");
                }
               
                
            }
            
            else if (context.Request.QueryString["type"] == "order")
            {

            }
            else
            {

            }
        }

        private void calender(HttpContext context, string userID, string userName, string orderID1, string address, string phone, string new1)
        {
            wxx.BLL.kalonecalendar calbll = new wxx.BLL.kalonecalendar();
            wxx.Model.kalonecalendar calmodel = new wxx.Model.kalonecalendar();
            calmodel.userID = userID;

            calmodel.new1 = orderID1;//订单编号
            calmodel.description = userName + address + phone;
            calmodel.status = "未处理";
            calbll.Add1(calmodel);
        }

        private void relationup(HttpContext context, string userID, string userName, float discountprice)
        {
            wxx.BLL.kalonerelationcategory cgbll = new BLL.kalonerelationcategory();
            wxx.Model.kalonerelationcategory cgmodel = new Model.kalonerelationcategory();
            DataSet cgds = cgbll.GetAllList();//获取等级设置表中所有的列

            wxx.BLL.kalonerelation rlbll = new BLL.kalonerelation();
            wxx.Model.kalonerelation rlmodel = new Model.kalonerelation();
            string Idrl = rlbll.GetValue("Id", "userID=" + userID);
            rlmodel = rlbll.GetModel(int.Parse(Idrl));
            string level = rlmodel.level;
            int jifen = int.Parse(rlmodel.category);
            int upjifen = (int)discountprice / 10;
            rlmodel.category = (jifen + upjifen).ToString();

            for (int i = 0; i < cgds.Tables[0].Rows.Count; i++)
            {
                if (int.Parse(rlmodel.category) < int.Parse(cgds.Tables[0].Rows[i][1].ToString()))
                {
                    rlmodel.level = cgds.Tables[0].Rows[i][2].ToString();//查找所在的等级
                    break;
                }
            }
            rlbll.Update1(rlmodel);
        }
        private float discount(string level, string totalPrice)
        {
            ljxpower.BLL.com_zidian dbll = new ljxpower.BLL.com_zidian();
            ljxpower.Model.com_zidian dmodel = new ljxpower.Model.com_zidian();
            string discount = dbll.GetValue("beifen", "xianshizhi=" + level);
            float discountprice = float.Parse(totalPrice) * float.Parse(discount);
            return discountprice;
        }

        
    }
}