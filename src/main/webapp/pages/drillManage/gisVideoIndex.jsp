<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=path%>/css/sandTable/videoSharingIndex.css" rel="stylesheet" type="text/css"/>
<link href="<%=path%>/css/sandTable/info.css" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/sandTable/toolbar.css" rel="stylesheet" type="text/css"/>
<link href="<%=path%>/css/sandTable/securityVideo.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=OlnDygyhVGjsqw9ucsUvYGs5ZzgeLxVD"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/DrawingManager/1.4/src/DrawingManager_min.js"></script>
<script type="text/javascript" src="<%=path %>/js/sandTable/LuShu.js"></script>


<title>云台控制</title>
<style>
	body{
		 /* background-image:url("/EMS-Prototype/img/emergencyIntegrate/bg.jpg") !important;  */
	}
	#route-plan::-webkit-scrollbar{
		width: 1px;
	}
	.col-md-2{
		padding-left:5px;
		padding-right:5px;
	}
	.col-md-8{
		padding-left:5px;
		padding-right:5px;
	}
	
	.mybtn{
		margin-top:20px;
		width:110px;
		background-color: rgba(8, 110, 181,0.5);
	}
	
	.mybtn-r{
		margin-left:40px;
	}
	
	.jstree-default .jstree-clicked {
	    box-shadow: rgb(153, 153, 153) 0px 0px 1px inset;
	    background: rgba(190, 235, 255,0.3);
	    border-radius: 2px;
	}
	
	.jstree-default .jstree-hovered {
	    box-shadow: rgb(153, 153, 153) 0px 0px 1px inset;
	    background: rgba(190, 235, 255,0.3);
	    border-radius: 2px;
	}
	.dlshouwen-grid th{
		background-color: transparent !important;
	}
	
	.table-bordered>tbody>tr>td, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>td, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, .table-bordered>thead>tr>th {
    	border: 1px solid rgba(222,222,222,0.1);
	}
	
	.table-bordered>tbody>tr>td:hover{
		background-color: rgba(8, 110, 181,0.1);
	}
	
	.sbtn-blue{
		background-color: rgba(8, 110, 181,0.5);
		border:none;
	}
	.sbtn-search{
		background-color: rgba(8, 110, 181,0.5);
	}
	
</style>
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-2 column" style="padding-right:0 !important">
			<div class="video-tree video-window">
			 	<div class="video-window-title"><span>设备</span></div>
			 	
					<div id="divInfo" class="info"
						style="height: auto; display: block;">
						<div class="rm-scroll">
						<div class="route-plan" id="route-plan">
							<div class="func-title">设备树<a></a></div>
							<div class="route-plan-cnt" style="display: block;">
								<div class="route-plan-box1">
									
								</div>
							</div>
						
						<div class="route-plan">
							<div class="func-title">轮巡组<a></a></div>
							<div class="route-plan-cnt" style="display: none;">
								<div class="route-plan-box1">
									123
								</div>
							</div>
						</div>
						
						<div class="route-plan">
							<div class="func-title">设备分组<a></a></div>
							<div class="route-plan-cnt" style="display: none;">
								<div class="route-plan-box1">
									123
								</div>
							</div>
						</div>
						
						<div class="route-plan">
							<div class="func-title">收藏夹<a></a></div>
							<div class="route-plan-cnt" style="display: none;">
								<div class="route-plan-box1">
								123
								</div>
							</div>
						</div>
						
						<div class="route-plan">
							<div class="func-title">云台控制<a></a></div>
							<div class="route-plan-cnt" style="display: none;">
								<div class="route-plan-box1">
									213
								</div>
							</div>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>
		<div class="col-md-10 column" style="padding-right:0 !important;" >
			<div id="map" style="height:920px;"></div>	
		</div>
	</div>
</div>
</body>

<script type="text/javascript">
	$(function() {
		$(".func-title").click(function(e) {
			
			var folder = $(this).siblings(".route-plan-cnt");
			var index = $(this).attr("index");
			 $(".route-plan-cnt").hide(400); 
			if(folder.css("display") == "none"){
				/* var delbtn = '删除'
				$(this).children('a').html(delbtn); */
				folder.show(400);
			}
			else{
				$(this).children('a').html('');
				folder.hide(400);
			}
		})
		
		$(".func-title").children('a').click(function(e) {
			
		});
		
		$(".window-set").mouseover(function(e) {
			var pos = $(this).css("background-position");
			var posX = pos.substring(0,pos.indexOf('p'));
			posY = 25;
			var newPos = posX+"px"+" "+posY+"px";
			$(this).css("background-position",newPos);
		});
		
		$(".window-set").mouseout(function(e) {
			var pos = $(this).css("background-position");
			var posX = pos.substring(0,pos.indexOf('p'));
			var posY = 0;
			var newPos = posX+"px"+" "+posY+"px";
			$(this).css("background-position",newPos);
		});
		
	});
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
	
	
</script>
<script type="text/javascript" src="<%=path %>/js/sandTable/drillEditor.js"></script>
</html>