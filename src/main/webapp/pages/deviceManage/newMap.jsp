<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header.jsp"%>
<div class="col-md-12" id="content_1"
	style="padding-left: 0px; padding-right: 0px; margin-left: -20px; margin-top: -40px;">

	<div class="main_table" id="main_table"
		style="display: ''; width: 400px; height: 260px; border-radius: 8px;">
		<div class="title-event">
			<span>门禁状态数据统计表</span><a class="glyphicon glyphicon-remove remove-btn" style="left:60%"
				id="remove-btn" onclick="removeWin($('#main_table'));"></a>
		</div>
		<div id="" style="width: 400px;">
			<table class="table">
				<thead>
					<tr>
						<th>设备名称</th>
						<th>设备类型</th>
						<th>安装位置</th>
						<th>在线状态</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>摄像头</td>
						<td>安防类</td>
						<td>T1航站楼上方</td>
						<td>在线</td>
					</tr>
					<tr>
						<td>摄像头</td>
						<td>安防类</td>
						<td>T1航站楼上方</td>
						<td>在线</td>
					</tr>
					<tr>
						<td>摄像头</td>
						<td>安防类</td>
						<td>T1航站楼上方</td>
						<td>故障</td>
					</tr>
					<tr>
						<td>摄像头</td>
						<td>安防类</td>
						<td>T1航站楼上方</td>
						<td>离线</td>
					</tr>
					<tr>
						<td>摄像头</td>
						<td>安防类</td>
						<td>T1航站楼上方</td>
						<td>在线</td>
					</tr>
				</tbody>
			</table>
			<ul class="pagination"
				style="position: relative; bottom: 23px; left: 70px;">
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

	<div class="main_graphic" id="tjt"
		style=" width: 400px; height: 300px; border-radius: 8px;overflow: hidden;">
		<div class="title-event">
			<span>门禁状态数据统计图</span>
			<a class="glyphicon glyphicon-remove remove-btn" style="left:60%;"
				id="remove-btn" onclick="removeWin($('#tjt'));"></a>
			
		</div> 
		<div class="static_nav" style="padding-bottom: 10%">
			<span id="pie_graphic" type="column" class="active"> 
				<a href="javascript:void(0)">
					<img src="/sodb/img/GisLocation/pie.png">
				</a>
			</span>
			<span id="line_graphic" type="line">
				<a href="javascript:void(0)">
					<img src="/sodb/img/GisLocation/line.png">
				</a>
			</span>
			<span id="column_graphic" type="pie">
				<a href="javascript:void(0)">
					<img src="/sodb/img/GisLocation/column.png">
				</a>
			</span>
		</div>
		<div id="static_chart"
			style="width: 400px; height: 240px; margin-top: 35px;"></div>
	</div>
</div>


<input type="hidden" value="${mapServiceManages }" id="ccc" />



<script>
	//隐藏窗口
	function removeWin(e) {
		e.css('display', 'none');
	}
	//弹出窗口
	function showWin(e) {
		e.removeClass('hidden');
	}
	$(document).ready(
			function() {
				/* 统计图 */
				$("#static_chart").empty();
				var myChart = echarts.init(document
						.getElementById('static_chart'));

				myChart.setOption(bxt);

				$("#line_graphic").click(
						function() {
							$("#static_chart").empty();
							var myChart = echarts.init(document
									.getElementById('static_chart'));
							myChart.setOption(txt);
							$("#column_graphic").removeClass("active");
							$("#pie_graphic").removeClass("active");
							$("#line_graphic").addClass("active");

						});
				$("#column_graphic").click(
						function() {
							$("#static_chart").empty();
							var myChart = echarts.init(document
									.getElementById('static_chart'));
							myChart.setOption(zxt);
							$("#pie_graphic").removeClass("active");
							$("#line_graphic").removeClass("active");
							$("#column_graphic").addClass("active");
						});
				$("#pie_graphic").click(
						function() {
							$("#static_chart").empty();
							var myChart = echarts.init(document
									.getElementById('static_chart'));
							myChart.setOption(bxt);
							$("#line_graphic").removeClass("active");
							$("#column_graphic").removeClass("active");
							$("#pie_graphic").addClass("active");
						});

				$("#accordion").accordion({
					'collapsible' : true,
					'active' : null,
					'heightStyle' : 'content'
				});

			});
</script>
