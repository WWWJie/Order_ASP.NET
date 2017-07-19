<%@ Page Title="" Language="C#" MasterPageFile="~/mobile/Index.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="wxx.order.mobile_menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">



    <style>
  .pin-top {
    position: relative;
    z-index:2;
  }
  .pin-bottom {
    position: relative;
    z-index:0;
  }
  .pinned {
    position: fixed !important;
    z-index:2;
  }
  .klfloating{
      position: fixed;bottom: 20px;right: 25px;
      z-index:3;
  }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMain" runat="server">
<%--<div id="menu">
	<ul>
		<a href="menu.aspx?id=1" target="goodFrame"><li id="goods1">主食</li></a>
		<a href="menu.aspx?id=2" target="goodFrame"><li id="goods2">热菜系列</li></a>
		<a href="menu.aspx?id=3" target="goodFrame"><li id="goods3">经典凉拌</li></a>
		<a href="menu.aspx?id=4" target="goodFrame"><li id="goods4">海鲜盛宴</li></a>
		<a href="menu.aspx?id=5" target="goodFrame"><li id="goods5">传统烧烤</li></a>
		<a href="menu.aspx?id=6" target="goodFrame"><li id="goods6">餐后甜点</li></a>
	</ul>
</div>--%>

<%--<div class="goods goods<%=id %>" >
    <div id="groupaaa" runat="server"></div>
    <asp:ListView ID="lvwFoods" runat="server" 
        OnItemCommand="lvwFoods_OnItemCommand" DataKeyNames="Id" >
        
        <LayoutTemplate>
            <div runat="server" Id="itemPlaceholder" ></div>
        </LayoutTemplate>

        <ItemTemplate>
        	<div class="pruduct">
                <div style=" height:150px;">
		        <img src="../order/<%# Eval("pic")%>" width="223" height="150" border="0" alt="">
                </div>
		        <div class="goods_text">
			        <div class="name"><%# Eval("foodName")%></div>
			        <div class="price">￥<%# Eval("price")%></div>

                    <asp:LinkButton runat="server" CssClass="butnAdd"
                        ID="btnAddToCart" 
                        Text="加入订单" 
                        CommandName="AddToList" 
                        CommandArgument="Id" />
		        </div>
	        </div>        
        </ItemTemplate>
    </asp:ListView>
</div>--%>
    <div id="blue" class="block blue">
  <nav class="pushpin-demo-nav" data-target="blue">
    <div class="nav-wrapper light-blue">
        <a href="#" class="brand-logo">主食</a>
    </div>
  </nav>
  <div class="container">
    <asp:ListView ID="lvwFoods" runat="server" 
        OnItemCommand="lvwFoods_OnItemCommand" DataKeyNames="Id">
        
        <LayoutTemplate>
            <div style="padding-top:100px">
            <div runat="server" Id="itemPlaceholder" ></div>
            </div>
        </LayoutTemplate>

        <ItemTemplate>
            <div class="card"  id="food<%# Eval("id")%>">
                <div class="card-image waves-effect waves-block waves-light">
                  <img class="activator" src="../order/<%# Eval("pic")%>">
                </div>
                <div class="card-content">
                  <span class="card-title activator grey-text text-darken-4"><%# Eval("foodName")%></span>
                   <asp:LinkButton  runat="server" ID="btnAddToCart" style="color:black" CommandName="AddToList#0" CommandArgument="Id" Text="<i class='material-icons right'>plus_one</i>"/>
                  <p><a href="#">￥<%# Eval("price")%></a></p>
                </div>
                
              </div>
        </ItemTemplate>
    </asp:ListView>
    </div>
</div>

<div id="red" class="block red lighten-1">
  <nav class="pushpin-demo-nav" data-target="red">
    <div class="nav-wrapper red">
        <a href="#" class="brand-logo">热菜系列</a>
    </div>
  </nav>
<div class="container">
    <asp:ListView ID="lvwFoods1" runat="server" 
        OnItemCommand="lvwFoods_OnItemCommand" DataKeyNames="Id">
        
        <LayoutTemplate>
            <div style="padding-top:100px">
            <div runat="server" Id="itemPlaceholder" ></div>
            </div>
        </LayoutTemplate>

        <ItemTemplate>
            <div class="card"  id='food<%# Eval("id")%>'>
                <div class="card-image waves-effect waves-block waves-light">
                  <img class="activator" src="../order/<%# Eval("pic")%>">
                </div>
                <div class="card-content">
                  <span class="card-title activator grey-text text-darken-4"><%# Eval("foodName")%></span>
                   <asp:LinkButton  runat="server" ID="btnAddToCart" style="color:black" CommandName="AddToList#1" CommandArgument="Id" Text="<i class='material-icons right'>plus_one</i>"/>
                  <p><a href="#">￥<%# Eval("price")%></a></p>
                </div>
                
              </div>
        </ItemTemplate>
    </asp:ListView>
    </div>
</div>

<div id="green" class="block green lighten-1">
  <nav class="pushpin-demo-nav" data-target="green">
    <div class="nav-wrapper green">
        <a href="#" class="brand-logo">经典凉拌</a>
    </div>
  </nav>
    <div class="container">
    <asp:ListView ID="lvwFoods2" runat="server" 
        OnItemCommand="lvwFoods_OnItemCommand" DataKeyNames="Id">
        
        <LayoutTemplate>
            <div style="padding-top:100px">
            <div runat="server" Id="itemPlaceholder" ></div>
            </div>
        </LayoutTemplate>

        <ItemTemplate>
            <div class="card"  id='food<%# Eval("id")%>'>
                <div class="card-image waves-effect waves-block waves-light">
                  <img class="activator" src="../order/<%# Eval("pic")%>">
                </div>
                <div class="card-content">
                  <span class="card-title activator grey-text text-darken-4"><%# Eval("foodName")%></span>
                   <asp:LinkButton  runat="server" ID="btnAddToCart" style="color:black" CommandName="AddToList#2" CommandArgument="Id" Text="<i class='material-icons right'>plus_one</i>"/>
                  <p><a href="#">￥<%# Eval("price")%></a></p>
                </div>
                
              </div>
        </ItemTemplate>
    </asp:ListView>
        </div>
</div>
<div id="yellow" class="block yellow lighten-1">
  <nav class="pushpin-demo-nav" data-target="yellow">
    <div class="nav-wrapper yellow">
        <a href="#" class="brand-logo">海鲜盛宴</a>
    </div>
  </nav>
    <div class="container">
    <asp:ListView ID="lvwFoods3" runat="server" 
        OnItemCommand="lvwFoods_OnItemCommand" DataKeyNames="Id">
        
        <LayoutTemplate>
            <div style="padding-top:100px">
            <div runat="server" Id="itemPlaceholder" ></div>
            </div>
        </LayoutTemplate>

        <ItemTemplate>
            <div class="card"  id='food<%# Eval("id")%>'>
                <div class="card-image waves-effect waves-block waves-light">
                  <img class="activator" src="../order/<%# Eval("pic")%>">
                </div>
                <div class="card-content">
                  <span class="card-title activator grey-text text-darken-4"><%# Eval("foodName")%></span>
                   <asp:LinkButton  runat="server" ID="btnAddToCart" style="color:black" CommandName="AddToList#3" CommandArgument="Id" Text="<i class='material-icons right'>plus_one</i>"/>
                  <p><a href="#">￥<%# Eval("price")%></a></p>
                </div>
                
              </div>
        </ItemTemplate>
    </asp:ListView>
        </div>
</div>
<div id="purple" class="block  purple lighten-1">
  <nav class="pushpin-demo-nav" data-target="purple">
    <div class="nav-wrapper  purple">
        <a href="#" class="brand-logo">传统烧烤</a>
    </div>
  </nav>
    <div class="container">
    <asp:ListView ID="lvwFoods4" runat="server" 
        OnItemCommand="lvwFoods_OnItemCommand" DataKeyNames="Id">
        
        <LayoutTemplate>
            <div style="padding-top:100px">
            <div runat="server" Id="itemPlaceholder" ></div>
            </div>
        </LayoutTemplate>

        <ItemTemplate>
            <div class="card"  id='food<%# Eval("id")%>'>
                <div class="card-image waves-effect waves-block waves-light">
                  <img class="activator" src="../order/<%# Eval("pic")%>">
                </div>
                <div class="card-content">
                  <span class="card-title activator grey-text text-darken-4"><%# Eval("foodName")%></span>
                   <asp:LinkButton  runat="server" ID="btnAddToCart" style="color:black" CommandName="AddToList#4" CommandArgument="Id" Text="<i class='material-icons right'>plus_one</i>"/>
                  <p><a href="#">￥<%# Eval("price")%></a></p>
                </div>
                
              </div>
        </ItemTemplate>
    </asp:ListView>
        </div>
</div>
    <div class="goods goods<%=id %>" >
    <div id="groupaaa" runat="server"></div>
    
</div>

	<%--<div class="pruduct">
		<img src="images/jiaozi.jpg" width="223" height="150" border="0" alt="">
		<div class="goods_text">
			<div class="name">水晶饺子</div>
			<div class="price">￥20</div>
			<a href="#" class="butnAdd">加入订单</a>
		</div>
	</div>--%>
    <a class="klfloating btn-floating btn-large waves-effect waves-light red" style="" href="#modal1"><i class="material-icons">shopping_cart</i></a>

  <!-- Modal Structure -->
  <div id="modal1" class="modal bottom-sheet modal-fixed-footer" style="max-height: 65%;">
    <div class="modal-content">
      <h4>购物车<span class="right" style="font-size:18px;">总价<span>￥<%=TotalPrice %></span></span></h4>
      <div class="dingdan">
    <div id="Div1" runat="server"></div>
	<div class="dingdan_div">

    <ul>
    <asp:ListView ID="lvwCart" runat="server"
        OnItemCommand="lvwCart_OnItemCommand" DataKeyNames="Id" >

        <LayoutTemplate>
            <div class="collection">
                <div runat="server" id="itemPlaceholder" ></div>
            </div>
        </LayoutTemplate>
        
<%--        <GroupTemplate>
          <div runat="server" id="groupPlaceholder"></div>
        </GroupTemplate> --%>

        <ItemTemplate>
			<p class="collection-item"><span class="badge"><span>￥<%# Eval("price")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <asp:LinkButton ID="LinkButton1" style="font-size:25px;" runat="server"  Text="-" CommandName="CountSub" CommandArgument="Id" />
                <span>&nbsp;&nbsp;&nbsp;&nbsp;<%# Eval("count")%>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <asp:LinkButton ID="LinkButton2" style="font-size:20px;" runat="server" Text="+" CommandName="CountAdd" CommandArgument="Id" />
                </span><%# Eval("foodName")%></p>
        </ItemTemplate>
    </asp:ListView>
    </ul>
	</div>
         


</div>
    </div>
    <div class="modal-footer" style="height: 88px;">
          
        <span style="font-size:18px;">折扣<span><%=discount %>&nbsp;&nbsp;|&nbsp;&nbsp;</span></span><span style="font-size:18px;">外送费<span>￥0.00</span></span>
        <span style="font-size:18px;">&nbsp;&nbsp;|&nbsp;&nbsp;折后价<span style="color:#f00;font-size:22px;">￥<%=CartTotal %></span></span>
        <asp:Button ID="btnCreatOrder" runat="server" Text="立即下单" 
            class="modal-action modal-close waves-effect waves-light btn green" onclick="btnCreatOrder_Click" />
        
    </div>
  </div>


</asp:Content>
<asp:Content ContentPlaceHolderID="Contentfoot" runat="server">
    <script>

        $('.pushpin-demo-nav').each(function () {

            var $this = $(this);
           // $this.height($this.children().children().height())
            var $target = $('#' + $(this).attr('data-target'));
            $this.pushpin({
                offset: $("header").height(),
                top: $target.offset().top - $("header").height(),
                bottom: $target.offset().top + $target.outerHeight() - $this.height()
                
            });
            
        });
        var a;
        function changeURL(url) {
            window.history.pushState({}, 0, window.location.href + '#' + url);
        }
        $(document).ready(function () {
            
                
            if (document.cookie.replace(/(?:(?:^|.*;\s*)maodian\s*\=\s*([^;]*).*$)|^.*$/, "$1") != "") {
                changeURL(document.cookie.replace(/(?:(?:^|.*;\s*)maodian\s*\=\s*([^;]*).*$)|^.*$/, "$1").split("=")[1]);
                document.cookie = "maodian=;path=/";
            }
            $('.modal').modal({
                dismissible: true, // Modal can be dismissed by clicking outside of the modal
                opacity: .5, // Opacity of modal background
                in_duration: 300, // Transition in duration
                out_duration: 200, // Transition out duration
                starting_top: '3%', // Starting top style attribute
                ending_top: '7%', // Ending top style attribute
                ready: function (modal, trigger) { // Callback for Modal open. Modal and trigger parameters available.
                    document.cookie = "modalopen=true";
                    console.log(modal, trigger);
                },
                complete: function () { document.cookie = "modalopen=false"; } // Callback for Modal close
            });
            if (document.cookie.replace(/(?:(?:^|.*;\s*)modalopen\s*\=\s*([^;]*).*$)|^.*$/, "$1") == "true")
                $('#modal1').modal('open');


            $(".block nav").click(function () {

                $(".block nav").css("top", $("header").height())
                if ($(this).parent("div").children(".container").css("display")!="none")
                    $(this).parent("div").children("div.container").slideUp();
                else
                    $(this).parent("div").children("div.container").slideDown();
            });
        });
    </script>
</asp:Content>
