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
    public partial class mobile_CreateOrder : System.Web.UI.Page
    {


        public float discount=0, TotalPrice=0, CartTotal=0;
        int num1;
        string  name, phone, Address1;
        string foodname;
        float price;
        int count;
        string value;
        wxx.BLL.kaloneaddress abll = new BLL.kaloneaddress();
        wxx.BLL.gwc gbll = new BLL.gwc();
        wxx.Model.gwc gmodel = new Model.gwc();
        wxx.BLL.kalonebusinessdetail dbll = new BLL.kalonebusinessdetail();
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
            DataSet dt = abll.GetList("userID='" + Session["userID"]+"'");
            GridView1.DataSource = dt;
            GridView1.DataBind();
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

            }
        }
        //protected void address_OnItemCommand(object sender, ListViewCommandEventArgs e)
        //{
        //    if (String.Equals(e.CommandName, "selectaddress"))
        //    {

        //        ListViewDataItem dataItem = (ListViewDataItem)e.Item;
        //        string ID = GridView1.DataKeys[dataItem.DisplayIndex].Value.ToString();
        //        name = abll.GetValue("name", "Id='" + ID + "' AND userID='"+Session["userID"]+"'");
        //        phone = abll.GetValue("phone", "Id='" + ID + "' AND userID='" + Session["userID"] + "'");
        //        Address1 = abll.GetValue("address", "Id='" + ID + "' AND userID='" + Session["userID"] + "'");
     
                                
        //    }
        //    if (String.Equals(e.CommandName, "DEL"))
        //    {

        //        ListViewDataItem dataItem = (ListViewDataItem)e.Item;
        //        ID = GridView1.DataKeys[dataItem.DisplayIndex].Value.ToString();
        //        abll.Delete(int.Parse(ID));
        //        readdata1();
        //    }
        //    if (String.Equals(e.CommandName, "EDIT"))
        //    {

        //        ListViewDataItem dataItem = (ListViewDataItem)e.Item;
        //        ID = GridView1.DataKeys[dataItem.DisplayIndex].Value.ToString();
        //        //编辑地址
        //        readdata1();
        //    }
        //}

        protected void lvwCarts_OnItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "CountAdd"))
            {

                ListViewDataItem dataItem1 = (ListViewDataItem)e.Item;
                string ID = lvwCarts.DataKeys[dataItem1.DisplayIndex].Value.ToString();
                foodname = gbll.GetValue("foodname", "Id='" + ID + "'");
                price = float.Parse(gbll.GetValue("price", "Id='" + ID + "'"));
                DataSet bnds = gbll.GetList("userid='" + Session["userID"] + "' AND foodname='" + foodname + "'");
                num1 = int.Parse(gbll.GetValue("count", "userid='" + Session["userID"] + "'AND foodname='" + foodname + "'"));
                num1++;
                gmodel = gbll.GetModel(int.Parse(ID));
                gmodel.count = num1;
                gbll.Update1(gmodel);
                readdata1();
            }

            if (String.Equals(e.CommandName, "CountSub"))
            {

                ListViewDataItem dataItem2 = (ListViewDataItem)e.Item;
                string ID = lvwCarts.DataKeys[dataItem2.DisplayIndex].Value.ToString();
                foodname = gbll.GetValue("foodname", "Id='" + ID + "'");
                price = float.Parse(gbll.GetValue("price", "Id='" + ID + "'"));
                DataSet bnds = gbll.GetList("userid='" + Session["userID"] + "'AND foodname='" + foodname + "'");
                num1 = int.Parse(gbll.GetValue("count", "userid='" + Session["userID"] + "'AND foodname='" + foodname + "'"));
                num1--;
                if (num1 > 0)
                {
                    gmodel = gbll.GetModel(int.Parse(ID));
                    gmodel.count = num1;
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
            
            if (s > 0)
            {
                TotalPrice = 0;
                for (i = 0; i < s; i++)
                {
                    foodname = dt1.Tables[0].Rows[i][2].ToString();
                    p = float.Parse(dt1.Tables[0].Rows[i][3].ToString());
                    c = int.Parse(dt1.Tables[0].Rows[i][4].ToString());
                    
                }

            }
            string selectedValue = Request.Form["RadioButton1"];
            Response.Write("<script>alert('" + selectedValue + "');</script>");

        }
      

    }
}