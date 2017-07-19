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
    /// 文件说明：kalonebasicinfo
    /// 开发者：
    /// 最后编辑时间：
    /// 编辑说明：
    /// </summary>
    public class kalonebasicinfo : baseashxClass
    {
        
        public override void ProcessRequest(HttpContext context)
        {
            wxx.BLL.kalonebasicinfo bll = new wxx.BLL.kalonebasicinfo(context); 
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
                        if (context.Request.QueryString["comboxname"] == "address")
                        {
                            wxx.BLL.kaloneaddress bllzd = new wxx.BLL.kaloneaddress();
                            string strret = bllzd.GetListByColumn_tojson("Id,address","1=1","");
                            context.Response.Write(strret);
                        }

                        if (context.Request.QueryString["comboxname"] == "phone")
                        {
                            wxx.BLL.kaloneaddress bllzd = new wxx.BLL.kaloneaddress();
                            string strret = bllzd.GetListByColumn_tojson("Id,address,phone","1=1","");
                            context.Response.Write(strret);
                        }

                        if (context.Request.QueryString["comboxname"] == "contact")
                        {
                            wxx.BLL.kaloneaddress bllzd = new wxx.BLL.kaloneaddress();
                            string strret = bllzd.GetListByColumn_tojson("Id,address,name","1=1","");
                            context.Response.Write(strret);
                        }


            }
             
            else if (context.Request.QueryString["type"] == "save")//保存修改或添加 或注册
            {
                    string userID = context.Request.QueryString["userID"];
                    string userID1 = DateTime.Now.ToFileTime().ToString();
                    string userName = context.Request.QueryString["userName"];
                    string contact = context.Request.QueryString["contact"];
                    string phone = context.Request.QueryString["phone"];
                    string email = context.Request.QueryString["email"];
                    string address = context.Request.QueryString["address"];
                    string qq = context.Request.QueryString["qq"];
                    string new1 = context.Request.QueryString["new1"];
                    string new2 = context.Request.QueryString["new2"];

                
                if (context.Request.QueryString["Id"] != null && context.Request.QueryString["Id"] != "")
                {
                    bll.Update(context.Request.QueryString["Id"].ToString(),userID,userName,contact,phone,email,address,qq,new1,new2);
                }
                else
                {
                    bll.Add(userID1,userName,contact,phone,email,address,qq,new1,new2);
                    relation(userID1,userName);//在客户等级中添加一条记录
                    addaddress(contact,phone,address,userID1);
                }

                context.Response.Write("true");
            }
            else if (Convert.ToString(context.Request.Form["action"]) == "query")
            {
                //string strret = bll.GetListByPageColumns_tojson("id,产品名称,产品数量,产品规格,备注", "1=1", "产品数量"); 加权限, 1=1 改为:部门编号 like '1010%'
                string strret = bll.GetListByPageColumns_tojson("Id,userID,userName,contact,phone,email,address,qq,new1,new2", pagestrif, "Id");
                context.Response.Write(strret);
                return;
            }
            else if(context.Request.QueryString["type"] == "login")
            {
                String Account = context.Request.QueryString["Account"];//接收前台传回来的账号
                String PassWord = context.Request.QueryString["PassWord"];//数据库中的密码字段
                DataSet dsID = bll.GetList("userID='"  +  Account + "'and new1='" + PassWord + "'");//检查是否存在该账号和密码
                DataSet dsName=bll.GetList("userName='" + Account + "'and new1='" + PassWord + "'");//检查是否存在该名称和密码
                int numID = dsID.Tables[0].Rows.Count;
                int numName = dsName.Tables[0].Rows.Count;
                if (numID> 0 || numName> 0)
                {
                    if (numID > 0)
                        context.Session["userID"] = Account;
                    else if (numName > 0)
                        context.Session["userName"] = Account;
                    context.Response.Write("true");
                }
                else
                {
                    context.Response.Write("false");
                }
                return;

            }
            else if (context.Request.QueryString["type"] == "register")
            {
                string userID = context.Request.QueryString["userID"];
                string userID1 = DateTime.Now.ToFileTime().ToString();
                string userName = context.Request.QueryString["userName"];
                string contact = context.Request.QueryString["contact"];
                string phone = context.Request.QueryString["phone"];
                string email = context.Request.QueryString["email"];
                string address = context.Request.QueryString["address"];
                string qq = context.Request.QueryString["qq"];
                string new1 = context.Request.QueryString["new1"];
                string new2 = context.Request.QueryString["new2"];
                               
                bll.Add(userID1, userName, contact, phone, email, address, qq, new1, new2);
                relation(userID1, userName);//在客户等级中添加一条记录
                addaddress(contact, phone, address, userID1);
                
                context.Response.Write("true");

            }
        }

        private void addaddress(string contact, string phone, string address,string userID)
        {
            wxx.BLL.kaloneaddress adbll = new wxx.BLL.kaloneaddress();
            wxx.Model.kaloneaddress admodel = new wxx.Model.kaloneaddress();
            admodel.address = address;
            admodel.name = contact;
            admodel.phone = phone;
            admodel.userID = userID;
            adbll.Add1(admodel);
        }

        private void relation(string userID1, string userName)//增加一条基础的客户等级信息记录
        {
            wxx.BLL.kalonerelation rlbll = new BLL.kalonerelation();
            wxx.Model.kalonerelation rlmodel = new Model.kalonerelation();
            rlmodel.userID = userID1;
            rlmodel.userName = userName;
            rlmodel.category = "0";
            rlmodel.level = "LV1";
            rlmodel.editTime = DateTime.Now.ToString();
            rlbll.Add1(rlmodel);
        }
    }
}