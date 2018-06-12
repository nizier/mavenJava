<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/pages/videoSharing/sharingService/leftMenu2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<!-- BEGIN 	left menu related css -->

<!-- BEGIN THEME STYLES 替换新样式-->
<link href="<%=path%>/css/layout.css" rel="stylesheet" type="text/css" />

<link href="<%=path%>/css/custom.css" rel="stylesheet" type="text/css" />
<!-- END THEME STYLES 替换新样式结束-->

<link rel="stylesheet" type="text/css" href="<%=path%>/css/index.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/css/leaflet.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/css/leftbar.css" />


<!-- leftMenu.jsp中的样式 -->
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/geography-left-menu.css" />


<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/jquery-ui.css" />
<!-- 右侧弹出窗口 -->
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/statictable.css" />
<link rel="stylesheet" href="<%=path%>/css/jquery.dataTables.css"
	type="text/css" />

<!-- 二级目录的css -->
<link rel="stylesheet" href="<%=path%>/css/style.min.css" />
<link rel="stylesheet" href="<%=path%>/css/style.css" />


<!-- END left menu related css -->

<link href="<%=path%>/css/video.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/css/lzz.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/extends/echarts.js"></script>
<script type="text/javascript" src="<%=path%>/js/dragDiv.js"></script>
<script type="text/javascript" src="<%=path%>/js/tableChanging.js"></script>
<script type="text/javascript">
   $(function(){  

        $('#window1').dragDrop();
        $('#window1').css({'position':'absolute','left':'73%','top':'15%'}); //window1初始位置
        $('#window2').dragDrop();
        $('#window2').css({'position':'absolute','left':'73%','top':'52%'}); //window2初始位置
});

//隐藏窗口
function removeWin(e){
	e.addClass('hidden');
}
//弹出窗口
function showWin(e){
	e.removeClass('hidden');
}

</script>

</head>
<body>
	<div class="window" id="window1">
		<div class="title-event">
			<span>视频设备列表</span> <a class="glyphicon glyphicon-remove remove-btn"
				id="remove-btn" onclick="removeWin($('#window1'));"></a>

		</div>

		<div class="gis-content">
			<table class="table" id="video-table">
				<thead>
					<tr>
						<th>设备编号</th>
						<th>设备名称</th>
						<th>区域</th>
						<th>在线状态</th>
						<th>运行状况</th>
					</tr>
				</thead>
				<tbody>
					<tr onclick="showDataOnButton(this,'single',0);">
						<td>MT001</td>
						<td>高清摄像头</td>
						<td>航站区</td>
						<td>在线</td>
						<td>正常</td>
					</tr>
					<tr onclick="showDataOnButton(this,'single',1);">
						<td>MT002</td>
						<td>高清摄像头</td>
						<td>航站区</td>
						<td>在线</td>
						<td>正常</td>
					</tr>
					<tr onclick="showDataOnButton(this,'single',2);">
						<td>PT001</td>
						<td>高清摄像头</td>
						<td>航站区</td>
						<td>在线</td>
						<td>正常</td>
					</tr>
					<tr onclick="showDataOnButton(this,'single',4);">
						<td>PT002</td>
						<td>高清摄像头</td>
						<td>航站区</td>
						<td>在线</td>
						<td>正常</td>
					</tr>
					<tr onclick="showDataOnButton(this,'single',5);">
						<td>PT003</td>
						<td>高清摄像头</td>
						<td>航站区</td>
						<td>离线</td>
						<td>正常</td>
					</tr>
				</tbody>
			</table>
			<ul class="pagination"
				style="position: relative; bottom: 38px; left: 68px;">
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


	<div class="window hidden" id="window2">
		<div class="title-event">
			<span>区域摄像头分布统计</span> <a class="glyphicon glyphicon-remove remove-btn"
				id="remove-btn2" onclick="removeWin($('#window2'));"></a>
			<div id="echart7" style="width:390px;height:230px;position:relative;bottom:20px"></div>	
		</div>

		<div class="gis-content"></div>

	</div>

	<div class="window hidden" id="window3">
		<div class="title-event">
			<span>窗口3</span> <a class="glyphicon glyphicon-remove remove-btn"
				id="remove-btn3" onclick="removeWin($('#window3'));"></a>

		</div>

		<div class="gis-content"></div>

	</div>


	 <div class="hori-menu" id="menu">
		<div class="op" id="op1">
			<a class="glyphicon glyphicon-globe icon"
				>设备列表</a>
		</div>
		<div class="cutline"></div>
		<div class="op" id="op2">
			<a class="glyphicon glyphicon-calendar icon">状态统计</a>
		</div>
		<div class="cutline"></div>
		<div class="op" id="op4">
			<a class="glyphicon glyphicon-time icon" onclick="startHot();">人员分布</a>
		</div>
	</div>  
	
	<script type="text/javascript">
	 $('#op1').click(function(){ 
		 $('#window1').toggle();
	 } );
	 $('#op2').click(function(){ 
		 showWin($('#window2'))
		 $('#window2').toggle();
	 } );
	
	
	</script>


	<div class="main" style="width: 100%; position: absolution;">






		<div id="leafletmap" class="map fl"></div>
		<!--机场地理信息服务-->





	</div>

	<!-- left menu related js -->
	<script type="text/javascript" src="<%=path%>/js/jquery-ui.js"></script>
	<script type="text/javascript" src="<%=path%>/extends/leaflet-0.7.js"></script>
	<script type="text/javascript" src="<%=path%>/js/MovingMarker.js"></script>
	<script type="text/javascript"
		src="<%=path%>/js/Control.FullScreen.js"></script>
	<script type="text/javascript"
		src="<%=path%>/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="<%=path%>/js/dataTables.bootstrap.js"></script>
	<script type="text/javascript" src="<%=path%>/js/scrollbar.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/layer.js"></script>
	<script type="text/javascript" src="<%=path%>/js/init.js"></script>
	<script type="text/javascript" src="<%=path%>/extends/echarts.js"></script>
	<!-- left menu related js -->

	<!-- 弹出框 -->
	<script type="text/javascript" src="<%=path%>/js/dialog-plus.js"></script>

	<script type="text/javascript" src="<%=path%>/js/dialog-plus.js"></script>
	<script type="text/javascript"
		src="http://webapi.amap.com/maps?v=1.3&key=d3acfe752801099b1a31afe817c6edcf&plugin=AMap.Autocomplete,AMap.PlaceSearch"></script>
	<!-- <script type="text/javascript"
		src="http://cache.amap.com/lbs/static/addToolbar.js"></script> -->
	<script type="text/javascript"
		src="//a.amap.com/amap-ui/static/1.0/ui/misc/MarkerList/examples/jquery.twbsPagination.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/initQdMap.js"></script>
	<script src="//webapi.amap.com/ui/1.0/main.js"></script>
</body>
<script type="text/javascript">
  var AllCamera =[[116.612801,40.077473],[116.612745,40.077109],
                 [116.612536,40.076241],[116.610326,40.077432],
                 [116.610932,40.076697],[116.611388,40.075773], 
                 [116.611479,40.075006],[116.612675,40.075248],//损坏摄像头
                 [116.611452,40.077711],[116.611892,40.076126],[116.612504,40.077124]]; //离线摄像头
  var normalCamera = [[116.612801,40.077473],[116.612745,40.077109],
                     [116.612536,40.076241],[116.610326,40.077432],
                     [116.610932,40.076697],[116.611388,40.075773]];
                 
  var damageCamera =[[116.611479,40.075006],[116.612675,40.075248]];
  var offlineCamera =[[116.611452,40.077711],[116.611892,40.076126],[116.612504,40.077124]];
  
  addAllCameraMark('<%=path%>');
  
  
  		
       $(document).ready( function() {
   		addSxtMark('<%=path%>');
   		initMap();
   		//getMapInfo("<%=path%>");//加载地图
		marker.setMap(map);
	});
       
       function showData(e,type,param){
    	   
    	   if(type=='single'){
			   addOneCameraMark('<%=path%>', param);
    	   }
			 
    		   if(type=='all'){
    			   showWin($('#window1')); 
    			   showWin($('#window2')); 
    			   addAllCameraMark('<%=path%>');
    			   $('#video-table').html(allCameraConditionTable);
    			   
    		   }
    		   else if(type=='offline'){
        			   showWin($('#window1')); 
        			   addOfflineCameraMark('<%=path%>');
        			   $('#video-table').html(offlineCameraConditionTable);
        			   
        		   }
    		   
    		   else if(type=='damage'){
    			   showWin($('#window1')); 
    			   addDamageCameraMark('<%=path%>');
    			   $('#video-table').html(offlineCameraConditionTable);
    			   
    		   }
    		   
    		    if(e.checked){
    	        	  
    	           }else{
    	        	   removeWin($('#window1'));
    	        	   removeWin($('#window2'));
    	        	   clearAllCovers();
    	           }
    	          
    	 
    	   
       }
       
       
 function showDataOnButton(e,type,param){
    	   
    	   if(type=='single'){
			   addOneCameraMark('<%=path%>', param);
    	   }
			 
    		   if(type=='all'){
    			   showWin($('#window1')); 
    			   addAllCameraMark('<%=path%>');
    			   $('#video-table').html(allCameraTable);
    			   
    		   }
    		   else if(type=='offline'){
        			   showWin($('#window1')); 
        			   addOfflineCameraMark('<%=path%>');
        			   $('#video-table').html(offlineCameraTable);
        			   
        		   }
    		   
    		   else if(type=='damage'){
    			   showWin($('#window1')); 
    			   addDamageCameraMark('<%=path%>');
    			   $('#video-table').html(offlineCameraTable);
    			   
    		   }
    		   else if(type=='search'){
    			   showWin($('#window1')); 
    			   addFloorCameraMark('<%=path%>');
    			   $('#video-table').html(offlineCameraTable);
    			   
    		   }
    		   
    		  
      
    	   
    	 
    	   
       }
       

	function addOneCameraMark(rootUrl, i) {
		clearAllCovers();
		iconUrl = rootUrl + "/img/GisLocation/camera.png";
		icon = new AMap.Icon({
			size : new AMap.Size(24, 24), //图标大小
			image : iconUrl,
		});

		marker = new AMap.Marker({
			position : AllCamera[i],
			map : map,
			icon : icon
		});
		var html = '<div class="layer-content" style="">';
		html += '<table>';
		html += '<tr>';
		html += '<th>设备编号：</th>';
		html += '<td>T2-4F</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>设备名称：</th>';
		html += '<td>T2-4F</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>所属楼层</th>';
		html += '<td>T2航站楼3层</td>';
		html += '</tr>';
		html += '</tr>';
		html += '<th>经纬度：</th>';
		html += ' <td>116.612418,40.076257</td>';
		html += '</tr>'
		html += '<tr>';
		html += '<th>在线状态</th>';
		html += '<td>在线</td>';
		html += '</tr>';
		html += ' <tr>';
		html += '<th>故障信息</th>';
		html += '<td>无</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>处理状态：</th>';
		html += ' <td>未处理</td>';
		html += '</tr>';
		html += '<tr>';

		html += '</table>';
		html += '</div>';
		

		marker.content = html;
		marker.on('mouseover', markerClick);
		//    		    marker.emit('click', {target: marker});

	}

	function addOneOfflineCameraMark(rootUrl, i) {
		clearAllCovers();
		iconUrl = rootUrl + "/img/GisLocation/camera_offline.png";
		icon = new AMap.Icon({
			size : new AMap.Size(24, 24), //图标大小
			image : iconUrl,
		});

		marker = new AMap.Marker({
			position : offlineCamera[0],
			map : map,
			icon : icon
		});
		var html = '<div class="layer-content" style="">';
		html += '<table>';
		html += '<tr>';
		html += '<th>设备编号：</th>';
		html += '<td>T2-4F</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>设备名称：</th>';
		html += '<td>T2-4F</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>所属楼层</th>';
		html += '<td>T2航站楼3层</td>';
		html += '</tr>';
		html += '</tr>';
		html += '<th>经纬度：</th>';
		html += ' <td>116.612418,40.076257</td>';
		html += '</tr>'
		html += '<tr>';
		html += '<th>在线状态</th>';
		html += '<td>在线</td>';
		html += '</tr>';
		html += ' <tr>';
		html += '<th>故障信息</th>';
		html += '<td>无</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>处理状态：</th>';
		html += ' <td>未处理</td>';
		html += '</tr>';
		html += '<tr>';

		html += '</table>';
		html += '</div>';
		

		marker.content = html;
		marker.on('mouseover', markerClick);
		//    		    marker.emit('click', {target: marker});

	}

	function addOneDamageCameraMark(rootUrl) {
		clearAllCovers();
		iconUrl = rootUrl + "/img/GisLocation/camera_damage.png";
		icon = new AMap.Icon({
			size : new AMap.Size(24, 24), //图标大小
			image : iconUrl,
		}); 

		marker = new AMap.Marker({
			position : damageCamera[0],
			map : map,
			icon : icon
		});
		var html = '<div class="layer-content" style="">';
		html += '<table>';
		html += '<tr>';
		html += '<th>设备编号：</th>';
		html += '<td>T2-4F</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>设备名称：</th>';
		html += '<td>T2-4F</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>所属楼层</th>';
		html += '<td>T2航站楼3层</td>';
		html += '</tr>';
		html += '</tr>';
		html += '<th>经纬度：</th>';
		html += ' <td>116.612418,40.076257</td>';
		html += '</tr>'
		html += '<tr>';
		html += '<th>在线状态</th>';
		html += '<td>在线</td>';
		html += '</tr>';
		html += ' <tr>';
		html += '<th>故障信息</th>';
		html += '<td>无</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>处理状态：</th>';
		html += ' <td>未处理</td>';
		html += '</tr>';
		html += '<tr>';

		html += '</table>';
		html += '</div>';
		


		marker.content = html;
		marker.on('mouseover', markerClick);

	}

	function addAllCameraMark(rootUrl) {
		clearAllCovers();
		iconUrl1 = rootUrl + "/img/GisLocation/camera.png";
		iconUrl2 = rootUrl + "/img/GisLocation/camera_damage.png";
		iconUrl3 = rootUrl + "/img/GisLocation/camera_offline.png";
		icon1 = new AMap.Icon({
			size : new AMap.Size(24, 24), //图标大小
			image : iconUrl1,
		});
		icon2 = new AMap.Icon({
			size : new AMap.Size(24, 24), //图标大小
			image : iconUrl2,
		});
		icon3 = new AMap.Icon({
			size : new AMap.Size(24, 24), //图标大小
			image : iconUrl3,
		});
		for (var i = 0; i < lnglats.length; i++) {

			marker = new AMap.Marker({
				position : AllCamera[i],
				map : map,
				icon : icon1
			});

			var html = '<div class="layer-content" style="">';
			html += '<table>';
			html += '<tr>';
			html += '<th>设备编号：</th>';
			html += '<td>T2-4F</td>';
			html += '</tr>';
			html += '<tr>';
			html += '<th>设备名称：</th>';
			html += '<td>T2-4F</td>';
			html += '</tr>';
			html += '<tr>';
			html += '<th>所属楼层</th>';
			html += '<td>T2航站楼3层</td>';
			html += '</tr>';
			html += '</tr>';
			html += '<th>经纬度：</th>';
			html += ' <td>116.612418,40.076257</td>';
			html += '</tr>'
			html += '<tr>';
			html += '<th>在线状态</th>';
			html += '<td>在线</td>';
			html += '</tr>';
			html += ' <tr>';
			html += '<th>故障信息</th>';
			html += '<td>无</td>';
			html += '</tr>';
			html += '<tr>';
			html += '<th>处理状态：</th>';
			html += ' <td>未处理</td>';
			html += '</tr>';
			html += '<tr>';

			html += '</table>';
			html += '</div>';
			


			marker.content = html;
			marker.on('mouseover', markerClick);
			//    		    marker.emit('click', {target: marker});
		}

		marker = new AMap.Marker({
			position : damageCamera[0],
			map : map,
			icon : icon2
		});

		var html = '<div class="layer-content" style="">';
		html += '<table>';
		html += '<tr>';
		html += '<th>设备编号：</th>';
		html += '<td>T2-4F</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>设备名称：</th>';
		html += '<td>T2-4F</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>所属楼层</th>';
		html += '<td>T2航站楼3层</td>';
		html += '</tr>';
		html += '</tr>';
		html += '<th>经纬度：</th>';
		html += ' <td>116.612418,40.076257</td>';
		html += '</tr>'
		html += '<tr>';
		html += '<th>在线状态</th>';
		html += '<td>在线</td>';
		html += '</tr>';
		html += ' <tr>';
		html += '<th>故障信息</th>';
		html += '<td>无</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>处理状态：</th>';
		html += ' <td>未处理</td>';
		html += '</tr>';
		html += '<tr>';

		html += '</table>';
		html += '</div>';
		


		marker.content = html;
		marker.on('mouseover', markerClick);

		marker = new AMap.Marker({
			position : offlineCamera[0],
			map : map,
			icon : icon3
		});
		var html = '<div class="layer-content" style="">';
		html += '<table>';
		html += '<tr>';
		html += '<th>设备编号：</th>';
		html += '<td>T2-4F</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>设备名称：</th>';
		html += '<td>T2-4F</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>所属楼层</th>';
		html += '<td>T2航站楼3层</td>';
		html += '</tr>';
		html += '</tr>';
		html += '<th>经纬度：</th>';
		html += ' <td>116.612418,40.076257</td>';
		html += '</tr>'
		html += '<tr>';
		html += '<th>在线状态</th>';
		html += '<td>在线</td>';
		html += '</tr>';
		html += ' <tr>';
		html += '<th>故障信息</th>';
		html += '<td>无</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>处理状态：</th>';
		html += ' <td>未处理</td>';
		html += '</tr>';
		html += '<tr>';

		html += '</table>';
		html += '</div>';
		


		marker.content = html;
		marker.on('mouseover', markerClick);

	}


	function addDamageCameraMark(rootUrl) {
		clearAllCovers();
		iconUrl1 = rootUrl + "/img/GisLocation/camera.png";
		iconUrl2 = rootUrl + "/img/GisLocation/camera_damage.png";
		iconUrl3 = rootUrl + "/img/GisLocation/camera_offline.png";
		icon1 = new AMap.Icon({
			size : new AMap.Size(24, 24), //图标大小
			image : iconUrl1,
		});
		icon2 = new AMap.Icon({
			size : new AMap.Size(24, 24), //图标大小
			image : iconUrl2,
		});
		icon3 = new AMap.Icon({
			size : new AMap.Size(24, 24), //图标大小
			image : iconUrl3,
		});
		for (var i = 0; i < lnglats.length; i++) {

		marker = new AMap.Marker({
			position : damageCamera[i],
			map : map,
			icon : icon2
		});

		var html = '<div class="layer-content" style="">';
		html += '<table>';
		html += '<tr>';
		html += '<th>设备编号：</th>';
		html += '<td>T2-4F</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>设备名称：</th>';
		html += '<td>T2-4F</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>所属楼层</th>';
		html += '<td>T2航站楼3层</td>';
		html += '</tr>';
		html += '</tr>';
		html += '<th>经纬度：</th>';
		html += ' <td>116.612418,40.076257</td>';
		html += '</tr>'
		html += '<tr>';
		html += '<th>在线状态</th>';
		html += '<td>在线</td>';
		html += '</tr>';
		html += ' <tr>';
		html += '<th>故障信息</th>';
		html += '<td>无</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>处理状态：</th>';
		html += ' <td>未处理</td>';
		html += '</tr>';
		html += '<tr>';

		html += '</table>';
		html += '</div>';
		


		marker.content = html;
		marker.on('mouseover', markerClick);
		
		}
	}
	
	function addFloorCameraMark(rootUrl) {
		clearAllCovers();
		iconUrl = rootUrl + "/img/GisLocation/camera.png";
		icon = new AMap.Icon({
			size : new AMap.Size(24, 24), //图标大小
			image : iconUrl,
		});
		for (var i = 0; i < lnglats.length; i += 2) {
			marker = new AMap.Marker({
				position : AllCamera[i],
				map : map,
				icon : icon
			});
			var html = '<div class="layer-content" style="">';
			html += '<table>';
			html += '<tr>';
			html += '<th>设备编号：</th>';
			html += '<td>T2-4F</td>';
			html += '</tr>';
			html += '<tr>';
			html += '<th>设备名称：</th>';
			html += '<td>T2-4F</td>';
			html += '</tr>';
			html += '<tr>';
			html += '<th>所属楼层</th>';
			html += '<td>T2航站楼3层</td>';
			html += '</tr>';
			html += '</tr>';
			html += '<th>经纬度：</th>';
			html += ' <td>116.612418,40.076257</td>';
			html += '</tr>'
			html += '<tr>';
			html += '<th>在线状态</th>';
			html += '<td>在线</td>';
			html += '</tr>';
			html += ' <tr>';
			html += '<th>故障信息</th>';
			html += '<td>无</td>';
			html += '</tr>';
			html += '<tr>';
			html += '<th>处理状态：</th>';
			html += ' <td>未处理</td>';
			html += '</tr>';
			html += '<tr>';

			html += '</table>';
			html += '</div>';
			


			marker.content = html;
			marker.on('mouseover', markerClick);
			//    		    marker.emit('click', {target: marker});
		}

	}
	
	
	function addOfflineCameraMark(rootUrl) {
		clearAllCovers();
		iconUrl1 = rootUrl + "/img/GisLocation/camera.png";
		iconUrl2 = rootUrl + "/img/GisLocation/camera_damage.png";
		iconUrl3 = rootUrl + "/img/GisLocation/camera_offline.png";
	
		icon3 = new AMap.Icon({
			size : new AMap.Size(24, 24), //图标大小
			image : iconUrl3,
		});
		for (var i = 0; i < lnglats.length; i++) {

			marker = new AMap.Marker({
				position : offlineCamera[i],
				map : map,
				icon : icon3
			});

			var html = '<div class="layer-content" style="">';
			html += '<table>';
			html += '<tr>';
			html += '<th>设备编号：</th>';
			html += '<td>T2-4F</td>';
			html += '</tr>';
			html += '<tr>';
			html += '<th>设备名称：</th>';
			html += '<td>T2-4F</td>';
			html += '</tr>';
			html += '<tr>';
			html += '<th>所属楼层</th>';
			html += '<td>T2航站楼3层</td>';
			html += '</tr>';
			html += '<th>报警地址：</th>';
			html += ' <td>ITC-001</td>';
			html += '</tr>'
			html += '</tr>';
			html += '<th>经纬度：</th>';
			html += ' <td>116.612418,40.076257</td>';
			html += '</tr>'

			html += '<tr>';
			html += '<th>报警级别：</th>';
			html += '<td>三级</td>';
			html += '</tr>';
			html += '<tr>';
			html += '<th>在线状态</th>';
			html += '<td>在线</td>';
			html += '</tr>';
			html += ' <tr>';
			html += '<th>故障信息</th>';
			html += '<td>无</td>';
			html += '</tr>';
			html += '<tr>';
			html += '<th>处理状态：</th>';
			html += ' <td>未处理</td>';
			html += '</tr>';
			html += '<tr>';

			html += '</table>';
			html += '</div>';
		


			marker.content = html;
			marker.on('mouseover', markerClick);
			//    		    marker.emit('click', {target: marker});
		}
	}
	
	var chart7 = echarts.init(document.getElementById('echart7'));
	
	var option7 = {
			tooltip: {
				trigger: 'axis',
				axisPointer: { // 坐标轴指示器，坐标轴触发有效
					type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
				}
			},
			calculable: true,
			yAxis: [{
				type: 'value'
			}],
			xAxis: [{
				type: 'category',
				data: ['航站区', '飞行区', '公共区', '控制区']
			}],
			series: [

				{
					name: '区域摄像头分布状况',
					type: 'bar',
					/*  stack: '总量', */
					itemStyle: {
						normal: {
							label: {
								show: true,
								position: 'top'
							}
						}
					},
					data: [45, 12, 13, 23]
				}
			]
		};
	chart7.setOption(option7);
</script>

</html>