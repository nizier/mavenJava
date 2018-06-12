<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/css/sandTable/hori-menu.css" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/emergencyIntegrate/processingTab.css" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/emergencyIntegrate/info.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=OlnDygyhVGjsqw9ucsUvYGs5ZzgeLxVD"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/DrawingManager/1.4/src/DrawingManager_min.js"></script>
<script type="text/javascript" src="<%=path %>/js/sandTable/LuShu.js"></script>
</head>
<body>
	<div id="map" style="width:100%;height:820px;"></div>
	<div id="result"></div>
	<button id="draw" onclick="enableDrawLine()">绘制</button>
	<button id="run">开始</button> 
	<button id="stop">停止</button> 
	<button id="pause">暂停</button> 
	<button id="hide">隐藏信息窗口</button> 
	<button id="show">展示信息窗口</button> 
	<script> 
	var map = new BMap.Map('map');
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 15);
	var lushu = [];
	
	$("run").onclick = function(){
		for(i in lushu){
			lushu[i].start();
		}
		
	}
	$("stop").onclick = function(){
		for(i in lushu){
			lushu[i].stop();
		}
		
	}
	$("pause").onclick = function(){
		for(i in lushu){
			lushu[i].pause();
		}
	}
	$("hide").onclick = function(){
		for(i in lushu){
			lushu[i].hideInfoWindow();
		}
	}
	$("show").onclick = function(){
		for(i in lushu){
			lushu[i].showInfoWindow();
		}
	}
	function $(element){
		return document.getElementById(element);
	}
</script> 
</body>
<script type="text/javascript" src="<%=path %>/js/sandTable/drillEditor.js"></script>
</html>