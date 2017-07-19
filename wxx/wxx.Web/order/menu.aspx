<%@ Page Title="" Language="C#" MasterPageFile="~/order/Index.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="wxx.order.menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
<link href="../css/menu.css" rel="stylesheet" type="text/css" />
<link href="../css/class.css" rel="stylesheet" type="text/css" />


<style type="text/css">
.dingdan
{
    float:right;
	padding:20px 10px;
	margin-top:10px;
	width:278px;
	background-color:#ffdd00;
}
.dingdan_div
{
	padding:10px;
	border:1px red solid;
}

.dingdan_div ul li
{
	list-style:none;
	line-height:25px;
	border-bottom:1px blue solid;
}
.dingdan_div span
{
	float:right;
}
.dingdan_div ul li span
{
	float:right;
}
.countAdd
{
	border:0px;
	background-color:#666666;
	border-radius:5px;
	color:#ffffff;
}
.countAdd:hover
{
	color:#000000;
}
.btnCreateOrder
{
	border:0px;
	background-color:red;
	font-weight:bold;
	height:30px;
	border-radius:5px;
	color:#ffffff;
}
.dingdan_div ul,.dingdan_div h2
{
	padding:0;
	margin:0;
}

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMain" runat="server">
<div id="menu">
	<ul>
		<a href="menu.aspx?id=1" target="goodFrame"><li id="goods1">主食</li></a>
		<a href="menu.aspx?id=2" target="goodFrame"><li id="goods2">热菜系列</li></a>
		<a href="menu.aspx?id=3" target="goodFrame"><li id="goods3">经典凉拌</li></a>
		<a href="menu.aspx?id=4" target="goodFrame"><li id="goods4">海鲜盛宴</li></a>
		<a href="menu.aspx?id=5" target="goodFrame"><li id="goods5">传统烧烤</li></a>
		<a href="menu.aspx?id=6" target="goodFrame"><li id="goods6">餐后甜点</li></a>
	</ul>
</div>

<div class="goods goods<%=id %>" >
    <div id="groupaaa" runat="server"></div>
    <asp:ListView ID="lvwFoods" runat="server" 
        OnItemCommand="lvwFoods_OnItemCommand" DataKeyNames="Id" >
        
        <LayoutTemplate>
            <div runat="server" Id="itemPlaceholder" ></div>
        </LayoutTemplate>

<%--        <GroupTemplate>
          <div runat="server" id="groupPlaceholder"></div>
        </GroupTemplate>--%> 

        <ItemTemplate>
        	<div class="pruduct">
                <div style=" height:150px;">
		        <img src="<%# Eval("pic")%>" width="223" height="150" border="0" alt="">
                </div>
		        <div class="goods_text">
			        <div class="name"><%# Eval("foodName")%></div>
			        <div class="price">￥<%# Eval("price")%></div>
			        <%--<a href="#" class="butnAdd">加入订单</a>--%>
                    <asp:LinkButton runat="server" CssClass="butnAdd"
                        ID="btnAddToCart" 
                        Text="加入订单" 
                        CommandName="AddToList" 
                        CommandArgument="Id" />
		        </div>
	        </div>        
        </ItemTemplate>
    </asp:ListView>
</div>

	<%--<div class="pruduct">
		<img src="images/jiaozi.jpg" width="223" height="150" border="0" alt="">
		<div class="goods_text">
			<div class="name">水晶饺子</div>
			<div class="price">￥20</div>
			<a href="#" class="butnAdd">加入订单</a>
		</div>
	</div>--%>

<div class="dingdan">
    <div id="Div1" runat="server"></div>
	<div class="dingdan_div"><h2>我的购物车</h2></div>
	<div class="dingdan_div">

    <ul>
    <asp:ListView ID="lvwCart" runat="server"
        OnItemCommand="lvwCart_OnItemCommand" DataKeyNames="Id" >

        <LayoutTemplate>
            <div runat="server" id="itemPlaceholder" ></div>
        </LayoutTemplate>
        
<%--        <GroupTemplate>
          <div runat="server" id="groupPlaceholder"></div>
        </GroupTemplate> --%>

        <ItemTemplate>
			<li>
			<p><%# Eval("foodName")%></p>
			     ￥<%# Eval("price")%><span><asp:LinkButton ID="LinkButton1" runat="server"  Text="-" CssClass="butnAdd"
                    CommandName="CountSub" CommandArgument="Id" />
                 &nbsp;<%# Eval("count")%>&nbsp;
                 <asp:LinkButton ID="LinkButton2" runat="server" Text="+"  CssClass="butnAdd"
                    CommandName="CountAdd" CommandArgument="Id" /> 
            </span>
			<div class="clear"></div>
			</li>
        </ItemTemplate>
    </asp:ListView>
    </ul>
	</div>
	<div class="dingdan_div">
		<br/>折扣<span>￥<%=discount %></span><br/>
        <br/>小计<span>￥<%=TotalPrice %></span>
        <br/>外送费<span>￥0.00</span><br/>
	</div>
    <div class="dingdan_div" >
        <asp:Button ID="btnCreatOrder" runat="server" Text="立即下单" 
            CssClass="btnCreateOrder" onclick="btnCreatOrder_Click" />
        <span>总计<span style="color:#f00;">￥<%=CartTotal %></span></span>
    </div>

</div>

</asp:Content>
