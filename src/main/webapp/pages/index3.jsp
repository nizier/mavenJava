<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<%@include file="/pages/inc/header3.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=path%>/css/index/font-awesome.min.css" />
<script type="text/javascript" src="<%=path%>/js/index/app.js"></script>
<script type="text/javascript" src="<%=path%>/js/index/util.js"></script>
</head>
<body class="sodb_index_body">
	<div class="wrapper">
	    <div class="header">
        	<div class="logo"></div>
	        <div class="nav">
	            <!-- <ul>
	                <li class="active">
	                    <a>业务应用</a>
	                    <div class="dropDown">
	                        <a title="进程补录" class="active"  href="delayFeedback.html">进程补录</a>
	                        <a title="旅客保障监控" class="" href="safeguardMonitor.html">旅客保障监控</a>
	                        <a title="航班保障" class="" href="flightGuarantee.html">航班保障</a>
	                        <a title="现场监察" class="" href="sceneMonitor.html">现场监察</a>
	                    </div> 
	                </li>
	                <li>
	                    <a>系统管理</a>
	                </li>
	            </ul> -->
	            
            <c:forEach var="app" items="${appList}">
				<div class="sodb-menu-context-list" left-menu="${app.uuid }">
					<div class="sodb-menu-context-bottom">${app.appName }</div>
				</div>
			</c:forEach>
        </div>
		        
	        <div class="user">
	            <div class="item name"><i></i>王大侠，您好！</div>
	            <div class="item post">
	                <i></i>
	                <div class="postTag">
	                    <a href="javascript:void(0)">AOC</a>
	                </div>
	            </div>
	            <div class="item logout"><i></i></div>
	        </div>
    	</div>
	</div>
	<%-- <div id="sodb-home-top" class="sodb_head">
		<div class="sodb-menu-context">
			<div class="sodb-menu-context-list" left-menu="menu-sys">
				<div class="sodb-menu-context-top sodb-menu-context-top-sys">&nbsp;</div>
				<div class="sodb-menu-context-bottom">应急救援管理</div>
			</div>

		</div>
		<div class="sodb-menu-top-right-area">
			<span class="sodb-menu-top-right-area-user">${user.userName }，您好！</span>
			<span id="exitSys" class="sodb-menu-top-right-area-exit">退出</span>
		</div>
	</diV> --%>
	<div id="sodb-index-area" class="sodb-index-home">
	    <%@include file="/pages/home.jsp"%>
	</div>
	<div id="sodb-context-area">
		<aside id="left-panel" class="icon-not" style=""> 
		<nav>
		<c:forEach var="app" items="${appList}">
			<ul id="${app.uuid}" class="menu-area">
<%-- 			<c:forEach var="module" items="${modelList}"> --%>
<%-- 				<c:if test="${'1' eq module.moduleLevel && '0' eq module.flag}"> --%>
<!-- 			    <li><a onclick="javascript:switchFrame(this);" -->
<%-- 							menu-url="<c:out value='${app.appContext}' /><c:out value='${module.moduleUrl}' />"><i class="fa fa-lg fa-fw fa-table"></i><span class="menu-item-parent">${module.moduleName}</span></a> --%>
<!-- 				</li> -->
<%-- 				</c:if> --%>
<%-- 			</c:forEach> --%>
			<c:forEach var="moduleGroup" items="${moduleEntities}">
				<c:if test="${app.uuid == moduleGroup.appId }">
				<c:choose>
				<c:when test="${'1' eq moduleGroup.moduleLevel && '1' eq moduleGroup.flag}">
			    <li><a><i class="fa fa-lg fa-fw fa-table"></i><span class="menu-item-parent">${moduleGroup.moduleName}</span></a>
					<ul>
					<c:forEach var="module" items="${modelList}">
					<c:if test="${module.moduleGroup == moduleGroup.uuid }">
						<li><a onclick="javascript:switchFrame(this);"
							menu-url="<c:out value='${app.appContext}' /><c:out value='${module.moduleUrl}' />">${module.moduleName}</a></li>
					</c:if>
					</c:forEach>
					</ul>
				</li>
				</c:when>
				<c:when test="${'1' eq moduleGroup.moduleLevel && '0' eq moduleGroup.flag}">
					<li><a onclick="javascript:switchFrame(this);"
							menu-url="<c:out value='${app.appContext}' /><c:out value='${moduleGroup.moduleUrl}' />"><i class="fa fa-lg fa-fw fa-table"></i><span class="menu-item-parent">${moduleGroup.moduleName}</span></a>
					</li>
				</c:when>
				<c:otherwise>
					<li><a><i class="fa fa-lg fa-fw fa-table"></i><span class="menu-item-parent">${moduleGroup.moduleName}</span></a>
					<ul>
						<li><a onclick="javascript:switchFrame(this);"
							menu-url="<c:out value='${app.appContext}' /><c:out value='${moduleGroup.moduleUrl}' />">${moduleGroup.moduleName}</a></li>
					</ul>
				</li>
				</c:otherwise>
				</c:choose>
				</c:if>
			</c:forEach>
			</ul>
		</c:forEach>
		</nav>
		<div><span class="minifyme"> 
			<i class="fa fa-angle-double-left" id="minifyme-icon"></i></span>
		</div>
	</aside>
	<div id="main" role="main"
			style="overflow-x: hidden; background-color: #dfdede; position: absolute; top: 100px; width: 100%;">
			<iframe id="mainFrame" name="mainFrame" frameborder="0"
				style="width: 83%;" src="#"></iframe>
		</div>
	</div>
</body>
<script type="text/javascript">
$(function() {
	$("body").css("overflow-x", "hidden");
	var height = document.body.clientHeight - 100;
	$("#main").css("min-height", height + "px");
	$("#mainFrame").css("min-height", height + "px");
	$(".minifyme").css("min-height", height + "px");
	$("#minifyme-icon").css("margin-top", (height/2) + "px");
	var width = window.innerWidth - 265;
	$('#mainFrame').css("width", width + "px");
	initMenu();
	$("#main").hide();
})

//初始化页面
function initMenu(){
	$("#sodb-index-area").show();
    $("#sodb-context-area").hide();
    $(".menu-area").each(function () {
        $(this).hide();
    });
}

//窗口调整大小时触发
window.onresize = function() {
	if ($("body").hasClass("minified")) {
		var width = window.innerWidth - 60;
		$('#mainFrame').css("width", width + "px");
	} else {
		var width = window.innerWidth - 265;
		$('#mainFrame').css("width", width + "px");
	}
}

//点击隐藏左菜单
$('.minifyme').click(function(e) {
	$('body').toggleClass("minified");
	if($("body").hasClass("minified")){
			var width = window.innerWidth - 60;
			$('#mainFrame').css("width", width + "px");
	    }else{
	    	var width = window.innerWidth - 265;
	    	$('#mainFrame').css("width",width+"px");
	    }
	e.preventDefault();
});

//点击左菜单栏触发
function switchFrame(obj) {
	var url = $(obj).attr('menu-url');
	$("#mainFrame").attr("src", url);
	$('nav li.active').removeClass("active");
	$(obj).parent().addClass("active");
	//根据菜单栏高度，重新设定高度
	setTimeout(setHeight,300);
}
//重新设定iframe框的高度
function setHeight(){
	var menu_height = $("#left-panel").height()+50;
	if(menu_height > 828){
		$("#main").css("min-height", menu_height + "px");
		$("#mainFrame").css("min-height", menu_height + "px");
		$(".minifyme").css("min-height", menu_height + "px");
		$("#minifyme-icon").css("margin-top", (height/2) + "px");
	} else {
		$("#main").css("min-height", 828 + "px");
		$("#mainFrame").css("min-height", 828 + "px");
		$(".minifyme").css("min-height", 828 + "px");
		$("#minifyme-icon").css("margin-top", 414 + "px");
	}
}

//退出按钮
$("#exitSys").click(function() {
	window.location.href = "<c:url value="/login/out" />";
})

$("a").click(function() {
	$(this).next().children(":first").children(":first").trigger("click");
})

//点击头部菜单触发
$(".sodb-menu-context-list").click(function(){
	$("#main").show();
    $(this).siblings().removeClass("sodb-menu-bk");
    $(this).addClass('sodb-menu-bk');
    var leftMenu = $(this).attr('left-menu');
    if(leftMenu == 'index-area'){
    	$("#sodb-context-area").hide();
    	$(".menu-area").each(function () {
            $(this).hide();
        });
    	$("#sodb-index-area").show();
    } else if(leftMenu == 'menu-situation'){
    	$("#sodb-index-area").hide();
    	$("#sodb-context-area").show();
        $(".menu-area").each(function () {
            $(this).hide();
        });
        $("#menu-situation").show();
        $("#menu-situation").children(":first").children(":first").trigger("click");
        $('body').addClass("minified");
        //重新调整宽度
        var width = window.innerWidth - 60;
		$('#mainFrame').css("width", width + "px");
    } else {
    	$("#sodb-index-area").hide();
    	$("#sodb-context-area").show();
        $(".menu-area").each(function () {
            $(this).hide();
        });
        $("#" + leftMenu).show();
    	$("#" + leftMenu).children(":first").children(":first").trigger("click");
    	$('body').removeClass("minified");
    	//重新调整宽度
    	var width = window.innerWidth - 265;
    	$('#mainFrame').css("width",width+"px");
    }
})
</script>
</html>