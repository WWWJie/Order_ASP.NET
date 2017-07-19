using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace wxx.order
{
    public partial class mobile_Index : System.Web.UI.MasterPage
    {
        wxx.BLL.kalonebasicinfo bll = new BLL.kalonebasicinfo();
        wxx.BLL.kaloneadmin ebll = new BLL.kaloneadmin();
        wxx.BLL.kaloneaddress abll = new BLL.kaloneaddress();
        wxx.BLL.kalonebusiness bbll = new BLL.kalonebusiness();
        wxx.BLL.kalonerelation rebll = new BLL.kalonerelation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["account"] != null && Session["apassword"] != null)
            {

                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = true;
                Panel5.Visible = true;
                Panel6.Visible = true;
                Panel7.Visible = false;
            }
            else
            {
                if (Session["Phone"] != null && Session["password"] != null)
                {

                    Panel2.Visible = false;
                    Panel3.Visible = false;
                    Panel4.Visible = true;
                    Panel5.Visible = true;
                    Panel6.Visible = false;
                    Panel7.Visible = false;

                }
                else
                {
                    Panel2.Visible = true;

                    Panel3.Visible = false;
                    Panel4.Visible = false;
                    Panel5.Visible = false;
                    Panel6.Visible = false;
                    Panel7.Visible = true;
                }
            }

            
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {

            DataSet dt = bll.GetList("phone='" + txtPhone.Value + "'and new1='" + txtPassword.Value + "'");
            DataSet dt1 = ebll.GetList("account='" + txtPhone.Value + "'and password='" + txtPassword.Value + "'");
            if (dt1.Tables[0].Rows.Count > 0)
            {
                Session["account"] = txtPhone.Value;
                Session["apassword"] = txtPassword.Value;
                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = true;
                Panel5.Visible = true;
                Panel6.Visible = true;
                Panel7.Visible = false;
            }
            else
            {
                if (dt.Tables[0].Rows.Count > 0)
                {
                    Session["Phone"] = txtPhone.Value;
                    Session["password"] = txtPassword.Value;
                    string userid = bll.GetValue("userID", "phone='" + Session["Phone"] + "'");
                    Session["userID"] = userid;
               
                   // Response.Write("<script>alert('登陆成功');</script>");
                    string jifen = rebll.GetValue("category", "userID='" + userid + "'");
                    string level = rebll.GetValue("level", "userID='" + userid + "'");
                    Session["jifen"] = jifen;
                    Session["level"] = level;
                    Panel2.Visible = false;
                    Panel3.Visible = false;
                    Panel4.Visible = true;
                    Panel5.Visible = true;
                    Panel6.Visible = false;
                    Panel7.Visible = false;
                    Response.Redirect(HttpContext.Current.Request.Path.ToString().Split('#')[0] + "#loginsuccess");
                }
                else
                {
                   // Response.Write("<script>alert('用户名或密码错误');</script>");
                    Response.Redirect(HttpContext.Current.Request.Path.ToString().Split('#')[0] + "#wronglogin");
                   // Response.Redirect(Request.RawUrl);
                }
            }
        }

        protected void lbtnEsc_Click(object sender, EventArgs e)
        {
            Session.Clear();

            Response.Redirect(Request.Url.ToString());
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            string userid = DateTime.Now.ToFileTime().ToString();
            string username = TextBox2.Text;
            string contact = TextBox1.Text;
            string phone = TextBox3.Text;
            string address = TextBox4.Text;
            string email = "";
            string qq = "";
            string new2 = "";
            string new1 = "";
            string new3 = "";
            if (TextBox5.Text != TextBox6.Text)
            {
              //  Response.Write("<script>alert('两次输入密码不同，请重新输入');</script>");
                Response.Redirect(HttpContext.Current.Request.Path.ToString().Split('#')[0] + "#passdiff");
            }
            else
            {
                string password = TextBox6.Text;
                bll.Add(userid, username, contact, phone, email, address, qq, password, new2);
                abll.Add(address, phone, contact, userid, new1, new3);
            }
        }
        protected void readdata()
        {

            DataSet dt = bbll.GetList("userID='" + Session["userID"] + "'");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            wxx.Model.kalonebusiness bmodel = new Model.kalonebusiness();
            int index = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "shouhuo")
            {
                GridViewRow row = GridView1.Rows[index];
                string Id = row.Cells[0].Text;
                bmodel = bbll.GetModel(int.Parse(Id));
                string status = row.Cells[5].Text;
                if (status == "已发货")
                {
                    bmodel.status = "已完成";
                    bmodel.finishTime = DateTime.Now.ToString();
                    bbll.Update1(bmodel);
                }
                else
                {
                 //   Response.Write("<script>alert('订单已完成或未接单，无法收货');</script>");

                    Response.Redirect(HttpContext.Current.Request.Path.ToString().Split('#')[0] + "#cantreceive");
                }
                readdata();
            }

        }
    }
}