<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/pages/videoSharing/sharingService/leftMenu.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<!-- BEGIN 	left menu related css -->


<!-- BEGIN 	left menu related css -->

<!-- BEGIN THEME STYLES 替换新样式-->
<link href="<%=path %>/css/layout.css" rel="stylesheet" type="text/css" />

<link href="<%=path %>/css/custom.css" rel="stylesheet" type="text/css" />
<!-- END THEME STYLES 替换新样式结束-->

<link rel="stylesheet" type="text/css" href="<%=path%>/css/index.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/css/leaflet.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/css/leftbar.css" />
<link href="<%=path %>/css/global.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/emergency2.css" rel="stylesheet" type="text/css" />

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
<link rel="stylesheet" href="<%=path%>/css/jquery-ui.css" />
<!-- END left menu related css -->

<link href="<%=path%>/css/video.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/css/lzz.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/js/dragDiv.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=path%>/js/tableChanging.js"></script>
<script type="text/javascript">
$(function(){  
       $('#window1').dragDrop();
       $('#window1').css({'position':'absolute','left':'73%','top':'10%'}); //window1初始位置
       $('#window2').dragDrop();
       $('#window2').css({'position':'absolute','left':'70%','top':'52%'}); //window2初始位置
       $('#window3').dragDrop();
       $('#window3').css({'position':'absolute','left':'30%','top':'32%'}); //window2初始位置
      // $('#window-video').dragDrop();
       //$('#window-video').css({'position':'absolute','left':'30%','top':'32%'}); //window2初始位置
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
<style>
.amap-info-content{
	padding:1px;
}
</style>

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
						<th>视频源类型</th>
						<th>区域</th>
						<th>在线状态</th>
						<th>运行状况</th>
					</tr>
				</thead>
				<tbody>
					<tr onclick="showDataOnButton(this,'single',9);">
						<td>MT001</td>
						<td>监控视频</td>
						<td>航站区</td>
						<td>在线</td>
						<td>正常</td>
					</tr>
					<tr onclick="showDataOnButton(this,'single',1);">
						<td>MT002</td>
						<td>监控视频</td>
						<td>航站区</td>
						<td>在线</td>
						<td>正常</td>
					</tr>
					<tr onclick="showDataOnButton(this,'single',2);">
						<td>PT001</td>
						<td>全景拼接视频</td>
						<td>航站区</td>
						<td>在线</td>
						<td>正常</td>
					</tr>
					<tr onclick="showDataOnButton(this,'single',4);">
						<td>PT002</td>
						<td>全景拼接视频</td>
						<td>航站区</td>
						<td>在线</td>
						<td>正常</td>
					</tr>
					<tr onclick="showDataOnButton(this,'single',5);">
						<td>PT003</td>
						<td>全景拼接视频</td>
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
			<span>窗口2</span> <a class="glyphicon glyphicon-remove remove-btn"
				id="remove-btn2" onclick="removeWin($('#window2'));"></a>

		</div>

		<div class="gis-content"></div>

	</div>

	<div class="window hidden" id="window3">
		<div class="title-event">
			<span>查看视频</span> <a class="glyphicon glyphicon-remove remove-btn"
				id="remove-btn3" onclick="removeWin($('#window3'));"></a>
			<img src="/sodb/img/GisLocation/live_action_picture.jpg" style="width:400px;height:340px"/>
		</div>
		<div class="gis-content"></div>
	</div>


	<!-- <div class="hori-menu" id="menu">
		<div class="op">
			<a class="glyphicon glyphicon-globe icon"
				onclick="showWin($('#window1'))">状态统计</a>
		</div>
		<div class="cutline"></div>
		<div class="op">
			<a class="glyphicon glyphicon-calendar icon"
				onclick="showWin($('#window2'))">历史统计</a>
		</div>
		<div class="cutline"></div>
		<div class="op">
			<a class="glyphicon glyphicon-calendar icon"
				onclick="showWin($('#window3'))">状态统计</a>
		</div>
		<div class="cutline"></div>
		<div class="op">
			<a class="glyphicon glyphicon-time icon">人员分布</a>
		</div>
	</div>  -->
	
	 <div class="hori-menu" id="menu" style="height:36px">
		
    <form class="bs-example bs-example-form">
        <div class="input-group">
           
            <input type="text" class="form-control" />
             <a class="input-group-addon" href="#" style="color:black" onclick="showDataOnButton(this,'search');">关键字搜索</a>
        </div>
   
    </form>
	</div>  


	<div class="main" style="width: 100%; position: absolution;">






		<div id="leafletmap" class="map fl"></div>
		<!--机场地理信息服务-->





	</div>
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					查看视频
				</h4>
			</div>
			<div class="modal-body">
				<img src="/sodb/img/GisLocation/live_action_wide_picture.jpg" width="570px" height="400px"/>
			</div>
			<div class="modal-footer">
				<button type="button" class="sbtn sbtn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="sbtn sbtn-blue">
					播放/暂停
				</button>
				
				<button type="button" class="sbtn sbtn-blue">
					截图
				</button>
				
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
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
    		   
    		    if(e.checked){
    	        	  
    	           }else{
    	        	   removeWin($('#window1'));
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
		var html = "";
	    html += "<div id=\"window-video\" style=\"width:470px;height:400px;overflow: hidden;\">\n";
	    html += "			<div class=\"tabbable\" id=\"tabs-145499\"style=\"position:relative;bottom:60px;\">\n";
	    html += "				<ul class=\"nav nav-tabs\" style=\"width: 470px;\">\n";                         
	    html += "					<li class=\"active\">\n";
	    html += "						 <a href=\"#panel-71091\" data-toggle=\"tab\" style=\"height:38px\">基本信息<\/a>\n";
	    html += "					<\/li>\n";
	    html += "					<li>\n";                             
	    html += "						 <a href=\"#panel-767272\" data-toggle=\"tab\" style=\"height:38px\">视频<\/a>\n";
	    html += "					<\/li>\n";
	    html += "				<\/ul>\n";
	    html += "				<div class=\"tab-content\" >\n";
	    html += "					<div class=\"tab-pane active\" id=\"panel-71091\" style=\"position:relative;top:120px;\">\n";
	    html += "			<div>\n";
	    html += "			<table style=\"height:320px;text-indent:2em;font-size:13px; \" id=\"info-table\" class=\"table table-condensed\">\n";
	    html += "			<th>视频源编号：<\/th>\n";
	    html += "			<td>T2-4F<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>视频类型：<\/th>\n";
	    html += "			<td>监控视频<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>所属楼层:<\/th>\n";
	    html += "			<td>T2航站楼3层<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>经度:<\/th>\n";
	    html += "			<td>116.612745<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			<th>纬度:<\/th>\n";
	    html += "			<td>40.077109<\/td>\n";
	    html += "			<\/tr>\n";
	    
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>在线状态：<\/th>\n";
	    html += "			 <td>在线<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>运行状况：<\/th>\n";
	    html += "			 <td>正常<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			<\/table>\n";
	    html += "			<\/div>\n";
	    html += "					<\/div>\n";
	    html += "				<div class=\"tab-pane\" id=\"panel-767272\"  style=\"position:relative;top:120px;margin:0;padding:0;\">\n";
	    html += "					<div style=\"position:relative;bottom:20px\">\n";	    				
	    html += "						<img src=\"/sodb/img/GisLocation/live_action_wide_picture.jpg\" id=\"video-pic\" width=\"480px\" height=\"300px\" >\n";
	    html += "					<\/div>\n";
	    html += "					<div style=\"position:relative;bottom:15px;background-color: whitesmoke; height:60px\">\n";
	    html += "	   <button class=\"sbtn sbtn-blue\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"margin-right:10px;\ position:absolute;top:20%;left:4%\">";
	    html += "		查看视频"
	    html += "		<\/button>"
	    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:73%\" class=\"sbtn sbtn-default\">转到实时浏览<\/button>\n";
	    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:45%\" class=\"sbtn sbtn-default\">转到录像回放<\/button>";	
	    html += "					<\/div>\n";
	    html += "				  <\/div>\n";
	    html += "				<\/div>\n";
	    html += "			<\/div>\n";
	    html += "<\/div>\n";
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
		var html = "";
	    html += "<div id=\"window-video\" style=\"width:470px;height:400px;overflow: hidden;\">\n";
	    html += "			<div class=\"tabbable\" id=\"tabs-145499\"style=\"position:relative;bottom:60px;\">\n";
	    html += "				<ul class=\"nav nav-tabs\" style=\"width: 470px;\">\n";                         
	    html += "					<li class=\"active\">\n";
	    html += "						 <a href=\"#panel-71091\" data-toggle=\"tab\" style=\"height:38px\">基本信息<\/a>\n";
	    html += "					<\/li>\n";
	    html += "					<li>\n";                             
	    html += "						 <a href=\"#panel-767272\" data-toggle=\"tab\" style=\"height:38px\">视频<\/a>\n";
	    html += "					<\/li>\n";
	    html += "				<\/ul>\n";
	    html += "				<div class=\"tab-content\" >\n";
	    html += "					<div class=\"tab-pane active\" id=\"panel-71091\" style=\"position:relative;top:120px;\">\n";
	    html += "			<div>\n";
	    html += "			<table style=\"height:320px;text-indent:2em;font-size:13px; \" id=\"info-table\" class=\"table table-condensed\">\n";
	    html += "			<th>视频源编号：<\/th>\n";
	    html += "			<td>T2-4F<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>视频类型：<\/th>\n";
	    html += "			<td>监控视频<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>所属楼层:<\/th>\n";
	    html += "			<td>T2航站楼3层<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>经度:<\/th>\n";
	    html += "			<td>116.612745<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			<th>纬度:<\/th>\n";
	    html += "			<td>40.077109<\/td>\n";
	    html += "			<\/tr>\n";
	    
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>在线状态：<\/th>\n";
	    html += "			 <td>在线<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>运行状况：<\/th>\n";
	    html += "			 <td>正常<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			<\/table>\n";
	    html += "			<\/div>\n";
	    html += "					<\/div>\n";
	    html += "				<div class=\"tab-pane\" id=\"panel-767272\"  style=\"position:relative;top:120px;margin:0;padding:0;\">\n";
	    html += "					<div style=\"position:relative;bottom:20px\">\n";	    				
	    html += "						<img src=\"/sodb/img/GisLocation/live_action_wide_picture.jpg\" id=\"video-pic\" width=\"480px\" height=\"300px\" >\n";
	    html += "					<\/div>\n";
	    html += "					<div style=\"position:relative;bottom:15px;background-color: whitesmoke; height:60px\">\n";
	    html += "	   <button class=\"sbtn sbtn-blue\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"margin-right:10px;\ position:absolute;top:20%;left:4%\">";
	    html += "		查看视频"
	    html += "		<\/button>"
	    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:73%\" class=\"sbtn sbtn-default\">转到实时浏览<\/button>\n";
	    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:45%\" class=\"sbtn sbtn-default\">转到录像回放<\/button>";	
	    html += "					<\/div>\n";
	    html += "				  <\/div>\n";
	    html += "				<\/div>\n";
	    html += "			<\/div>\n";
	    html += "<\/div>\n";
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
		var html = "";
	    html += "<div id=\"window-video\" style=\"width:470px;height:400px;overflow: hidden;\">\n";
	    html += "			<div class=\"tabbable\" id=\"tabs-145499\"style=\"position:relative;bottom:60px;\">\n";
	    html += "				<ul class=\"nav nav-tabs\" style=\"width: 470px;\">\n";                         
	    html += "					<li class=\"active\">\n";
	    html += "						 <a href=\"#panel-71091\" data-toggle=\"tab\" style=\"height:38px\">基本信息<\/a>\n";
	    html += "					<\/li>\n";
	    html += "					<li>\n";                             
	    html += "						 <a href=\"#panel-767272\" data-toggle=\"tab\" style=\"height:38px\">视频<\/a>\n";
	    html += "					<\/li>\n";
	    html += "				<\/ul>\n";
	    html += "				<div class=\"tab-content\" >\n";
	    html += "					<div class=\"tab-pane active\" id=\"panel-71091\" style=\"position:relative;top:120px;\">\n";
	    html += "			<div>\n";
	    html += "			<table style=\"height:320px;text-indent:2em;font-size:13px; \" id=\"info-table\" class=\"table table-condensed\">\n";
	    html += "			<th>视频源编号：<\/th>\n";
	    html += "			<td>T2-4F<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>视频类型：<\/th>\n";
	    html += "			<td>监控视频<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>所属楼层:<\/th>\n";
	    html += "			<td>T2航站楼3层<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>经度:<\/th>\n";
	    html += "			<td>116.612745<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			<th>纬度:<\/th>\n";
	    html += "			<td>40.077109<\/td>\n";
	    html += "			<\/tr>\n";
	    
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>在线状态：<\/th>\n";
	    html += "			 <td>在线<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>运行状况：<\/th>\n";
	    html += "			 <td>正常<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			<\/table>\n";
	    html += "			<\/div>\n";
	    html += "					<\/div>\n";
	    html += "				<div class=\"tab-pane\" id=\"panel-767272\"  style=\"position:relative;top:120px;margin:0;padding:0;\">\n";
	    html += "					<div style=\"position:relative;bottom:20px\">\n";	    				
	    html += "						<img src=\"/sodb/img/GisLocation/live_action_wide_picture.jpg\" id=\"video-pic\" width=\"480px\" height=\"300px\" >\n";
	    html += "					<\/div>\n";
	    html += "					<div style=\"position:relative;bottom:15px;background-color: whitesmoke; height:60px\">\n";
	    html += "	   <button class=\"sbtn sbtn-blue\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"margin-right:10px;\ position:absolute;top:20%;left:4%\">";
	    html += "		查看视频"
	    html += "		<\/button>"
	    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:73%\" class=\"sbtn sbtn-default\">转到实时浏览<\/button>\n";
	    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:45%\" class=\"sbtn sbtn-default\">转到录像回放<\/button>";	
	    html += "					<\/div>\n";
	    html += "				  <\/div>\n";
	    html += "				<\/div>\n";
	    html += "			<\/div>\n";
	    html += "<\/div>\n";

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

			var html = "";
		    html += "<div id=\"window-video\" style=\"width:470px;height:400px;overflow: hidden;\">\n";
		    html += "			<div class=\"tabbable\" id=\"tabs-145499\"style=\"position:relative;bottom:60px;\">\n";
		    html += "				<ul class=\"nav nav-tabs\" style=\"width: 470px;\">\n";                         
		    html += "					<li class=\"active\">\n";
		    html += "						 <a href=\"#panel-71091\" data-toggle=\"tab\" style=\"height:38px\">基本信息<\/a>\n";
		    html += "					<\/li>\n";
		    html += "					<li>\n";                             
		    html += "						 <a href=\"#panel-767272\" data-toggle=\"tab\" style=\"height:38px\">视频<\/a>\n";
		    html += "					<\/li>\n";
		    html += "				<\/ul>\n";
		    html += "				<div class=\"tab-content\" >\n";
		    html += "					<div class=\"tab-pane active\" id=\"panel-71091\" style=\"position:relative;top:120px;\">\n";
		    html += "			<div>\n";
		    html += "			<table style=\"height:320px;text-indent:2em;font-size:13px; \" id=\"info-table\" class=\"table table-condensed\">\n";
		    html += "			<th>视频源编号：<\/th>\n";
		    html += "			<td>T2-4F<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>视频类型：<\/th>\n";
		    html += "			<td>监控视频<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>所属楼层:<\/th>\n";
		    html += "			<td>T2航站楼3层<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>经度:<\/th>\n";
		    html += "			<td>116.612745<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			<th>纬度:<\/th>\n";
		    html += "			<td>40.077109<\/td>\n";
		    html += "			<\/tr>\n";
		    
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>在线状态：<\/th>\n";
		    html += "			 <td>在线<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>运行状况：<\/th>\n";
		    html += "			 <td>正常<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			<\/table>\n";
		    html += "			<\/div>\n";
		    html += "					<\/div>\n";
		    html += "				<div class=\"tab-pane\" id=\"panel-767272\"  style=\"position:relative;top:120px;margin:0;padding:0;\">\n";
		    html += "					<div style=\"position:relative;bottom:20px\">\n";	    				
		    html += "						<img src=\"/sodb/img/GisLocation/live_action_wide_picture.jpg\" id=\"video-pic\" width=\"480px\" height=\"300px\" >\n";
		    html += "					<\/div>\n";
		    html += "					<div style=\"position:relative;bottom:15px;background-color: whitesmoke; height:60px\">\n";
		    html += "	   <button class=\"sbtn sbtn-blue\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"margin-right:10px;\ position:absolute;top:20%;left:4%\">";
		    html += "		查看视频"
		    html += "		<\/button>"
		    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:73%\" class=\"sbtn sbtn-default\">转到实时浏览<\/button>\n";
		    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:45%\" class=\"sbtn sbtn-default\">转到录像回放<\/button>";	
		    html += "					<\/div>\n";
		    html += "				  <\/div>\n";
		    html += "				<\/div>\n";
		    html += "			<\/div>\n";
		    html += "<\/div>\n";

			marker.content = html;
			marker.on('mouseover', markerClick);
			//    		    marker.emit('click', {target: marker});
		}

		marker = new AMap.Marker({
			position : damageCamera[0],
			map : map,
			icon : icon2
		});

		var html = "";
	    html += "<div id=\"window-video\" style=\"width:470px;height:400px;overflow: hidden;\">\n";
	    html += "			<div class=\"tabbable\" id=\"tabs-145499\"style=\"position:relative;bottom:60px;\">\n";
	    html += "				<ul class=\"nav nav-tabs\" style=\"width: 470px;\">\n";                         
	    html += "					<li class=\"active\">\n";
	    html += "						 <a href=\"#panel-71091\" data-toggle=\"tab\" style=\"height:38px\">基本信息<\/a>\n";
	    html += "					<\/li>\n";
	    html += "					<li>\n";                             
	    html += "						 <a href=\"#panel-767272\" data-toggle=\"tab\" style=\"height:38px\">视频<\/a>\n";
	    html += "					<\/li>\n";
	    html += "				<\/ul>\n";
	    html += "				<div class=\"tab-content\" >\n";
	    html += "					<div class=\"tab-pane active\" id=\"panel-71091\" style=\"position:relative;top:120px;\">\n";
	    html += "			<div>\n";
	    html += "			<table style=\"height:320px;text-indent:2em;font-size:13px; \" id=\"info-table\" class=\"table table-condensed\">\n";
	    html += "			<th>视频源编号：<\/th>\n";
	    html += "			<td>T2-4F<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>视频类型：<\/th>\n";
	    html += "			<td>监控视频<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>所属楼层:<\/th>\n";
	    html += "			<td>T2航站楼3层<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>经度:<\/th>\n";
	    html += "			<td>116.612745<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			<th>纬度:<\/th>\n";
	    html += "			<td>40.077109<\/td>\n";
	    html += "			<\/tr>\n";
	    
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>在线状态：<\/th>\n";
	    html += "			 <td>在线<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>运行状况：<\/th>\n";
	    html += "			 <td>正常<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			<\/table>\n";
	    html += "			<\/div>\n";
	    html += "					<\/div>\n";
	    html += "				<div class=\"tab-pane\" id=\"panel-767272\"  style=\"position:relative;top:120px;margin:0;padding:0;\">\n";
	    html += "					<div style=\"position:relative;bottom:20px\">\n";	    				
	    html += "						<img src=\"/sodb/img/GisLocation/live_action_wide_picture.jpg\" id=\"video-pic\" width=\"480px\" height=\"300px\" >\n";
	    html += "					<\/div>\n";
	    html += "					<div style=\"position:relative;bottom:15px;background-color: whitesmoke; height:60px\">\n";
	    html += "	   <button class=\"sbtn sbtn-blue\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"margin-right:10px;\ position:absolute;top:20%;left:4%\">";
	    html += "		查看视频"
	    html += "		<\/button>"
	    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:73%\" class=\"sbtn sbtn-default\">转到实时浏览<\/button>\n";
	    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:45%\" class=\"sbtn sbtn-default\">转到录像回放<\/button>";	
	    html += "					<\/div>\n";
	    html += "				  <\/div>\n";
	    html += "				<\/div>\n";
	    html += "			<\/div>\n";
	    html += "<\/div>\n";

		marker.content = html;
		marker.on('mouseover', markerClick);

		marker = new AMap.Marker({
			position : offlineCamera[0],
			map : map,
			icon : icon3
		});
		var html = "";
	    html += "<div id=\"window-video\" style=\"width:470px;height:400px;overflow: hidden;\">\n";
	    html += "			<div class=\"tabbable\" id=\"tabs-145499\"style=\"position:relative;bottom:60px;\">\n";
	    html += "				<ul class=\"nav nav-tabs\" style=\"width: 470px;\">\n";                         
	    html += "					<li class=\"active\">\n";
	    html += "						 <a href=\"#panel-71091\" data-toggle=\"tab\" style=\"height:38px\">基本信息<\/a>\n";
	    html += "					<\/li>\n";
	    html += "					<li>\n";                             
	    html += "						 <a href=\"#panel-767272\" data-toggle=\"tab\" style=\"height:38px\">视频<\/a>\n";
	    html += "					<\/li>\n";
	    html += "				<\/ul>\n";
	    html += "				<div class=\"tab-content\" >\n";
	    html += "					<div class=\"tab-pane active\" id=\"panel-71091\" style=\"position:relative;top:120px;\">\n";
	    html += "			<div>\n";
	    html += "			<table style=\"height:320px;text-indent:2em;font-size:13px; \" id=\"info-table\" class=\"table table-condensed\">\n";
	    html += "			<th>视频源编号：<\/th>\n";
	    html += "			<td>T2-4F<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>视频类型：<\/th>\n";
	    html += "			<td>监控视频<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>所属楼层:<\/th>\n";
	    html += "			<td>T2航站楼3层<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>经度:<\/th>\n";
	    html += "			<td>116.612745<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			<th>纬度:<\/th>\n";
	    html += "			<td>40.077109<\/td>\n";
	    html += "			<\/tr>\n";
	    
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>在线状态：<\/th>\n";
	    html += "			 <td>在线<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>运行状况：<\/th>\n";
	    html += "			 <td>正常<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			<\/table>\n";
	    html += "			<\/div>\n";
	    html += "					<\/div>\n";
	    html += "				<div class=\"tab-pane\" id=\"panel-767272\"  style=\"position:relative;top:120px;margin:0;padding:0;\">\n";
	    html += "					<div style=\"position:relative;bottom:20px\">\n";	    				
	    html += "						<img src=\"/sodb/img/GisLocation/live_action_wide_picture.jpg\" id=\"video-pic\" width=\"480px\" height=\"300px\" >\n";
	    html += "					<\/div>\n";
	    html += "					<div style=\"position:relative;bottom:15px;background-color: whitesmoke; height:60px\">\n";
	    html += "	   <button class=\"sbtn sbtn-blue\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"margin-right:10px;\ position:absolute;top:20%;left:4%\">";
	    html += "		查看视频"
	    html += "		<\/button>"
	    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:73%\" class=\"sbtn sbtn-default\">转到实时浏览<\/button>\n";
	    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:45%\" class=\"sbtn sbtn-default\">转到录像回放<\/button>";	
	    html += "					<\/div>\n";
	    html += "				  <\/div>\n";
	    html += "				<\/div>\n";
	    html += "			<\/div>\n";
	    html += "<\/div>\n";


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

		var html = "";
	    html += "<div id=\"window-video\" style=\"width:470px;height:400px;overflow: hidden;\">\n";
	    html += "			<div class=\"tabbable\" id=\"tabs-145499\"style=\"position:relative;bottom:60px;\">\n";
	    html += "				<ul class=\"nav nav-tabs\" style=\"width: 470px;\">\n";                         
	    html += "					<li class=\"active\">\n";
	    html += "						 <a href=\"#panel-71091\" data-toggle=\"tab\" style=\"height:38px\">基本信息<\/a>\n";
	    html += "					<\/li>\n";
	    html += "					<li>\n";                             
	    html += "						 <a href=\"#panel-767272\" data-toggle=\"tab\" style=\"height:38px\">视频<\/a>\n";
	    html += "					<\/li>\n";
	    html += "				<\/ul>\n";
	    html += "				<div class=\"tab-content\" >\n";
	    html += "					<div class=\"tab-pane active\" id=\"panel-71091\" style=\"position:relative;top:120px;\">\n";
	    html += "			<div>\n";
	    html += "			<table style=\"height:320px;text-indent:2em;font-size:13px; \" id=\"info-table\" class=\"table table-condensed\">\n";
	    html += "			<th>视频源编号：<\/th>\n";
	    html += "			<td>T2-4F<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>视频类型：<\/th>\n";
	    html += "			<td>监控视频<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>所属楼层:<\/th>\n";
	    html += "			<td>T2航站楼3层<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>经度:<\/th>\n";
	    html += "			<td>116.612745<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			<th>纬度:<\/th>\n";
	    html += "			<td>40.077109<\/td>\n";
	    html += "			<\/tr>\n";
	    
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>在线状态：<\/th>\n";
	    html += "			 <td>在线<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			\n";
	    html += "			<tr>\n";
	    html += "			<th>运行状况：<\/th>\n";
	    html += "			 <td>正常<\/td>\n";
	    html += "			<\/tr>\n";
	    html += "			<\/table>\n";
	    html += "			<\/div>\n";
	    html += "					<\/div>\n";
	    html += "				<div class=\"tab-pane\" id=\"panel-767272\"  style=\"position:relative;top:120px;margin:0;padding:0;\">\n";
	    html += "					<div style=\"position:relative;bottom:20px\">\n";	    				
	    html += "						<img src=\"/sodb/img/GisLocation/live_action_wide_picture.jpg\" id=\"video-pic\" width=\"480px\" height=\"300px\" >\n";
	    html += "					<\/div>\n";
	    html += "					<div style=\"position:relative;bottom:15px;background-color: whitesmoke; height:60px\">\n";
	    html += "	   <button class=\"sbtn sbtn-blue\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"margin-right:10px;\ position:absolute;top:20%;left:4%\">";
	    html += "		查看视频"
	    html += "		<\/button>"
	    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:73%\" class=\"sbtn sbtn-default\">转到实时浏览<\/button>\n";
	    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:45%\" class=\"sbtn sbtn-default\">转到录像回放<\/button>";	
	    html += "					<\/div>\n";
	    html += "				  <\/div>\n";
	    html += "				<\/div>\n";
	    html += "			<\/div>\n";
	    html += "<\/div>\n";

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
			var html = "";
		    html += "<div id=\"window-video\" style=\"width:470px;height:400px;overflow: hidden;\">\n";
		    html += "			<div class=\"tabbable\" id=\"tabs-145499\"style=\"position:relative;bottom:60px;\">\n";
		    html += "				<ul class=\"nav nav-tabs\" style=\"width: 470px;\">\n";                         
		    html += "					<li class=\"active\">\n";
		    html += "						 <a href=\"#panel-71091\" data-toggle=\"tab\" style=\"height:38px\">基本信息<\/a>\n";
		    html += "					<\/li>\n";
		    html += "					<li>\n";                             
		    html += "						 <a href=\"#panel-767272\" data-toggle=\"tab\" style=\"height:38px\">视频<\/a>\n";
		    html += "					<\/li>\n";
		    html += "				<\/ul>\n";
		    html += "				<div class=\"tab-content\" >\n";
		    html += "					<div class=\"tab-pane active\" id=\"panel-71091\" style=\"position:relative;top:120px;\">\n";
		    html += "			<div>\n";
		    html += "			<table style=\"height:320px;text-indent:2em;font-size:13px; \" id=\"info-table\" class=\"table table-condensed\">\n";
		    html += "			<th>视频源编号：<\/th>\n";
		    html += "			<td>T2-4F<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>视频类型：<\/th>\n";
		    html += "			<td>监控视频<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>所属楼层:<\/th>\n";
		    html += "			<td>T2航站楼3层<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>经度:<\/th>\n";
		    html += "			<td>116.612745<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			<th>纬度:<\/th>\n";
		    html += "			<td>40.077109<\/td>\n";
		    html += "			<\/tr>\n";
		    
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>在线状态：<\/th>\n";
		    html += "			 <td>在线<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>运行状况：<\/th>\n";
		    html += "			 <td>正常<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			<\/table>\n";
		    html += "			<\/div>\n";
		    html += "					<\/div>\n";
		    html += "				<div class=\"tab-pane\" id=\"panel-767272\"  style=\"position:relative;top:120px;margin:0;padding:0;\">\n";
		    html += "					<div style=\"position:relative;bottom:20px\">\n";	    				
		    html += "						<img src=\"/sodb/img/GisLocation/live_action_wide_picture.jpg\" id=\"video-pic\" width=\"480px\" height=\"300px\" >\n";
		    html += "					<\/div>\n";
		    html += "					<div style=\"position:relative;bottom:15px;background-color: whitesmoke; height:60px\">\n";
		    html += "	   <button class=\"sbtn sbtn-blue\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"margin-right:10px;\ position:absolute;top:20%;left:4%\">";
		    html += "		查看视频"
		    html += "		<\/button>"
		    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:73%\" class=\"sbtn sbtn-default\">转到实时浏览<\/button>\n";
		    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:45%\" class=\"sbtn sbtn-default\">转到录像回放<\/button>";	
		    html += "					<\/div>\n";
		    html += "				  <\/div>\n";
		    html += "				<\/div>\n";
		    html += "			<\/div>\n";
		    html += "<\/div>\n";
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

			var html = "";
		    html += "<div id=\"window-video\" style=\"width:470px;height:400px;overflow: hidden;\">\n";
		    html += "			<div class=\"tabbable\" id=\"tabs-145499\"style=\"position:relative;bottom:60px;\">\n";
		    html += "				<ul class=\"nav nav-tabs\" style=\"width: 470px;\">\n";                         
		    html += "					<li class=\"active\">\n";
		    html += "						 <a href=\"#panel-71091\" data-toggle=\"tab\" style=\"height:38px\">基本信息<\/a>\n";
		    html += "					<\/li>\n";
		    html += "					<li>\n";                             
		    html += "						 <a href=\"#panel-767272\" data-toggle=\"tab\" style=\"height:38px\">视频<\/a>\n";
		    html += "					<\/li>\n";
		    html += "				<\/ul>\n";
		    html += "				<div class=\"tab-content\" >\n";
		    html += "					<div class=\"tab-pane active\" id=\"panel-71091\" style=\"position:relative;top:120px;\">\n";
		    html += "			<div>\n";
		    html += "			<table style=\"height:320px;text-indent:2em;font-size:13px; \" id=\"info-table\" class=\"table table-condensed\">\n";
		    html += "			<th>视频源编号：<\/th>\n";
		    html += "			<td>T2-4F<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>视频类型：<\/th>\n";
		    html += "			<td>监控视频<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>所属楼层:<\/th>\n";
		    html += "			<td>T2航站楼3层<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>经度:<\/th>\n";
		    html += "			<td>116.612745<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			<th>纬度:<\/th>\n";
		    html += "			<td>40.077109<\/td>\n";
		    html += "			<\/tr>\n";
		    
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>在线状态：<\/th>\n";
		    html += "			 <td>在线<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			\n";
		    html += "			<tr>\n";
		    html += "			<th>运行状况：<\/th>\n";
		    html += "			 <td>正常<\/td>\n";
		    html += "			<\/tr>\n";
		    html += "			<\/table>\n";
		    html += "			<\/div>\n";
		    html += "					<\/div>\n";
		    html += "				<div class=\"tab-pane\" id=\"panel-767272\"  style=\"position:relative;top:120px;margin:0;padding:0;\">\n";
		    html += "					<div style=\"position:relative;bottom:20px\">\n";	    				
		    html += "						<img src=\"/sodb/img/GisLocation/live_action_wide_picture.jpg\" id=\"video-pic\" width=\"480px\" height=\"300px\" >\n";
		    html += "					<\/div>\n";
		    html += "					<div style=\"position:relative;bottom:15px;background-color: whitesmoke; height:60px\">\n";
		    html += "	   <button class=\"sbtn sbtn-blue\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"margin-right:10px;\ position:absolute;top:20%;left:4%\">";
		    html += "		查看视频"
		    html += "		<\/button>"
		    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:73%\" class=\"sbtn sbtn-default\">转到实时浏览<\/button>\n";
		    html += "					<button style=\"margin-right:10px;\ position:absolute;top:20%;left:45%\" class=\"sbtn sbtn-default\">转到录像回放<\/button>";	
		    html += "					<\/div>\n";
		    html += "				  <\/div>\n";
		    html += "				<\/div>\n";
		    html += "			<\/div>\n";
		    html += "<\/div>\n";


			marker.content = html;
			marker.on('mouseover', markerClick);
			//    		    marker.emit('click', {target: marker});
		}
	}
	
	function showMsg(msg,time){
		$("#sodbGlobalModalBody").html(msg);
		$('#sodbGlobalModal').modal('show')
		if(time != undefined){
		    setTimeout(function(){
		        $("#sodbGlobalModalBody").html('');
		        $('#sodbGlobalModal').modal('hide');
		    },time * 1000)
		}
	}
	$("#hideGlobalModalBtn").click(function(){
		$("#sodbGlobalModalBody").html('');
	    $('#sodbGlobalModal').modal('hide');
	})
	
	
</script>

</html>