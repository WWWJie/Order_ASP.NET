<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Index.Master" AutoEventWireup="true" CodeBehind="Corder.aspx.cs" Inherits="wxx.order.mobile_Corder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">

    <link href="../../order/Css/head.css" rel="stylesheet" type="text/css" />
    
    
    <style type="text/css">
.hidden{ display:none}
/*评论浮动层*/
#smallLay{width:300px; height:280px;padding:4px 10px 10px;background-color:#eadbd4;border:1px solid #05549d;color:#333333;line-height:24px;text-align:left;-webkit-box-shadow:5px 2px 6px #000;-moz-box-shadow:3px 3px 6px #555;}
#edit{width:300px; height:280px;padding:4px 10px 10px;background-color:#eadbd4;border:1px solid #05549d;color:#333333;line-height:24px;text-align:left;-webkit-box-shadow:5px 2px 6px #000;-moz-box-shadow:3px 3px 6px #555;}
</style>

<link href="../../order/Css/Order.css" rel="stylesheet" type="text/css" />
<link href="../../order/Css/class.css" rel="stylesheet" type="text/css" />    
<script language="JavaScript" type="text/JavaScript">
    //改变图片大小
    
    function resizepic(thispic) {
        if (thispic.height > 80) thispic.height = 80;
    }
    function showid(idname) {
        var isIE = (document.all) ? true : false;
        var isIE6 = isIE && ([/MSIE (\d)\.0/i.exec(navigator.userAgent)][0][1] == 6);
        var newbox = document.getElementById(idname);
        newbox.style.zIndex = "9999";
        newbox.style.display = "block"
        newbox.style.position = !isIE6 ? "fixed" : "absolute";
        newbox.style.top = newbox.style.left = "50%";
        newbox.style.marginTop = -newbox.offsetHeight / 2 + "px";
        newbox.style.marginLeft = -newbox.offsetWidth / 2 + "px";
        var jihualayer = document.createElement("div");
        jihualayer.id = "jihualayer";
        jihualayer.style.width = jihualayer.style.height = "100%";
        jihualayer.style.position = !isIE6 ? "fixed" : "absolute";
        jihualayer.style.top = jihualayer.style.left = 0;
        jihualayer.style.backgroundColor = "#000";
        jihualayer.style.zIndex = "9998";
        jihualayer.style.opacity = "0.6";
        document.body.appendChild(jihualayer);
        var sel = document.getElementsByTagName("select");
        for (var i = 0; i < sel.length; i++) {
            sel[i].style.visibility = "hidden";
        }
        function jihualayer_iestyle() {
            jihualayer.style.width = Math.max(document.documentElement.scrollWidth, document.documentElement.clientWidth)
+ "px";
            jihualayer.style.height = Math.max(document.documentElement.scrollHeight, document.documentElement.clientHeight) +
"px";
        }
        function newbox_iestyle() {
            newbox.style.marginTop = document.documentElement.scrollTop - newbox.offsetHeight / 2 + "px";
            newbox.style.marginLeft = document.documentElement.scrollLeft - newbox.offsetWidth / 2 + "px";
        }
        if (isIE) { jihualayer.style.filter = "alpha(opacity=60)"; }
        if (isIE6) {
            jihualayer_iestyle()
            newbox_iestyle();
            window.attachEvent("onscroll", function () {
                newbox_iestyle();
            })
            window.attachEvent("onresize", jihualayer_iestyle)
        }
        jihualayer.onclick = function () {
            newbox.style.display = "none"; jihualayer.style.display = "none"; for (var i = 0; i < sel.length; i++) {
                sel[i].style.visibility = "visible";
            }
        }
    }
</script>
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
        .auto-style2 {
            height: 37px;
        }
        .auto-style3 {
            height: 36px;
        }
        .auto-style4 {
            height: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMain" runat="server">
    <div class="clear"></div>

<div style="width:1000px; margin:0 auto;">  
  <div id="contenter">
    <h1>复核并确认订单信息</h1>	
		<div class="content">

<!-------------------------------------------------------------->
<div class="OrderDetail">
	<div class="BasicInformation">
        <asp:ListView ID="address" runat="server" 
        OnItemCommand="address_OnItemCommand" DataKeyNames="Id" OnSelectedIndexChanged="address_SelectedIndexChanged" >
        
        <LayoutTemplate>
            <div runat="server" Id="itemPlaceholder" ></div>
        </LayoutTemplate>

<%--        <GroupTemplate>
          <div runat="server" id="groupPlaceholder"></div>
        </GroupTemplate>--%> 

        <ItemTemplate>
        	<div class="address" onmouseover="this.className='addressbar'" onmouseout="this.className='address'">
                <input name="Radio1" id="Radio1" type="radio"  value='<%# Eval("ID") %>' style="left:auto; opacity: 1; " onclick="setRadio(this);"/>
                
		        <div class="goods_text">
			        <div class="name"><%# Eval("name")%></div>
			        <div class="price"><%# Eval("address")%></div>
                    <div class="price"><%# Eval("phone")%></div>
			        <%--<a href="#" class="butnAdd">加入订单</a>--%>
                    
                    <asp:LinkButton runat="server" CssClass="butndel"
                        ID="DEL" 
                        Text="删除" 
                        CommandName="DEL" 
                        CommandArgument="Id" />
                    <%--<asp:LinkButton runat="server" 
                        
                        ID="EDIT" 
                        
                        CommandName="EDIT" 
                        CommandArgument="Id" />
                      <a onclick="showid('edit')">编辑</a>--%>
		        </div>
	        </div>        
        </ItemTemplate>
    </asp:ListView>
    <div class="add">
        

        
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
        

        
        <asp:LinkButton ID="LinkButton3" CssClass="butndel1"   runat="server" ForeColor="#9900CC" Font-Size="X-Large" ><a  onclick="showid('smallLay')" >+添加新地址</a></asp:LinkButton>
    </div>
    </div>
    
    <hr>
    <div class="BasicInformation">
        <h3>支付及配送方式       <p>支付方式：在线支付</p>
        <p>运    费：￥0.00</p>
        <p>送货日期：工作日、双休日与假日均可送货</p>
    </div>



<!-------------------------------------------------------------------------->
    <div class="GoodsDetail">
        
        <asp:ListView ID="lvwCarts" runat="server" 
            DataKeyNames="Id" DataKeys="Id"
            OnItemCommand="lvwCarts_OnItemCommand" >

            <LayoutTemplate>
              <table border=0 cellpadding=1 cellspacing=1>
                <tr>
                    
                    <th>商品名称</th>
                    
                    <th>单价</th>
                    <th>数量</th>
                </tr>
                <tr runat="server" id="groupPlaceholder" />
              </table>
            </LayoutTemplate>

            <GroupTemplate>
              <tr runat="server" id="ProductsRow">
                <td runat="server" id="itemPlaceholder" />
              </tr>          
            </GroupTemplate>        

            <ItemTemplate>
                <tr>
            	    <td><%#Eval("foodName") %></td>
            	    
            	    
            	    <td>￥ <%#Eval("price")%></td>
            	    <td>
                         <asp:LinkButton ID="LinkButton1" runat="server"  Text="-" CssClass="butnAdd"
                            CommandName="CountSub" CommandArgument="bbb" />
                         &nbsp;<%# Eval("count")%>&nbsp;
                         <asp:LinkButton ID="LinkButton2" runat="server" Text="+"  CssClass="butnAdd"
                            CommandName="CountAdd" CommandArgument="ddd" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
<!-------------------------------------------------------------------------->
    <div class="OrderTotal">
    	<div>
        	<p>商品总额：￥<%=TotalPrice %></p>
            <p>折扣：￥<%=discount %></p>
        	<p>运费：￥0.00</p>
        </div>
        <h3>总计：<span>￥<%=CartTotal %></span></h3>
        <asp:Button ID="btnCreateOrder" runat="server" Text="立即下单" CssClass="btnPay"  
            style="float:right;" onclick="btnCreateOrder_Click"/>
    </div>
    <div class="clear"></div>
    <div id="smallLay" style="display:none" >
	<table id="table1" runat="server">
                    <tr>
                        <td colspan="3"><h4 style=" text-align:left">添加新地址</h4></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">姓名：</td>
                        <td colspan="2" class="auto-style1">
                            <asp:TextBox ID="TextBox1" runat="server" Height="26px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">联系电话：</td>
                        <td colspan="2" class="auto-style2">
                          <asp:TextBox ID="TextBox2" runat="server" Height="26px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">地址：</td>
                        <td colspan="2" class="auto-style3">
                           <asp:TextBox ID="TextBox3" runat="server" Height="26px"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style4"><asp:Label ID="Message" ForeColor="Red" runat="server"/></td>
                        
                        <td class="auto-style4">
                            <asp:Button ID="Button2" runat="server" CssClass="btnPay" OnClick="Button2_Click1" Text="完成添加" /></td>

                       
                    </tr>
                </table>
        </div>
    <div id="edit" style="display:none" >
	<table id="table2" runat="server">
                    <tr>
                        <td colspan="3"><h4 style=" text-align:left">修改地址</h4></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">姓名：</td>
                        <td colspan="2" class="auto-style1">
                            <asp:TextBox ID="TextBox4" runat="server" Height="26px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">联系电话：</td>
                        <td colspan="2" class="auto-style2">
                          <asp:TextBox ID="TextBox5" runat="server" Height="26px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">地址：</td>
                        <td colspan="2" class="auto-style3">
                           <asp:TextBox ID="TextBox6" runat="server" Height="26px"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style4"><asp:Label ID="Label1" ForeColor="Red" runat="server"/></td>
                        
                        <td class="auto-style4">
                            <asp:Button ID="Button1" runat="server" CssClass="btnPay" OnClick="Button1_Click1" Text="确认修改" /></td>

                       
                    </tr>
                </table>
        </div>
  </div>

</div>
      </div>
    </div>
    

     
</asp:Content>
