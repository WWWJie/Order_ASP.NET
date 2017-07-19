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
    public partial class Corder : System.Web.UI.Page
    {
        public float discount = 0, TotalPrice = 0, CartTotal = 0;
        int num;
        public string addressid;
        //string name, phone, Address;
        //string foodname;
        //float price;
        //int count;
        wxx.BLL.kaloneaddress abll = new BLL.kaloneaddress();
        wxx.BLL.gwc gbll = new BLL.gwc();
        wxx.Model.gwc gmodel = new Model.gwc();
        wxx.BLL.kalonebusinessdetail dbll = new BLL.kalonebusinessdetail();
        wxx.BLL.kalonerelation rbll = new BLL.kalonerelation();
        wxx.BLL.kalonebasicinfo ubll = new BLL.kalonebasicinfo();
        wxx.BLL.kalonebusiness bll = new BLL.kalonebusiness();
        wxx.BLL.kalonemerchandise mbll = new BLL.kalonemerchandise();
        wxx.BLL.kalonelevelup lebll = new BLL.kalonelevelup();
        wxx.BLL.kalonerelation rebll = new BLL.kalonerelation();
        wxx.BLL.kalonerelationcategory cabll = new BLL.kalonerelationcategory();
        wxx.Model.kalonelevelup lemodel = new Model.kalonelevelup();
        wxx.Model.kalonerelation remodel = new Model.kalonerelation();
        ljxpower.BLL.com_zidian zbll = new ljxpower.BLL.com_zidian();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lvwCarts.DataBind();

            }
            readdata();
            readdata1();



        }
        protected void readdata()
        {
            DataSet dt = abll.GetList("userID='" + Session["userID"] + "'");
            address.DataSource = dt;
            address.DataBind();
        }

        protected void address_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void readdata1()
        {

            DataSet dt1 = gbll.GetList("userid='" + Session["userID"] + "'");
            lvwCarts.DataSource = dt1;
            lvwCarts.DataBind();
            int s = dt1.Tables[0].Rows.Count;
            int i, c;
            float p;
            if (s > 0)
            {
                TotalPrice = 0;
                for (i = 0; i < s; i++)
                {
                    p = float.Parse(dt1.Tables[0].Rows[i][3].ToString());
                    c = int.Parse(dt1.Tables[0].Rows[i][4].ToString());
                    TotalPrice += p * c;
                }
                string level = rbll.GetValue("level", "userID='" + Session["userID"] + "'");
                discount = float.Parse(zbll.GetValue("beifen", "xianshizhi='" + level + "' AND leibie='积分'"));
                CartTotal = discount * TotalPrice;
            }
        }
        protected void address_OnItemCommand(object sender, ListViewCommandEventArgs e)
        {
            
            
            
            if (String.Equals(e.CommandName, "DEL"))
            {

                ListViewDataItem dataItem = (ListViewDataItem)e.Item;
                addressid = address.DataKeys[dataItem.DisplayIndex].Value.ToString();
                abll.Delete(int.Parse(addressid));
                readdata1();
            }
            if (String.Equals(e.CommandName, "EDIT"))
            {

                ListViewDataItem dataItem = (ListViewDataItem)e.Item;
                addressid = address.DataKeys[dataItem.DisplayIndex].Value.ToString();
                //编辑地址
                string name = abll.GetValue("name", "Id='" + addressid + "'");
                string phone = abll.GetValue("phone", "Id='" + addressid + "'");
                string address1 = abll.GetValue("address", "Id='" + addressid + "'");
                TextBox4.Text = name;
                TextBox5.Text = phone;
                TextBox6.Text = address1;
                
            }
        }

        protected void lvwCarts_OnItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "CountAdd"))
            {

                ListViewDataItem dataItem1 = (ListViewDataItem)e.Item;
                string ID = lvwCarts.DataKeys[dataItem1.DisplayIndex].Value.ToString();
                string foodname = gbll.GetValue("foodname", "Id='" + ID + "'");
                float price = float.Parse(gbll.GetValue("price", "Id='" + ID + "'"));
                DataSet bnds = gbll.GetList("userid='" + Session["userID"] + "' AND foodname='" + foodname + "'");
                num = int.Parse(gbll.GetValue("count", "userid='" + Session["userID"] + "'AND foodname='" + foodname + "'"));
                num++;
                gmodel = gbll.GetModel(int.Parse(ID));
                gmodel.count = num;
                gbll.Update1(gmodel);
                readdata1();
            }

            if (String.Equals(e.CommandName, "CountSub"))
            {

                ListViewDataItem dataItem2 = (ListViewDataItem)e.Item;
                string ID = lvwCarts.DataKeys[dataItem2.DisplayIndex].Value.ToString();
                string foodname = gbll.GetValue("foodname", "Id='" + ID + "'");
                float price = float.Parse(gbll.GetValue("price", "Id='" + ID + "'"));
                DataSet bnds = gbll.GetList("userid='" + Session["userID"] + "'AND foodname='" + foodname + "'");
                num = int.Parse(gbll.GetValue("count", "userid='" + Session["userID"] + "'AND foodname='" + foodname + "'"));
                num--;
                if (num > 0)
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








        protected void btnCreateOrder_Click(object sender, EventArgs e)
        {
            DataSet dt1 = gbll.GetList("userid='" + Session["userID"] + "'");
            int s = dt1.Tables[0].Rows.Count;
            int i, c;
            float p;
            string orderID = DateTime.Now.ToFileTime().ToString();
            string addressid = Request.Form["Radio1"];
            string userID = abll.GetValue("userID", "Id='" + addressid + "'");
            string username = ubll.GetValue("userName", "userID='" + userID + "'");
            if (s > 0)
            {
                TotalPrice = 0;
                for (i = 0; i < s; i++)
                {
                    string gid = dt1.Tables[0].Rows[i][0].ToString();
                    string foodname = dt1.Tables[0].Rows[i][2].ToString();
                    p = float.Parse(dt1.Tables[0].Rows[i][3].ToString());
                    c = int.Parse(dt1.Tables[0].Rows[i][4].ToString());
                    string foodid = mbll.GetValue("foodID", "foodName='" + foodname + "'");
                    string new3 = "";
                    
                    TotalPrice += p * c;
                    dbll.Add(orderID, foodid, foodname, c, new3, p);
                    gbll.Delete(int.Parse(gid));
                }
                
                
                string address = abll.GetValue("address", "Id='" + addressid + "'");
                string phone = abll.GetValue("phone", "Id='" + addressid + "'");
                string name = abll.GetValue("name", "Id='" + addressid + "'");
                
                
                string status = "未处理";
                string addtime = DateTime.Now.ToString();
                string shiptime = "";
                string finishtime = "";
                string new1 = "";
                string new2 = "";
                bll.Add(username, userID, orderID, address, phone, TotalPrice, status, addtime, shiptime, finishtime, new1, new2);

            }
            int addjifen = (int)TotalPrice / 10;
            
            string jifen = rebll.GetValue("category", "userID='" + userID + "'");
            string level= rebll.GetValue("level", "userID='" + userID + "'");
            string newlevel=level;
            int newjifen = int.Parse(jifen) + addjifen;
            string reid = rebll.GetValue("Id", "userID='" + userID + "'");
            remodel = rebll.GetModel(int.Parse(reid));
            remodel.category = newjifen.ToString();
            remodel.editTime = DateTime.Now.ToString();
            rebll.Update1(remodel);
            Session["jifen"] = newjifen;
            DataSet retion = cabll.GetAllList();
            for(int j=0;j<retion.Tables[0].Rows.Count;j++)
            {
                if(newjifen>int.Parse(retion.Tables[0].Rows[j][1].ToString()) && newjifen < int.Parse(retion.Tables[0].Rows[j+1][1].ToString()))
                {
                    newlevel = retion.Tables[0].Rows[j][2].ToString();           
                }
            }
            if(String.Compare(level, newlevel) != 0)
            {
                remodel.level = newlevel;
                rebll.Update1(remodel);
                string new1 = "";
                string new2 = "";
                lebll.Add(username, userID, newjifen.ToString(), newlevel,new1,new2);
                Session["level"] = newlevel;
            }
            Response.Write("<Script Language='JavaScript'>window.alert('下单成功');</script>");
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {

            string userid = Session["userID"].ToString();
            string username = TextBox1.Text;
            string phone = TextBox2.Text;

            string address = TextBox3.Text;
            string new2 = "";
            string new1 = "";
            
            abll.Add(address, phone, username, userid,new1,new2);
            readdata();
           
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {

            string userid = Session["userID"].ToString();
            string username = TextBox1.Text;
            string phone = TextBox2.Text;

            string address = TextBox3.Text;
            string new2 = "";
            string new1 = "";
            
            abll.Update(addressid,address, phone, username, userid, new1,new2);
            
        }

    }
}