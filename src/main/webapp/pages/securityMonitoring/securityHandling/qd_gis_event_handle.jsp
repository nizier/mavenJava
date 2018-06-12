<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header.jsp"%>
<%@include file="/pages/securityMonitoring/realTimeViewing/leftMenu.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>安全场景实时切换</title>
<link href="<%=path%>/css/video.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/css/lzz.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/js/dragDiv.js"></script>
<link href="<%=path %>/css/layout.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/custom.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/index.css"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/leaflet.css"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/leftbar.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/geography-left-menu.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/jquery-ui.css"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/statictable.css"/>
<link rel="stylesheet" href="<%=path %>/css/jquery.dataTables.css" type="text/css"/>
<link rel="stylesheet" href="<%=path %>/css/style.min.css" />
<link rel="stylesheet" href="<%=path %>/css/style.css" /> 
<link href="<%=path %>/css/components.css" id="style_components" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/custom.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/layout.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/ui-dialog.css"/>
<link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
<link href="<%=path %>/css/global.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/visual-scheduling.css" rel="stylesheet" type="text/css" />
</head>
<style type="text/css">
	.icon {color: gray;font-size: 14px;line-height: 12px;margin-left: 14px;}
	.icon:hover {font-size: 15px;}
	#remove-btn1 {color: white;left: 75%;position: relative;}	
	.op {background-color: white;border-radius: 5px;cursor: pointer;float: left;height: 70px;overflow: hidden;text-decoration: none;width: 94px;}
	.pagination {margin: 22px 0;}
	#remove-btn2 {color: white;left: 75%;position: relative;}
	#remove-btn3 {color: white;left: 75%;position: relative;}
	#remove-btn4 {color: white;left: 75%;position: relative;}
</style>
<body>	
	<div class="window" id="windowOne" style="display:none;">
		<div class="title-event">
			<span>安全事件</span>					
			<a class="glyphicon glyphicon-remove remove-btn" id="remove-btn1" onclick="removeWin($('#windowOne'));"></a>							
		</div>
		<div class="gis-content">
		<table class="table">
				<thead>
					<tr>
						<th>事件名称</th>
						<th>事件类别</th>
						<th>事件级别</th>
						<th>事件时间</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>摄像机故障</td>
						<td>公共安全类</td>
						<td>一级</td>
						<td>2017-01-10 10:22:21</td>
					</tr>
					<tr class="success">
						<td>登机口有危险物</td>
						<td>公共安全类</td>
						<td>三级</td>
						<td>2017-01-10 10:22:21</td>
					</tr>
					<tr class="error">
						<td>摄像机故障</td>
						<td>公共安全类</td>
						<td>一级</td>
						<td>2017-01-10 10:22:21</td>
					</tr>
					<tr class="warning">
						<td>摄像机故障</td>
						<td>公共安全类</td>
						<td>一级</td>
						<td>2017-01-10 10:22:21</td>
					</tr>
					<tr class="info">
						<td>摄像机故障</td>
						<td>公共安全类</td>
						<td>一级</td>
						<td>2017-01-10 10:22:21</td>
					</tr>
				</tbody>
			</table>
			<ul class="pagination" style="position:relative;bottom:38px;left:68px;">
				<li><a href="#">上一页</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">下一页</a></li>
			</ul>								
		</div>
	</div>
	<div class="window" id="windowTwo" style="display:none;">
		<div class="title-event">
			<span>视频列表</span>					
			<a class="glyphicon glyphicon-remove remove-btn" id="remove-btn2" onclick="removeWin($('#windowTwo'));"></a>				
		</div>				 
		<div class="gis-content">
		<table class="table">
				<thead>
					<tr>
						<th>设备编号</th>
						<th>设备名称</th>
						<th>所属楼层</th>
						<th>在线状态</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>T3-3F</td>
						<td>摄像头21</td>
						<td>T3三楼</td>
						<td>离线</td>
					</tr>
					<tr class="success">
						<td>T3-3F</td>
						<td>摄像头22</td>
						<td>T3三楼</td>
						<td>在线</td>
					</tr>
					<tr class="error">
						<td>T3-3F</td>
						<td>摄像头23</td>
						<td>T3三楼</td>
						<td>离线</td>
					</tr>
					<tr class="warning">
						<td>T3-3F</td>
						<td>摄像头23</td>
						<td>T3三楼</td>
						<td>离线</td>
					</tr>
					<tr class="info">
						<td>T3-3F</td>
						<td>摄像头23</td>
						<td>T3三楼</td>
						<td>离线</td>
					</tr>
				</tbody>
			</table>
			<ul class="pagination" style="position:relative;bottom:38px;left:68px;">
				<li><a href="#">上一页</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">下一页</a></li>
			</ul>								
		</div>
</div>

	<div class="window" id="windowThree" style="display:none;">
					<div class="title-event">
						<span>设备信息</span>
						<a class="glyphicon glyphicon-remove remove-btn" id="remove-btn3" onclick="removeWin($('#windowThree'));"></a>
					</div>
					<div class="gis-content">
						<table class="table">
					<thead>
						<tr>
							<th>设备编号</th>
							<th>设备名称</th>
							<th>所属楼层</th>
							<th>是否损坏</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>T3-3F</td>
							<td>摄像头21</td>
							<td>T3三楼</td>
							<td>已损坏</td>
						</tr>
						<tr class="success">
							<td>T3-3F</td>
							<td>摄像头22</td>
							<td>T3三楼</td>
							<td>正常</td>
						</tr>
						<tr class="error">
							<td>T3-3F</td>
							<td>摄像头23</td>
							<td>T3三楼</td>
							<td>正常</td>
						</tr>
						<tr class="warning">
							<td>T3-3F</td>
							<td>摄像头23</td>
							<td>T3三楼</td>
							<td>正常</td>
						</tr>	
						<tr class="info">
							<td>E3-3F</td>
							<td>灭火器23</td>
							<td>T3三楼</td>
							<td>正常</td>
						</tr>
					</tbody>
				</table>
				<ul class="pagination" style="position:relative;bottom:38px;left:68px;">
					<li><a href="#">上一页</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">下一页</a></li>
				</ul>								
			</div>
		</div>
		
		<div class="window" id="windowFour" style="display:none;">
					<div class="title-event">
						<span>人员分布</span>
						<a class="glyphicon glyphicon-remove remove-btn" id="remove-btn4" onclick="removeWin($('#windowFour'));"></a>
					</div>
			<div class="gis-content">
				<table class="table">
			<thead>
				<tr>
					<th>人员编号</th>
					<th>人员名称</th>
					<th>所在区域</th>
					<th>执行任务</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>A-011</td>
					<td>王飞</td>
					<td>T3三楼</td>
					<td>清除障碍</td>
				</tr>
				<tr class="success">
					<td>A-011</td>
					<td>王飞</td>
					<td>T3三楼</td>
					<td>清除障碍</td>
				</tr>
				<tr class="error">
					<td>A-011</td>
					<td>王飞</td>
					<td>T3三楼</td>
					<td>清除障碍</td>
				</tr>
				<tr class="warning">
					<td>A-011</td>
					<td>王飞</td>
					<td>T3三楼</td>
					<td>清除障碍</td>
				</tr>
				
				<tr class="info">
					<td>A-011</td>
					<td>王飞</td>
					<td>T3三楼</td>
					<td>清除障碍</td>
				</tr>
				
			</tbody>
		</table>
		<ul class="pagination" style="position:relative;bottom:38px;left:68px;">
			<li><a href="#">上一页</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">下一页</a></li>
		</ul>								
	</div>
</div>
		
		
	<div class="hori-menu" id="menu">
		<div id="safeEvent" class="op">
			<a class="glyphicon glyphicon-globe icon">安全事件</a>
		</div>
		<div   class="cutline"></div>
		<div id="videoList" class="op">
			<a class="glyphicon glyphicon-calendar icon">视频列表</a>
		</div>
		<div class="cutline"></div>
		<div id="equipmentInfomation" class="op">
			<a class="glyphicon glyphicon-calendar icon">设备信息</a>
		</div>
		<div class="cutline"></div>
		<div id="personalDistribution" class="op">
			<a class="glyphicon glyphicon-time icon">人员分布</a>
		</div>
	</div>
		
<div class="page-container">
	<div class="main">
	      <!-- 承载地图的div -->
		  <div id="scheduling_map"class="map fl"></div>
		  <div id="testvideo"></div>
	       <!--机场地理信息服务-->
	       <div class="geography" style="display:none">
	          <img src="<%=path %>/img/securityHanding/geography_title.png" alt="">           
	       </div>       
	</div>
</div>
<script type="text/javascript" src="<%=path %>/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=path %>/extends/leaflet-0.7.js" ></script>
<script type="text/javascript" src="<%=path %>/js/MovingMarker.js" ></script>
<script type="text/javascript" src="<%=path %>/js/Control.FullScreen.js" ></script>
<script type="text/javascript" src="<%=path %>/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="<%=path %>/js/scrollbar.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/layer.js" ></script>
<script type="text/javascript" src="<%=path %>/js/init.js" ></script>
<script type="text/javascript" src="<%=path %>/extends/echarts.js"></script>
<!-- 弹出框 -->
<script type="text/javascript" src="<%=path %>/js/dialog-plus.js" ></script>
<!-- 高德地图涉及的js-->
<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=d3acfe752801099b1a31afe817c6edcf&plugin=AMap.MouseTool"></script>
<script type="text/javascript" src="<%=path %>/js/visual-scheduling.js" ></script>
</body>
<script>
	//设置初始位置
	$(function(){  	
	    $('#windowOne').dragDrop();
	    $('#windowOne').css({'position':'absolute','left':'70%','top':'10%'}); //window1初始位置
	    $('#windowTwo').dragDrop();
	    $('#windowTwo').css({'position':'absolute','left':'70%','top':'32%'}); //window2初始位置
	    $('#windowThree').dragDrop();
	    $('#windowThree').css({'position':'absolute','left':'70%','top':'55%'}); //window3初始位置
	    $('#windowFour').dragDrop();
	    $('#windowFour').css({'position':'absolute','left':'70%','top':'78%'}); //window4初始位置
	});	
	//隐藏窗口
	function removeWin(e){
	e.addClass('hidden');
	}
	//弹出窗口
	function showWin(e){
	e.removeClass('hidden');
	}

	$(document).ready( function() {
		//initMap();
		//getMapInfo("<%=path %>");//加载地图		
		//添加摄像头
		addCameraMarker('<%=path %>');		
		//添加安保人员
		addSecurityGuardMark('<%=path %>');		
		//添加安全事件(航线相关)
		addEventMark1('<%=path %>');	
		//添加灭火器
		addFireExtinguisherMark('<%=path %>');		
	});
	
	$("#safeEvent").click(function(){
		$('#windowOne').toggle();	
		showWin($('#windowOne'));
	});
	$("#videoList").click(function(){
		$('#windowTwo').toggle();	
		showWin($('#windowTwo'));
	});
	$("#equipmentInfomation").click(function(){
		$('#windowThree').toggle();	
		showWin($('#windowThree'));
	});
	$("#personalDistribution").click(function(){
		$('#windowFour').toggle();	
		showWin($('#windowFour'));
	});
	
</script>

</html>