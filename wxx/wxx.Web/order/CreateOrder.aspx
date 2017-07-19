
<%@ Page Title="" Language="C#" MasterPageFile="~/order/Index.Master" AutoEventWireup="true" CodeBehind="CreateOrder.aspx.cs" Inherits="wxx.order.CreateOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
<link href="Css/Order.css" rel="stylesheet" type="text/css" />
<link href="../css/class.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/JavaScript">
    //改变图片大小
    function resizepic(thispic) {
        if (thispic.height > 80) thispic.height = 80;
    }
    function setRadio(nowRadio) {

        var myForm, objRadio;

        myForm = document.forms[0];

        for (var i = 0; i < myForm.length; i++) {

            if (myForm.elements[i].type == "radio") {

                objRadio = myForm.elements[i];

                if (objRadio != nowRadio && objRadio.name.indexOf("GridView1") > -1 && objRadio.name.indexOf("RadioButton1") > -1) {

                    if (objRadio.checked) {

                        objRadio.checked = false;

                    }

                }

            }

        }

    }
</script>
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
        <asp:GridView ID="GridView1" runat="server"  Width="781px" AutoGenerateColumns="False" >
                 <Columns>
                     <asp:TemplateField>

            <ItemTemplate>

       <input name="RadioButton1" id="RadioButton1" type="radio" value='<%# Eval("ID") %>' onclick="setRadio(this);" />

            </ItemTemplate>

         </asp:TemplateField>
                     <asp:BoundField DataField="name" HeaderText="姓名" />
                     <asp:BoundField DataField="address" HeaderText="地址" />
                     <asp:BoundField DataField="phone" HeaderText="电话号码" />

     </Columns>
        </asp:GridView>
    </div>
    <hr>
    <div class="BasicInformation">
        <h3>支付及配送方式</h3>
        <p>支付方式：在线支付</p>
        <p>运    费：￥0.00</p>
        <p>送货日期：工作日、双休日与假日均可送货</p>
    </div>



<!-------------------------------------------------------------------------->
    <div class="GoodsDetail">
        <asp:Label ID="Message" ForeColor="Red" runat="server"/>
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
        	<p>运费：￥0.00</p>
        </div>
        <h3>总计：<span>￥<%=TotalPrice %></span></h3>
        <asp:Button ID="btnCreateOrder" runat="server" Text="立即下单" CssClass="btnPay"  
            style="float:right;" onclick="btnCreateOrder_Click"/>
    </div>
    <div class="clear"></div>
<div>



<!------------------------------------------------------------->			
		</div>		
  </div>
</div>


</asp:Content>
