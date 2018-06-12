<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=path %>/css/sandTable/hori-menu.css" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/emergencyIntegrate/processingTab.css" rel="stylesheet" type="text/css"/>
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
<div class="row clearfix" style="">
	<div class="col-md-12 column" style="padding-right:0 !important;text-align: center;" >
		<div id="map" style="height:1020px;"></div>	 
	</div> 
	<div class="toolbar" style="padding-right:0 !important;position: absolute;left:0;z-index:1000;">
		<div class="video-tree video-window">
		 	<div class="video-window-title"><span>工具栏</span></div>
		 	
				<div id="divInfo" class="info"
					style="height: auto; display: block;">
					<div class="rm-scroll">
						<button class="btn btn-default btn-info control-btn" onclick="runRoute()">开始</button>
						<button class="btn btn-default btn-warning control-btn" onclick="pauseRoute()">暂停</button>
						<button class="btn btn-default btn-danger control-btn" onclick="stopRoute()">停止</button>
						<button class="btn btn-default btn-danger control-btn" onclick="clearRoute()">清除</button>
						<div class="route-plan" id="route-plan">
							<div class="func-title">移动<a></a></div>
							<div class="route-plan-cnt" style="display: block;">
								<div class="route-plan-box1">
									<div class="info-body" style="height: 198px;overflow-y: scroll;">
										<div class="row">
											<input type="hidden" id="drawLineType"/>
											<div class="col-md-4 move-btn">
												<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
													<img src="/EMS-Prototype/img/icon/doctor.png">
												</div>
												<div class="info-text" index="doctor">急救人员</div>
											</div>
											<div class="col-md-4 move-btn">
												<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
													<img src="/EMS-Prototype/img/icon/policeman.png">
												</div>
												<div class="info-text" index="policeman">安保人员</div>
											</div>
											<div class="col-md-4 move-btn">
												<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
													<img src="/EMS-Prototype/img/icon/firefighter.png">
												</div>
												<div class="info-text" index="firefighter">消防人员</div>
											</div>
											<div class="col-md-4 move-btn">
												<div style="width:100%;text-align: center;height:45px;padding-top:15px;">
													<img src="/EMS-Prototype/img/icon/ambulance.png">
												</div>
												<div class="info-text" index="firefighter">救护车</div>
											</div>
											
											<div class="col-md-4 move-btn">
												<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
													<img src="/EMS-Prototype/img/icon/fireCar.png">
												</div>
												<div class="info-text" index="fireCar">消防车</div>
											</div>
											
											<div class="col-md-4 move-btn">
												<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
													<img src="/EMS-Prototype/img/icon/policeCar.png">
												</div>
												<div class="info-text" index="policeCar">警车</div>
											</div>
											
											<div class="col-md-4 move-btn">
												<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
													<img src="/EMS-Prototype/img/icon/car.png">
												</div>
												<div class="info-text" index="car">车辆</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						<div class="route-plan">
							<div class="func-title">设施<a></a></div>
							<div class="route-plan-cnt" style="display: none;">
								<div class="route-plan-box1">
									<div class="col-md-4 no-border">
										<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
											<img src="/EMS-Prototype/img/icon/fireStation.png">
										</div>
										<div class="info-text" index="6">消防站</div>
									</div>
									
									<div class="col-md-4 no-border">
										<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
											<img src="/EMS-Prototype/img/icon/barrier.png">
										</div>
										<div class="info-text" index="7">路障</div>
									</div>
									
									<div class="col-md-4 no-border">
										<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
											<img src="/EMS-Prototype/img/icon/hospital.png">
										</div>
										<div class="info-text" index="8">医院</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="route-plan">
							<div class="func-title">待命<a></a></div>
							<div class="route-plan-cnt" style="display: none;">
								<div class="route-plan-box1">
									<div class="col-md-4 no-border">
										<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
											<img src="/EMS-Prototype/img/icon/doctor.png">
										</div>
										<div class="info-text" index="0">急救人员</div>
									</div>
									<div class="col-md-4 no-border">
										<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
											<img src="/EMS-Prototype/img/icon/policeman.png">
										</div>
										<div class="info-text" index="1">安保人员</div>
									</div>
									<div class="col-md-4 no-border">
										<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
											<img src="/EMS-Prototype/img/icon/firefighter.png">
										</div>
										<div class="info-text" index="2">消防人员</div>
									</div>
									<div class="col-md-4 no-border">
										<div style="width:100%;text-align: center;height:45px;padding-top:15px;">
											<img src="/EMS-Prototype/img/icon/ambulance.png">
										</div>
										<div class="info-text" index="3">救护车</div>
									</div>
									
									<div class="col-md-4 no-border">
										<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
											<img src="/EMS-Prototype/img/icon/fireCar.png">
										</div>
										<div class="info-text" index="4">消防车</div>
									</div>
									
									<div class="col-md-4 no-border">
										<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
											<img src="/EMS-Prototype/img/icon/policeCar.png">
										</div>
										<div class="info-text" index="5">警车</div>
									</div>
									
									<div class="col-md-4 no-border">
										<div style="width:100%;text-align: center;height:45px;padding-top:10px;">
											<img src="/EMS-Prototype/img/icon/car.png">
										</div>
										<div class="info-text" index="0">车辆</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="save-btn" onclick="saveAndQuit()">保存并返回</div>
				</div>
			</div>
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
		
		$(".no-border").click(function() {
			var res = $(this);
			 map.enableDragging();
			if(res.hasClass("openHandler")){
				res.removeClass("openHandler");
				var index = res.children(".info-text").attr("index");
				map.removeEventListener("click",markerHandler[index]);
			}else{
				var resAll = $(".no-border");
				resAll.removeClass("openHandler");
				res.addClass("openHandler");
				map.disableDragging();
				for(i in markerHandler){
					map.removeEventListener("click",markerHandler[i]);
				}
				var index = res.children(".info-text").attr("index");
				map.addEventListener("click",markerHandler[index]);
			}
		});
		
		$(".move-btn").click(function() {
			var res = $(this);
			 map.enableDragging();
			if(res.hasClass("openHandler")){
				res.removeClass("openHandler");
				myDrawingManagerObject.close();
			}else{
				var resAll = $(".move-btn");
				resAll.removeClass("openHandler");
				res.addClass("openHandler");
				map.disableDragging();
				var index = res.children(".info-text").attr("index");
				enableDrawLine(index);
			}
		});
		
		
	});
	var map = new BMap.Map('map');
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 15);
	var lushu = [];
	
	function runRoute(){
		for(i in lushu){
			lushu[i].start();
		}
		
	}
	function stopRoute(){
		for(i in lushu){
			lushu[i].stop();
		}
		
	}
	function pauseRoute(){
		for(i in lushu){
			lushu[i].pause();
		}
	}
	 function hideInfo(){
		for(i in lushu){
			lushu[i].hideInfoWindow();
		}
	}
	function showInfo(){
		for(i in lushu){
			lushu[i].showInfoWindow();
		}
	}
	
	function saveAndQuit(){
		window.location.href = "/EMS-Prototype/pages/sandTable/drillConfig.jsp";
	}
	
	
	
</script>
<script type="text/javascript" src="<%=path %>/js/sandTable/drillEditor.js"></script>
<script type="text/javascript" src="<%=path %>/js/sandTable/markerHandler.js"></script> 
</html>