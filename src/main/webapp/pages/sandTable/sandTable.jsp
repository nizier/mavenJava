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
<script type="text/javascript">
   $(function(){  
         $('#processingTab').dragDrop(); 
        $('#processingTab').css({'position':'absolute','left':'42%','top':'15%'}); //window1初始位置

});
</script>
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
	<div id="map" style="width:100%;height:820px;"></div>
	<div id="editDrill" class="info portlet box blue-hoki" style="display: block;left:5%; top: 35%;display: none">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>演练流程信息
				</div>
			</div>
			
			<div class="info-body" style="height: 200px;overflow-y: scroll;padding:10px;text-align: center;">
				<div class="info-form"><span>演练名称：</span><input type="text" value="消防应急演练1"/></div>
				<div class="info-form"><span>演练单位：</span><input type="text" value="消防护卫部"/></div>
				<div class="info-form"><span>演练类型：</span><input type="text" value="桌面演练"/></div>
				<div class="info-form"><span>演练科目：</span><input type="text" value="drillsub_2"/></div>
				<div class="info-form"><span>演练人数：</span><input type="text" value="23"/></div>
				<div class="info-form"><span>演练车辆数：</span><input type="text" value="6"/></div>
				<div class="info-form">
					<span style="position: relative;bottom:30px;">演练流程：</span>
					<textarea name="eventLocation" style="position:relative;left:6px;width:125px;">
1、XXXXX
2、XXXXX
3、XXXXX
4、XXXXX
					</textarea>
				</div>
				<div style="margin:0 auto;">
					<button class="sbtn sbtn-blue" >保存</button>
					<button class="sbtn sbtn-blue" onclick="closeEditWin()">关闭</button>
				</div>
				
			</div>
		</div>
		
	<div id="divInfo" class="info portlet box blue-hoki" style="display: block;left:5%; top: 5%;">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>机场地理信息服务
				</div>
			</div>
			
			<div class="info-body" style="height: 200px;overflow-y: scroll;">
				<div class="route-plan">
					<div class="route-plan-tit route-plan-sel" index="1">
						<div><span>人员</span></div>
					</div>
					<div class="route-plan-cnt" style="display: block;">
						<div class="route-plan-box1">
							<table class="table duty-table" style="width:100%;margin:0;">
								<thead>
									<tr>
										<th style="text-align: center;">
											类型
										</th>
										<th style="text-align: center;">
											数量
										</th>
										<th style="text-align: center;">
											标注
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>急救人员</td>
										<td>20</td>
										<td><input type="checkbox"  class="resourceCheck" id="doctor"/></td>
									</tr>
									<tr>
										<td>消防人员</td>
										<td>20</td>
										<td><input type="checkbox" class="resourceCheck" id="firefighter"/></td>
									</tr>
									<tr>
										<td>安保人员</td>
										<td>20</td>
										<td><input type="checkbox" class="resourceCheck" id="policeman"/></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				<div class="route-plan">
					<div class="route-plan-tit route-plan-sel" index="1">
						<div><span>设施</span></div>
					</div>
					<div class="route-plan-cnt" style="display: block;">
						<div class="route-plan-box1">
							<table class="table duty-table" style="width:100%;margin:0;">
								<thead>
									<tr>
										<th style="text-align: center;">
											类型
										</th>
										<th style="text-align: center;">
											数量
										</th>
										<th style="text-align: center;">
											标注
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>消防站</td>
										<td>2</td>
										<td><input type="checkbox" class="resourceCheck" id="fireStation"/></td>
									</tr>
									<tr>
										<td>路障</td>
										<td>8</td>
										<td><input type="checkbox"  class="resourceCheck" id="barrier"/></td>
									</tr>
									<tr>
										<td>医院</td>
										<td>1</td>
										<td><input type="checkbox"  class="resourceCheck" id="hospital"/></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				<div class="route-plan">
					<div class="route-plan-tit route-plan-sel" index="1">
						<div><span>设备</span></div>
					</div>
					<div class="route-plan-cnt" style="display: block;">
						<div class="route-plan-box1">
							<table class="table duty-table" style="width:100%;margin:0;">
								<thead>
									<tr>
										<th style="text-align: center;">
											类型
										</th>
										<th style="text-align: center;">
											数量
										</th>
										<th style="text-align: center;">
											标注
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>消防车</td>
										<td>2</td>
										<td><input type="checkbox"  class="resourceCheck" id="fireCar"/></td>
									</tr>
									<tr>
										<td>急救车</td>
										<td>1</td>
										<td><input type="checkbox"  class="resourceCheck" id="ambulance"/></td>
									</tr>
									<tr>
										<td>警车</td>
										<td>8</td>
										<td><input type="checkbox"  class="resourceCheck" id="policeCar"/></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div id="divInfo" class="info portlet box blue-hoki" style="display: block;bottom:1%; right: 1%;">
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
		</div>
		
		
		<div class="navi-toolbar" style="width:auto;position:absolute;right:30px;top:20px;z-index:999;">
		<div class="hori">
			<div id="hori-menu">
				<div class="hori-op" id="locate-li">
					<a class="hori-text" >实时定位</a>	
					<span class="hori-icon glyphicon glyphicon-refresh" id="hori-icon-locate" title="切换到设计模式"></span>
				</div>
				
				<div class="hori-op"  id="hori-alert-btn">
					<a class="hori-text">演练</a>
					<span class="hori-icon glyphicon glyphicon-chevron-down" id="hori-icon-alert"></span>
				</div>
				
				<div class="hori-op" id="hori-flow-btn">
					<a class="hori-text">预案演练</a>
					<span class="hori-icon glyphicon glyphicon-chevron-down"  id="hori-icon-device"></span>
				</div>
				
				<div class="hori-op" id="hori-control-btn">
					<a class="hori-text">开始</a>
					<span class="hori-icon glyphicon glyphicon-play" id="hori-icon-play"></span>
				</div>
			</div>
			
			
			<div class="hori-dropdown hori-flow" id="hori-flow" style="display: none;padding:10px;">
				<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
					<div class="portlet-body form" style="width:100%;"> 						
				        <div class="form-group" style="line-height: 50px;margin-top:-8px;margin-right:10px;">
				    		预案名称：<input type="text" class="form-control" id="projectName" placeholder="请输入预案名称">
						</div>
						<div class="form-group" style="line-height: 50px;margin-top:-8px">
				    		演练状态：
				    		<select class="form-control">
				    			<option>请选择</option>
				    			<option>未演练</option>
				    			<option>演练中</option>
				    			<option>已完成</option>
				    		</select>
						</div>
						<button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 10px;margin-top:-8px">
							查询
						</button>
						<button type="button" id="editBtn" class="sbtn sbtn-blue" style="margin-left: 10px;margin-top:-8px">
		            		 编辑
		            	</button>
		            	<button type="button" id="delBtn" class="sbtn sbtn-blue" style="margin-left: 10px;margin-top:-8px">
		            		 演练
		            	</button>
					</div>
					
					<div class="portlet-body form" style="width:100%;"> 						
						
					</div>
				</form>
				
			    <div style="width:100%;height:340px;">
			    	<div id="eventListContainer" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
					<div id="eventPageContainer" class="dlshouwen-grid-toolbar-container"></div>
			    </div>
			</div>
			
			<div class="hori-dropdown hori-alert" id="hori-alert">
			    <ul>
			        <li id="accident-li">
			        	<a onclick="showAccidents(accidents);">救援</a>
			        </li>
			        <li id="construction-li">
			        	<a  onclick="showConstruction(construction)">航行</a>
			        </li>
			    </ul>
			</div>
		</div>
	</div>
	
	<div id="duty-info" class="info portlet box blue-hoki" style="display: none;left:5%; top: 60%;width:520px;height:300px;overflow:hidden;">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>预案流程
				</div>
			</div>
			<div class="info-body duty-info" style="text-align: center;height:300px;">
				<table class="table duty-table" style="width:500px;margin-bottom:10px">
				<thead>
					<tr>
						<th style="text-align: center;">
							处理阶段
						</th>
						<th style="text-align: center;">
							事件内容
						</th>
						<th style="text-align: center;">
							状态
						</th>
						<th style="text-align: center;">
							操作人员
						</th>
						<th style="text-align: center;">
							操作时间
						</th>
					</tr>
				</thead>
				<tbody>
					<tr class="success">
						<td>
							事件发生
						</td>
						<td>
							
						</td>
						<td>
							已完成
						</td>
						<td>
							翟章
						</td>
						<td>
							2018/02/01 16:14
						</td>
					</tr>
					
					<tr class="success">
						<td>
							事件信息传递
						</td>
						<td>
							
						</td>
						<td>
							已完成
						</td>
						<td>
							王蛤蛤
						</td>
						<td>
							2018/02/01 16:14
						</td>
					</tr>
					
					<tr class="success">
						<td>
							应急救援响应
						</td>
						<td>
							
						</td>
						<td>
							已完成
						</td>
						<td>
							王涛
						</td>
						<td>
							2018/02/01 16:14
						</td>
					</tr>
					
					<tr class="success">
						<td>
							应急救援处置
						</td>
						<td>
							
						</td>
						<td>
							已完成
						</td>
						<td>
							董大宝
						</td>
						<td>
							2018/02/01 16:14
						</td>
					</tr>
					
					<tr class="warning">
						<td>
							后期处置
						</td>
						<td>
							
						</td>
						<td>
							进行中
						</td>
						<td>
							董大宝
						</td>
						<td>
							2018/02/01 16:14
						</td>
					</tr>
					
					
					<tr class="danger">
						<td>
							机场恢复
						</td>
						<td>
							
						</td>
						<td>
							未进行
						</td>
						<td>
							董大宝
						</td>
						<td>
							2018/02/01 16:14
						</td>
					</tr>
				</tbody>
			</table>
			<div style="margin:0 auto;">
				<button class="sbtn sbtn-default" onclick="hideProcess();">关闭</button>
			</div>
		</div>
	</div>
	
	<div class="processingTab" id="processingTab" style="display:none;width:400px;text-align: center">
		<div class="portlet box blue-hoki">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>演练流程信息编辑
				</div>
			</div>
			<div class="portlet-body" style="text-align: center;height:150px">
				
				<div style="line-height: 44px;"><span style="display: inline-block;">演练状态：</span>
					<select class="form-control" style="display: inline-block;">
						<option>未演练</option>
						<option>演练中</option>
						<option>已完成</option>
					</select>
				</div>
			</div>	
			<div style="margin:0 auto;position: absolute; bottom: 20%;" class="col-md-12">
						<button class="sbtn sbtn-blue">保存</button>
						<button class="sbtn sbtn-default" onclick="editStatus();">关闭</button>
			</div>	
		</div>
	</div>
</body>
<script type="text/javascript" src="<%=path %>/js/sandTable/mapData.js"></script>
<script type="text/javascript" src="<%=path %>/js/sandTable/mapConfig.js"></script>
<script type="text/javascript" src="<%=path %>/js/sandTable/gridWindow.js"></script>
<script type="text/javascript" src="<%=path %>/js/sandTable/markerHandler.js"></script> 
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
		var type = $(this).attr("id");
		if(type=="hospital"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.hospital;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					hospitalMarker.push(marker);
					map.addOverlay(marker);
				}
				var points = [];
				for(i in hos){
					var point = new BMap.Point(hos[i][0],hos[i][1]);
					points.push(point);
				}
				map.setViewport(points);
			}else{
				for(i in hospitalMarker){
					map.removeOverlay(hospitalMarker[i]);
				}
			}
		}
		else if(type=="airplane"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.airplane;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					airplaneMarker.push(marker);
					map.addOverlay(marker);
				}
				var points = [];
				for(i in hos){
					var point = new BMap.Point(hos[i][0],hos[i][1]);
					points.push(point);
				}
				map.setViewport(points);
			}else{
				for(i in airplaneMarker){
					map.removeOverlay(airplaneMarker[i]);
				}
			}
		}
		else if(type=="ambulance"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.ambulance;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					ambulanceMarker.push(marker);
					map.addOverlay(marker);
				}
				var points = [];
				for(i in hos){
					var point = new BMap.Point(hos[i][0],hos[i][1]);
					points.push(point);
				}
				map.setViewport(points);
			}else{
				for(i in ambulanceMarker){
					map.removeOverlay(ambulanceMarker[i]);
				}
			}
		}
		else if(type=="barrier"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.barrier;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					barrierMarker.push(marker);
					map.addOverlay(marker);
				}
				var points = [];
				for(i in hos){
					var point = new BMap.Point(hos[i][0],hos[i][1]);
					points.push(point);
				}
				map.setViewport(points);
			}else{
				for(i in hospitalMarker){
					map.removeOverlay(hospitalMarker[i]);
				}
			}
		}
		else if(type=="doctor"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.doctor;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					doctorMarker.push(marker);
					map.addOverlay(marker);
				}
				var points = [];
				for(i in hos){
					var point = new BMap.Point(hos[i][0],hos[i][1]);
					points.push(point);
				}
				map.setViewport(points);
			}else{
				for(i in doctorMarker){
					map.removeOverlay(doctorMarker[i]);
				}
			}
		}
		else if(type=="fireCar"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.fireCar;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					fireCarMarker.push(marker);
					map.addOverlay(marker);
				}
				var points = [];
				for(i in hos){
					var point = new BMap.Point(hos[i][0],hos[i][1]);
					points.push(point);
				}
				map.setViewport(points);
			}else{
				for(i in fireCarMarker){
					map.removeOverlay(fireCarMarker[i]);
				}
			}
		}
		else if(type=="firefighter"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.firefighter;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					firefighterMarker.push(marker);
					map.addOverlay(marker);
				}
				var points = [];
				for(i in hos){
					var point = new BMap.Point(hos[i][0],hos[i][1]);
					points.push(point);
				}
				map.setViewport(points);
			}else{
				for(i in firefighterMarker){
					map.removeOverlay(firefighterMarker[i]);
				}
			}
		}
		else if(type=="fireStation"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.fireStation;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					fireStationMarker.push(marker);
					map.addOverlay(marker);
				}
				var points = [];
				for(i in hos){
					var point = new BMap.Point(hos[i][0],hos[i][1]);
					points.push(point);
				}
				map.setViewport(points);
			}else{
				for(i in fireStationMarker){
					map.removeOverlay(fireStationMarker[i]);
				}
			}
		}
		else if(type=="firewall"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.firewall;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					firewallMarker.push(marker);
					map.addOverlay(marker);
				}
				var points = [];
				for(i in hos){
					var point = new BMap.Point(hos[i][0],hos[i][1]);
					points.push(point);
				}
				map.setViewport(points);
			}else{
				for(i in firewallMarker){
					map.removeOverlay(firewallMarker[i]);
				}
			}
		}
		else if(type=="hydrant"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.hydrant;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					hydrantMarker.push(marker);
					map.addOverlay(marker);
				}
				var points = [];
				for(i in hos){
					var point = new BMap.Point(hos[i][0],hos[i][1]);
					points.push(point);
				}
				map.setViewport(points);
			}else{
				for(i in hydrantMarker){
					map.removeOverlay(hydrantMarker[i]);
				}
			}
		}
		else if(type=="policeCar"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.policeCar;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					policeCarMarker.push(marker);
					map.addOverlay(marker);
				}
				var points = [];
				for(i in hos){
					var point = new BMap.Point(hos[i][0],hos[i][1]);
					points.push(point);
				}
				map.setViewport(points);
			}else{
				for(i in policeCar){
					map.removeOverlay(policeCar[i]);
				}
			}
		}
		else if(type=="policeman"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.policeman;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					policemanMarker.push(marker);
					map.addOverlay(marker);
				}
				var points = [];
				for(i in hos){
					var point = new BMap.Point(hos[i][0],hos[i][1]);
					points.push(point);
				}
				map.setViewport(points);
			}else{
				for(i in policemanMarker){
					map.removeOverlay(policemanMarker[i]);
				}
			}
		}
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

function editStatus() {
	var tab = $("#processingTab");
	var list =$("#hori-flow");
	var normalInfo = $("#divInfo4");
	var dutyInfo = $("#divInfo5");
	if(tab.css("display")=="none"){
		tab.show(500);
		list.hide(500);
		normalInfo.hide(500);
		dutyInfo.hide(500);
	}else{
		$("#hori-flow").show(400);
		tab.hide(500);
	}
}

function showProcess() {
	$("#duty-info").show(300);
}

function hideProcess() {
	$("#duty-info").hide(300);
}
</script>
</html>