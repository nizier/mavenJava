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
<link href="<%=path%>/css/sandTable/startDrill.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=OlnDygyhVGjsqw9ucsUvYGs5ZzgeLxVD"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/DrawingManager/1.4/src/DrawingManager_min.js"></script>
<script type="text/javascript" src="<%=path %>/js/sandTable/LuShu.js"></script>
<script type="text/javascript" src="<%=path %>/js/drillManage/Math.uuid.js"></script>

<title>开始演练</title>
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
	.send-btn{
		height:34px;
		margin:5px 0 5px 0;
		border-radius: 0
	}
	
	.send-content{
		height:34px;
		width: 80%;
		margin:5px 0 5px 0;
		outline: none;
	}
	
</style>
</head>
<body>
<div class="row clearfix" style="">
	<input id="map-status" type="hidden" value="map1">
	<div class="col-md-12 column" style="padding-right:0 !important;text-align: center;" >
		<div id="map" style="height:880px;"></div>	
	</div>
	<div class="map2-container">
		<div id="map2-body" style="">
			<div id="map2"></div>
			<div id="map2-tools" onclick="closeMap2()">×</div>
		</div>
	</div>
	
	<div class="toolbar col-md-2" style="padding-right:0 !important;position: absolute;left:0;">
		<div class="video-tree video-window">
		 	<div class="video-window-title" style="text-align: center;"><span>工具栏</span></div>
				<div id="divInfo" class="info"
					style="height: auto; display: block;">
					<div class="rm-scroll">
						<button class="btn btn-default btn-info control-btn" onclick="runRoute()">开始</button>
						<button class="btn btn-default btn-warning control-btn" onclick="pauseRoute()">停止</button>
						<button class="btn btn-default btn-danger control-btn" onclick="clearRoute()">清除</button>
						<div class="magnifying" onclick="magnify()"></div>
						<div class="route-plan" id="route-plan">
							<div class="func-title">线路设计<a></a></div>
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
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="route-plan" id="route-plan">
							<div class="func-title">标注<a></a></div>
							<div class="route-plan-cnt" style="display: none;">
								<div class="route-plan-box1">
									<div class="info-body" style="height: 198px;overflow-y: scroll;">
										<div class="row">
											<input type="hidden" id="drawLineType"/>
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
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-5" style="padding-right:0 !important;position: absolute;right:10%;height:500px;right:0%;">
		<div class="toolbar col-md-5" style="padding-right:0 !important;">
			<div class="video-tree video-window">
			 	<div class="route-plan" id="route-info">
					<div class="chat-title">演练信息<a></a></div>
					<div class="route-plan-info" style="display: block;">
						<div class="route-plan-box1">
							<div class="info-body col-md-12" style="height: 360px;overflow-y: scroll;padding:0;margin:0;">
								<div class="log-container col-md-12">
									<div class="log-time">演练模拟场景</div>
									<div class="log-content">2015年6月 日11时整，T3航站楼出发2层桥面上3号进口处突然传来了爆炸声和多名群众的呼救声，
									机场公安局巡逻民警和驻场特警迅速赶到现场，
									发现有4名暴徒（均为男性）持刀正在砍杀出港旅客和送人的群众，
									并朝3号门内冲闯，同时向停放在T3航站楼3号门外一辆警车和1辆社会车辆投掷燃烧瓶....
									（详见《乌鲁木齐国际机场2015年度暴恐事件应急处置综合演练脚本》描述）。
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="toolbar col-md-7" style="padding-right:0 !important;">
			<div class="video-tree video-window">
			 	<div class="video-window-title"><span>工具栏</span></div>
				<div id="divInfo" class="info"
						style="height: auto; display: block;">
					<div class="rm-scroll">
						<div class="route-plan" id="route-plan">
							<div class="chat-title">演练动态<a></a></div>
							<div class="route-plan-info" style="display: block;">
								<div class="route-plan-box1">
									<div class="info-body col-md-12" id="info-body" style="height: 560px;overflow-y: scroll;padding:0;margin:0;">
									</div>
									<div class="row text-sender col-md-12" style="display: flex;padding:0;height: 45px;background-color: rgba(160,160,160,0.2)">
										<input type="text" class="send-content" id="send-content"/>
										<button class="btn btn-primary send-btn">发送</button>
									</div>
									<div class="back-btn col-md-6" onclick="quit()">返回</div>
									<div class="save-btn col-md-6" onclick="save()">保存</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>

<script type="text/javascript">
	$(function() {
		
		//发送实时消息
		 $(".send-btn").click(function(e) {
			 if ('WebSocket' in window) {
				 if (websocket.readyState !== 1) {
					 var host = window.location.host;
				        websocket = new WebSocket("ws://" + host + "<%=path%>/websocket");
				 }
			  }
			    else {
			        alert('当前浏览器 Not support websocket')
			    }
			 var content = $(".send-content").val();
			 var date = new Date();
			 var time = date.getHours() + ":" + date.getMinutes();
			 var sendData = {
				    	content:content,
				    	time: time,
				    	from:"指挥部",
				    	method:"text"
			    }
				websocket.send(JSON.stringify(sendData));
			 	$(".send-content").val("");
		 });
		
		//工具栏收缩
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
		var refer = ["doctor","policeman","firefighter","ambulance","fireCar","policeCar","fireStation","barrier","hospital"];
		$(".no-border").click(function() {
			if ('WebSocket' in window) {
		    	var host = window.location.host;
		        websocket = new WebSocket("ws://" + host + "<%=path%>/websocket");
		    }
		    else {
		        alert('当前浏览器 Not support websocket')
		    }
			var res = $(this);
			 map.enableDragging();
			if(res.hasClass("openHandler")){
				res.removeClass("openHandler");
				var index = res.children(".info-text").attr("index");
			}else{
				var resAll = $(".no-border");
				resAll.removeClass("openHandler");
				res.addClass("openHandler");
				map.disableDragging();
				var index = res.children(".info-text").attr("index");
				if($("#map-status").val()=="map1"){
					map.addEventListener("click",function addStayMarker(e){
						var sendData = {
						    	lng:e.point.lng,
						    	lat:e.point.lat,
						    	type:refer[index], 
						    	method:"stay",
						    	map:"map"
					    }
						websocket.send(JSON.stringify(sendData));
						map.removeEventListener("click",addStayMarker);
						map.enableDragging();
						resAll.removeClass("openHandler");
					});
				}else{
					map2.addEventListener("click",function addStayMarker2(e){
						var sendData = {
						    	lng:e.point.lng,
						    	lat:e.point.lat,
						    	type:refer[index], 
						    	method:"stay",
						    	map:"map2"
					    }
						websocket.send(JSON.stringify(sendData));
						map2.removeEventListener("click",addStayMarker2);
						map.enableDragging();
						resAll.removeClass("openHandler");
					});
				}
			}
		});
		
		
		//开始绘制路线
		$(".move-btn").click(function() {
			if($("#map-status").val()=="map1"){
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
			}else{
				showMsg("请关闭放大视图");
			}
			
		});
	});
	
	//声明地图对象map
	var map = new BMap.Map('map');
	map.centerAndZoom(new BMap.Point(116.568956,40.078727), 10);
	map.setMinZoom(15);
	
	var map2 = new BMap.Map('map2');
	map2.centerAndZoom(new BMap.Point(116.568956,40.078727), 15);
	//启用鼠标滑轮放大地图
	map.enableScrollWheelZoom();
	
	//禁用双击放大地图
	map.disableDoubleClickZoom();
	var lushu = [];
	//地图略缩图空间
	map.addControl(new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT,isOpen:true}));
	
	//开始移动
	function runRoute(){
		for(i in lushu){
			lushu[i].start();
		}	
	}
	
	//停止移动
	function stopRoute(){
		for(i in lushu){
			lushu[i].stop();
		}
	}
	
	//暂停移动
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
	
	//点击放大地图
	function magnify() {
		map.setDefaultCursor("url('/EMS-Prototype/img/icon/cursor_magnifying.png'),auto");
		//启用地图点击事件
		map.addEventListener("click",function magnifyClick(e){
			$("#map2-body").show(300);
			$("#map-status").val("map2");
			map2.centerAndZoom(new BMap.Point(e.point.lng,e.point.lat), 17);
			map.setDefaultCursor("url(http://api0.map.bdimg.com/images/openhand.cur) 8 8,default");
			map.removeEventListener("click",magnifyClick);
		});
	}
	
	function closeMap2(){
		$("#map2-body").hide(300);
		$("#map-status").val("map1");
	}
	
	//返回模拟演练列表
	function quit(){
		window.location.href = "/EMS-Prototype/pages/sandTable/drillManage.jsp";
	}
	
	//保存模拟演练信息
	function save(){
		showMsg("演练已保存");
	}
	
	 var websocket = null;
	    //判断当前浏览器是否支持WebSocket
	    if ('WebSocket' in window) {
	    	var host = window.location.host;
	        websocket = new WebSocket("ws://" + host + "<%=path%>/websocket");
	    }
	    else {
	        alert('当前浏览器 Not support websocket')
	    }

	    //连接发生错误的回调方法
	    websocket.onerror = function () {
	        setMessageInnerHTML("WebSocket连接发生错误");
	    };

	    //连接成功建立的回调方法
	    websocket.onopen = function () {
	        setMessageInnerHTML("WebSocket连接成功");
	    }

	    //接收到消息的回调方法
	    websocket.onmessage = function (event) {
	        setMessageInnerHTML(event.data);
	        var data =  JSON.parse(event.data);
	        if(data.method=="line"){
	        	var drawLineType =  data.type;
		        var lineArray = data.array;
		        var pois = [];
		        for(i in lineArray){
		        	pois.push(new BMap.Point(lineArray[i].lng,lineArray[i].lat));
		        }
		        	
		        
		        var polyline =new BMap.Polyline(pois, {
		        	   enableEditing: false,//是否启用线编辑，默认为false
		        	   enableClicking: true,//是否响应点击事件，默认为true
		        	   strokeWeight:'5',//折线的宽度，以像素为单位
		        	   strokeOpacity: 0.8,//折线的透明度，取值范围0 - 1
		        	   strokeColor:"#18a45b" //折线颜色
		        	});
		        	map.addOverlay(polyline);
		        	line.push(polyline);
		        for(i in lineArray){
		        	if(i==0){
		        		 var marker = createBlankMarker(lineArray[i].lng,lineArray[i].lat,drawLineType);
		            	map.addOverlay(marker);
		            	var opts = {
		            			  width : 300,     // 信息窗口宽度
		            			  height: 40,     // 信息窗口高度
		            			  title : "路线描述" , // 信息窗口标题
		            			  enableMessage:true,//设置允许信息窗发送短息
	            				};
		            	var html = "<div class='row'>";
		            	html += "<div class='col-md-9 no-blank'><input type='text' class='form-control no-radius'></div>";
		            	html += "<div class='no-blank col-md-3'><button type='button' class='btn btn-info no-radius'>保存</button></div>";
		            	html += "</div>";
		            	var infoWindow = new BMap.InfoWindow(html,opts); 
		        		marker.addEventListener("click", function(){          
		        			   this.openInfoWindow(infoWindow);
		        		});
		        		polyline.addEventListener("click", function(){          
		        			   marker.openInfoWindow(infoWindow);
		        		});
		            	line.push(marker); 
		        	}else if(i==lineArray.length - 1){
		            	var marker = createBlankMarker(lineArray[i].lng,lineArray[i].lat,'end');
		            	map.addOverlay(marker);
		            	line.push(marker);
		        	}
		        }
		        var icon =  new BMap.Icon('/EMS-Prototype/img/icon/'+drawLineType+'.png', new BMap.Size(30,30));
		        var speed = 20;
		        var rotation = false;
		        addRoute(lineArray,icon,speed,rotation);
	        }else if(data.method=="building"){
	        	
	        }else if(data.method=="stay"){
	        	if(data.map=='map'){
	        		var marker = createMarker(data.lng,data.lat,data.type);
					map.addOverlay(marker);
					line.push(marker);
	        	}else{
	        		var marker = createMarker(data.lng,data.lat,data.type);
	        		map2.addOverlay(marker);
	        		line.push(marker);
	        	}
				//marker.setAnimation(BMAP_ANIMATION_BOUNCE);
	        	
	        }else if(data.method=="text"){
	        	var strVar1 = "";
	        	strVar1 += "<div class=\"log-container col-md-12\">\n";
	        	strVar1 += "	<div class=\"log-time\">\n";
	        	strVar1 += "		"+data.from+": \n";
	        	strVar1 += "	<\/div>\n";
	        	strVar1 += "	<div class=\"log-content\">\n";
	        	strVar1 += "		"+data.content+"\n";
	        	strVar1 += "	<\/div>\n";
	        	strVar1 += "<\/div>\n";
	        	$("#info-body").append(strVar1);
	    		$('#info-body').scrollTop($('#info-body').height());
	        }
	        
	    }

	    //连接关闭的回调方法
	    websocket.onclose = function () {
	        setMessageInnerHTML("WebSocket连接关闭");
	    }

	    //监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
	    window.onbeforeunload = function () {
	        closeWebSocket();
	    }

	    //将消息显示在网页上
	    function setMessageInnerHTML(innerHTML) {
	        console.log(innerHTML);
	    }

	    //关闭WebSocket连接
	    function closeWebSocket() {
	        websocket.close();
	    }

	    //发送消息
	    function send() {
	        var message = document.getElementById('text').value;
	        websocket.send(message);
	    }
</script>
<script type="text/javascript" src="<%=path %>/js/sandTable/drillTogether2.js"></script>
<script type="text/javascript" src="<%=path %>/js/sandTable/markerHandler.js"></script> 
</html>