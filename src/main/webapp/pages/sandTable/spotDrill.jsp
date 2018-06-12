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
<script type="text/javascript" src="<%=path %>/js/emergencyIntegrate/dragDiv.js"></script>
</head>
<style>
.help_step_box{background:white;height:55px;overflow:hidden;border:1px solid rgba(14, 74, 128,0.6);}
.help_step_item{float:left;height:55px;line-height:55px;padding:0 20px 0 40px;cursor:pointer;position:relative;font-size:14px;font-weight:bold;}
.help_step_num{width:19px;height:19px;line-height:19px;position:absolute;text-align:center;top:18px;left:20px;font-size:16px;font-weight:bold;color:gray;}
.help_step_set{background:rgba(14, 74, 128,1);color:#FFF;}
.help_step_hover{background:rgba(14, 74, 128,0.5);color:#FFF;}
.help_step_set .help_step_left{
	width: 0;
    height: 0;
    border-top: 10px solid transparent;
    border-bottom: 10px solid transparent;
    border-left: 10px solid white;
    position:absolute;
    left:0;
    top:17px;
}
.help_step_set .help_step_right{
	width: 0;
    height: 0;
    border-top: 10px solid transparent;
    border-bottom: 10px solid transparent;
    border-left: 10px solid rgba(14, 74, 128,1);
    position:absolute;
    right:-10px;
    top:17px;
}

.no-border{
	margin:0;
	padding:0;
	box-shadow: 1px black;
	background-color:rgba(84, 84, 84,0.1);
	transition: background-color 0.3s;
}

.unit-title{
	height:20px;
}

.unit{
	height:70px; 
}

.no-border:hover{
	background-color: rgba(50,50,50,0.4);  
	color:white;
	cursor:pointer;
}

.openHandler{
	background-color: rgba(50,50,50,0.4);  
	color:white;
	cursor:pointer;
}

.info-text{
	width:100%;
	height:20px;
	text-align: center;
	font-size:12px;
}

</style>
<body>
	<div id="map" style="width:100%;height:920px;"></div>
	<div id="divInfo" class="info portlet box blue-hoki" style="display: block;left:5%; top: 5%;">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>实时定位
				</div>
			</div>
			
			<div class="info-body" style="height: auto;overflow-y: scroll;">
				<div class="route-plan">
					<div class="route-plan-tit route-plan-sel" index="1">
						<div><span>筛选</span></div>
					</div>
					<div class="route-plan-cnt" style="display: block;">
						<div class="route-plan-box1">
							<div id="resourceTree" class="tree-demo"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<!-- <div id="divInfo" class="info portlet box blue-hoki" style="display: block;bottom:1%; right: 1%;">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>机场地理信息服务
				</div>
			</div>
			
			<div class="info-body" style="height: 198px;overflow-y: scroll;">
				<div class="row">
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
		</div> -->
</body>
<script type="text/javascript" src="<%=path %>/js/sandTable/mapData.js"></script>
<script type="text/javascript" src="<%=path %>/js/sandTable/mapConfig.js"></script>
<script type="text/javascript" src="<%=path %>/js/sandTable/gridWindow.js"></script>
<script type="text/javascript" src="<%=path %>/js/sandTable/markerHandler.js"></script> 
<script type="text/javascript" src="<%=path %>/js/drillManage/resourceTree.js"></script> 
<script type="text/javascript">
$(function() {
	$(".help_step_item").on("click",function(e){
		var num = $(this).children(".help_step_num").text();
		step_hover(num); 
		go_fa_step(num);
		for(i=1;i<=6;i++){
			$("#dropdown-body"+i).hide();
		}
		
		$("#dropdown-body"+num).show();
	});
	
	$(".route-plan-tit").click(function(e) {
		var folder = $(this).siblings(".route-plan-cnt");
		var index = $(this).attr("index");
		$(".route-plan-cnt").hide(400); 
		if(folder.css("display") == "none"){ 
			folder.show(400);
		}
		else{
			folder.hide(400); 
		}
	})
	
	$("#air-model").click(function(e) {
		var isChecked = $(this).prop("checked");
		var folder = $(this).parent().parent().siblings(".route-plan-cnt");
		if(isChecked){
			folder.show(400);
		}else{
			folder.hide(400); 	
		}
	})
	
	
	$("#hori-icon-locate").click(function() {
		var curMode = $(this).siblings(".hori-text");
		if(curMode.text()=='实时定位'){
			curMode.html("路线设计");
			$(this).attr("title","切换到实时定位模式");
		}else{
			curMode.html("实时定位");
			$(this).attr("title","切换到路线设计模式");
		}
		
	});
	
	$("#hori-flow-btn").click(function() {
		if($("#hori-flow").css("display")=="none"){
			$("#hori-flow").show(400);
			$("#hori-icon-device").removeClass("glyphicon-chevron-down");
			$("#hori-icon-device").addClass("glyphicon-chevron-up");
			$("#hori-alert").hide(400);
			$("#hori-icon-alert").addClass("glyphicon-chevron-down");
			$("#hori-icon-alert").removeClass("glyphicon-chevron-up");
		}else{
			$("#hori-flow").hide(400);
			$("#hori-icon-device").addClass("glyphicon-chevron-down");
			$("#hori-icon-device").removeClass("glyphicon-chevron-up");
		}
		
	});
	
	$("#hori-alert-btn").click(function() {
		if($("#hori-alert").css("display")=="none"){
			$("#hori-alert").show(400);
			$("#hori-icon-alert").removeClass("glyphicon-chevron-down");
			$("#hori-icon-alert").addClass("glyphicon-chevron-up");
		}else{
			$("#hori-alert").hide(400);
			$("#hori-icon-alert").addClass("glyphicon-chevron-down");
			$("#hori-icon-alert").removeClass("glyphicon-chevron-up");
		}
		
	});
	
	$("#hori-control-btn").click(function() {
		/* var curMode = $(this).children(".hori-icon");
		if(curMode.hasClass("glyphicon-play")){
			curMode.addClass("glyphicon-pause");
			curMode.removeClass("glyphicon-play");
		}else{
			curMode.addClass("glyphicon-play");
			curMode.removeClass("glyphicon-pause");
		} */
		run();
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
	
	
	
	$(".resourceCheck").click(function(){
		
	})
});
var sel = 1;
function go_fa_step(id){
	sel = id;
	for (i=1;i<=6;i++){
	  document.getElementById("fa_"+i).className='help_step_item';
	}
	document.getElementById("fa_"+id).className+=" help_step_set"
}

function step_hover(id){
	 for (i=1;i<=6;i++){
	  document.getElementById("fa_"+i).className='help_step_item';
	 }
	 document.getElementById("fa_"+sel).className+=" help_step_set";
	 document.getElementById("fa_"+id).className +=" help_step_hover";
}

</script>
</html>