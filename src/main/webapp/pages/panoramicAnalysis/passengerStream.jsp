<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/pages/panoramicAnalysis/leftMenu.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style>
.area-name{
	font-weight:bold;
	margin-left:1em;
	margin-right:0.5em;
}
	
</style>

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
	<div class="window" id="window1" style="width:440px">
		<div class="title-event">
			<span>人流量密度预警</span> <a class="glyphicon glyphicon-remove remove-btn"
				id="remove-btn" onclick="removeWin($('#window1'));" ></a>

		</div>

		<div class="gis-content">
			<table class="table" id="video-table">
				<thead>
					<tr>
						<th>区域</th>
						<th>实时人流量</th>
						<th>人流状态</th>
					</tr>
				</thead>
				<tbody>
					<tr onclick="startHot();">
						<td>值机岛</td>
						<td>276</td>
						<td>稀疏</td>
					</tr>
					<tr onclick="startHot();">
						<td>安检口</td>
						<td>488</td>
						<td>中等</td>
					</tr>
					<tr onclick="startHot();">
						<td>登机口</td>
						<td>765</td>
						<td>拥挤</td>
					</tr>
					<tr onclick="startHot();">
						<td>出发大厅</td>
						<td>1687</td>
						<td>极度拥挤</td>
					</tr>
					<tr onclick="startHot();">
						<td>到达大厅</td>
						<td>599</td>
						<td>拥挤</td>
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
			<span>航站楼人流量分布统计</span> <a class="glyphicon glyphicon-remove remove-btn"
				id="remove-btn2" onclick="removeWin($('#window2'));"></a>
			<div id="main" style="width:390px;height:230px;"></div>	
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


	 <div class="hori-menu" id="menu" style="width:300px">
		<div class="op" id="op1">
			<a class="glyphicon glyphicon-globe icon"
				>流量预警</a>
		</div>
		<div class="cutline"></div>
		<div class="op" id="op2">
			<a class="glyphicon glyphicon-calendar icon">状态统计</a>
		</div>
		<div class="cutline"></div>
		<div class="op" id="op4">
			<a class="glyphicon glyphicon-time icon" onclick="startHot();">热力图</a>
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

      // 基于准备好的dom，初始化echarts实例
      var myChart = echarts.init(document.getElementById('main'));

      // 指定图表的配置项和数据
      var option = {
          
          tooltip: {},
          
          xAxis: {
              data: ["出发大厅","到达大厅","值机岛","安检口","登机口"]
          },
          yAxis: {},
          series: [{
              name: '人流量',
              type: 'bar',
              data: [1687, 599, 276, 488, 765]
          }]
      };

      // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);
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
	<script type="text/javascript"
		src="//a.amap.com/amap-ui/static/1.0/ui/misc/MarkerList/examples/jquery.twbsPagination.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/initQdMap.js"></script>
	<script src="//webapi.amap.com/ui/1.0/main.js"></script>
</body> 
<script type="text/javascript">
		stratHot();
</script>

</html>