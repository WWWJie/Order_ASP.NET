using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.SessionState;

namespace wxx.order
{
    public partial class menu : System.Web.UI.Page
    {
        public int id,num=0;
        public float discount, TotalPrice, CartTotal;
        wxx.BLL.kalonemerchandise bll = new BLL.kalonemerchandise();
        wxx.BLL.kalonebasicinfo ubll = new BLL.kalonebasicinfo();
        wxx.BLL.kalonebusinessdetail dbll = new BLL.kalonebusinessdetail();
        wxx.BLL.kalonerelation rbll = new BLL.kalonerelation();
        ljxpower.BLL.com_zidian zbll = new ljxpower.BLL.com_zidian();
        wxx.BLL.gwc gbll = new BLL.gwc();
        wxx.Model.gwc gmodel = new Model.gwc();
        string userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lvwCart.DataBind();

            }
            id = 0;
            if (Request.QueryString["id"] != null)
            {
                id = int.Parse(Request.QueryString["id"].ToString());
            }
            if (id < 1 || id > 6)
                id = 1;
            readdata();
            if(Session["Phone"]!=null)
            {
                readdata1();
            }
            
        }
        protected void readdata()
        {
            DataSet dt;
            if(id==1)
                dt= bll.GetList("description='1'");
            else if(id==2)
                dt = bll.GetList("description='2'");
            else if (id == 3)
                dt = bll.GetList("description='3'");
            else if (id == 4)
                dt = bll.GetList("description='4'");
            else
                dt = bll.GetList("description='5'");
            
            lvwFoods.DataSource = dt;
            lvwFoods.DataBind();
        }
        protected void readdata1()
        {
            userid = ubll.GetValue("userID", "phone='" + Session["Phone"] + "'");
            Session["userID"] = userid;
            DataSet dt1 = gbll.GetList("userid='"+userid+"'");
            lvwCart.DataSource = dt1;
            lvwCart.DataBind();
            int s = dt1.Tables[0].Rows.Count;
            int i,c;
            float p;
            if(s>0)
            {
                TotalPrice = 0;
                for(i=0;i<s;i++)
                {
                    p = float.Parse(dt1.Tables[0].Rows[i][3].ToString());
                    c = int.Parse(dt1.Tables[0].Rows[i][4].ToString());
                    TotalPrice += p * c;
                }
                string level = rbll.GetValue("level", "userID='" + userid + "'");
                discount = float.Parse(zbll.GetValue("beifen", "xianshizhi='" + level + "' AND leibie='积分'"));
                CartTotal = discount * TotalPrice;
            }


        }
        protected void lvwFoods_OnItemCommand(object sender, ListViewCommandEventArgs e)
        {

            
            if (Session["Phone"] == null)
            {
                Response.Write("<Script Language='JavaScript'>window.alert('" + "还没有登录哦！" + "');</script>");
            }
            else 
            {
                
                userid = ubll.GetValue("userID", "phone='" + Session["Phone"]+"'");
                if (String.Equals(e.CommandName, "AddToList")) 
                {
                    
                    ListViewDataItem dataItem = (ListViewDataItem)e.Item;
                    int di = dataItem.DisplayIndex;
                    int dd2 = dataItem.DataItemIndex;
                    
                    string ID =lvwFoods.DataKeys[dataItem.DisplayIndex].Value.ToString();
                    string foodname = bll.GetValue("foodName", "Id='" + ID + "'");
                    string id = gbll.GetValue("Id", "userid='" + userid + "'AND foodname='" + foodname + "'");
                    float price =float.Parse( bll.GetValue("price", "Id='" + ID + "'"));
                    DataSet bnds = gbll.GetList("userid='" + userid + "'AND foodname ='"+foodname+"'");
                    if (bnds.Tables[0].Rows.Count > 0)
                    {
                        num = int.Parse(gbll.GetValue("count", "userid='" + userid + "'AND foodname='" + foodname + "'"));
                        num++;
                        gmodel = gbll.GetModel(int.Parse(id));
                        gmodel.count = num;
                        
                        gbll.Update1(gmodel);
                        
                    }
                    else
                    {
                        num++;
                        
                        gbll.Add(userid, foodname, price, num);
                    }
                    
                    readdata1();




                }
                

            }
            
        }

        protected void lvwCart_OnItemCommand(object sender, ListViewCommandEventArgs e)
        {

            
            if (String.Equals(e.CommandName, "CountAdd"))
            {

                ListViewDataItem dataItem1 = (ListViewDataItem)e.Item;
                string ID = lvwCart.DataKeys[dataItem1.DisplayIndex].Value.ToString();
                string foodname = gbll.GetValue("foodname", "Id='" + ID + "'");
                float price = float.Parse(gbll.GetValue("price", "Id='" + ID + "'"));
                DataSet bnds = gbll.GetList("userid='" + userid + "' AND foodname='" + foodname + "'");
                num = int.Parse(gbll.GetValue("count", "userid='" + userid + "'AND foodname='" + foodname + "'"));
                num++;
                gmodel = gbll.GetModel(int.Parse(ID));
                gmodel.count = num;
               
                gbll.Update1(gmodel);
                readdata1();
            }
            if (String.Equals(e.CommandName, "CountSub"))
            {

                ListViewDataItem dataItem2 = (ListViewDataItem)e.Item;
                string ID = lvwCart.DataKeys[dataItem2.DisplayIndex].Value.ToString();
                string foodname = gbll.GetValue("foodname", "Id='" + ID + "'");
                float price = float.Parse(gbll.GetValue("price", "Id='" + ID + "'"));
                DataSet bnds = gbll.GetList("userid='" + userid + "'AND foodname='" + foodname + "'");
                num = int.Parse(gbll.GetValue("count", "userid='" + userid + "'AND foodname='" + foodname + "'"));
                num--;
                if(num>0)
                {
                    gmodel = gbll.GetModel(int.Parse(ID));
                    gmodel.count = num;
                    gbll.Update1(gmodel);
                }
                else
                {
                    gbll.Delete(int.Parse(ID));
                }
                
                
                readdata1();
            }
        }
        

        

        
        protected void btnCreatOrder_Click(object sender, EventArgs e)
        {
            DataSet gwc = gbll.GetList("userid='"+userid+"'");
            int num1 = gwc.Tables[0].Rows.Count;
            if (Session["Phone"] == null)
            {
                Response.Write("<Script Language='JavaScript'>window.alert('" + "亲，还没有登录哦！" + "');</script>");
            }
            else if (num1<=0)
            {

                Response.Write("<Script Language='JavaScript'>window.alert('" + "购物车里还没有美食，<br />赶紧去商城逛逛吧！" + "');</script>");
            }
            else
            {
                

                //Response.Redirect("CreateOrder.aspx");
                Response.Redirect("Corder.aspx");
            }
        }
    }
}