<%@page  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/pages/inc/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>${title }</title>
<link rel="stylesheet" href="<%=path %>/css/pilotcockpit.css" />
<script type="text/javascript" src="<%=path %>/extends/echarts.js"></script>


<style>
.clear{
	padding:0;
	margin:0;	
}
.right-blank{
	padding-right:10px;
}
	
</style>
<body>
<div class="sodb-page-home">
	<ul class="sodb-page-ul">
		<li>
			<i class="fa fa-home"></i> 
			<a href="#">青岛机场安全管理</a> 
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">安全管控驾驶舱</a>
		</li>
	</ul> 
</div>
<div style="clear:both;"></div>
		<div style="width:100%">

			<div class="col-md-5 clear right-blank"  id="chart1">

				<div class="chart1 chart-win" id="chart1">
					<div class="chart_header">
						<span>安全事件统计</span>
					</div>

					<div id="echart1"></div>
				</div>

				<div class="chart2 hidden chart-win">
					<div class="chart_header">
						<span>公共安全事件统计</span>
					</div>

					<div id="echart2"></div>
				</div>
				
				<div class="chart21 hidden chart-win">
					<div class="chart_header">
						<span>航站区安全事件统计</span>
					</div>

					<div id="echart21"></div>
				</div>
				
				<div class="chart22 hidden chart-win">
					<div class="chart_header">
						<span>控制区安全事件统计</span>
					</div>

					<div id="echart22"></div>
				</div>
				
				<div class="chart23 hidden chart-win">
					<div class="chart_header">
						<span>飞行区安全事件统计</span>
					</div>

					<div id="echart23"></div>
				</div>
				
				<button class="btn btn-info back_btn hidden" onclick="showPie()">返回</button>
			</div>

			<div class="col-md-7  clear">

				<div class="chart3 chart-win">
					<div class="chart_header">
						<span>安全事件处理状态与来源统计</span>
					</div>

					<div id="echart3"></div>
				</div>

			</div>
			
			
			<div class="col-md-5 column  clear ">
				<div class="chart6 chart-win">
					<div class="chart_header">
						<span>安保人员分布</span>
					</div>

					<div id="echart6"></div>
				</div>

				<div class="chart7 hidden chart-win">
					<div class="chart_header">
						<span>重点地区安保人员分布</span>
					</div>

					<div id="echart7"></div>
				</div>
				<button class="btn btn-info back_btn2 hidden" onclick="showPie2()">返回</button>

			</div>

			<div class="col-md-7 column  clear right-blank">
				<div class="chart4 chart-win">
					<div class="chart_header">
						<span>安全系统运行状态</span>
					</div>
					
					
					<div class="row clearfix">
				<div class="col-md-4 column">
					<div class="list-group" style="margin: 15px; margin-bottom: 0;">
						<a href="#" class="list-group-item active" 
							style="background-color: darkgray; border: none;">门禁系统</a>
							<a class="list-group-item"><span class="badge online">在线</span>状态</a>
						<a class="list-group-item"><span class="badge">350</span>正常</a> 				
						<a class="list-group-item"><span class="badge  danger">6</span>异常</a>
						<a class="list-group-item"><span class="badge">1.7%</span>故障率</a>
					</div>
				</div>
				<div class="col-md-4 column">
					<div class="list-group" style="margin: 15px; margin-bottom: 0;">
						<a href="#" class="list-group-item active" 
							style="background-color: darkgray; border: none;">围界系统</a>
							<a class="list-group-item"><span class="badge online">在线</span>状态</a>
						<a class="list-group-item"><span class="badge">188</span>正常</a> 				
						<a class="list-group-item"><span class="badge  danger">2</span>异常</a>
						<a class="list-group-item"><span class="badge">1.1%</span>故障率</a>
					</div>
				</div>
				<div class="col-md-4 column">
					<div class="list-group" style="margin: 15px; margin-bottom: 0;">
						<a href="#" class="list-group-item active" 
							style="background-color: darkgray; border: none;">消防系统</a>
							<a class="list-group-item"><span class="badge online">在线</span>状态</a>
						<a class="list-group-item"><span class="badge">327</span>正常</a> 				
						<a class="list-group-item"><span class="badge  danger">8</span>异常</a>
						<a class="list-group-item"><span class="badge">2.3%</span>故障率</a>
					</div>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-4 column">
					<div class="list-group" style="margin: 15px; margin-bottom: 0;">
						<a href="#" class="list-group-item active" 
							style="background-color: darkgray; border: none;">手动报警系统</a>
							<a class="list-group-item"><span class="badge">离线</span>状态</a>
						<a class="list-group-item"><span class="badge">420</span>正常</a> 				
						<a class="list-group-item"><span class="badge  danger">21</span>异常</a>
						<a class="list-group-item"><span class="badge">4.7%</span>故障率</a>
					</div>
				</div>
				<div class="col-md-4 column">
					<div class="list-group" style="margin: 15px; margin-bottom: 0;">
						<a href="#" class="list-group-item active" 
							style="background-color: darkgray; border: none;">安检系统</a>
							<a class="list-group-item"><span class="badge online">在线</span>状态</a>
						<a class="list-group-item"><span class="badge">159</span>正常</a> 				
						<a class="list-group-item"><span class="badge" 
							style="background-color: rgb(217, 83, 79); border: none;">4</span>异常</a>
						<a class="list-group-item"><span class="badge">1.5%</span>故障率</a>
					</div>
				</div>
				<div class="col-md-4 column">
					<div class="list-group" style="margin: 15px; margin-bottom: 0;">
						<a href="#" class="list-group-item active" 
							style="background-color: darkgray; border: none;">视频监控系统</a>
							<a class="list-group-item"><span class="badge online">在线</span>状态</a>
						<a class="list-group-item"><span class="badge">155</span>正常</a> 				
						<a class="list-group-item"><span class="badge  danger">4</span>异常</a>
						<a class="list-group-item"><span class="badge">2.5%</span>故障率</a>
					</div>
				</div>
			</div>

					

				</div>

			</div>

			

		</div>

		<div class="col-md-12 column  clear">
			<div class="chart5 chart-win">
				<div class="chart_header">
					<span>近十天的安全事件历史统计</span>
				</div>
				<div id="table2" class="col-md-7">
					<div id="echart5"></div>
				</div>
				<div  class="col-md-5">
					<div class="dataTables_wrapper no-footer" id="sample_2_wrapper">
						
							<table class="table" id="table2">
								<thead>
									<tr>
										<th>时间</th>
										<th>航站区</th>
										<th>飞行区</th>
										<th>公共区</th>
										<th>控制区</th>
									</tr>
								</thead>
								<tbody>
									
									<tr>
										<td class="sorting_1">2017/4/8</td>
										<td>9</td>
										<td>8</td>
										<td>18</td>
										<td>6</td>
									</tr>
									<tr class="info">
										<td class="sorting_1">2017/4/7</td>
										<td>12</td>
										<td>11</td>
										<td>24</td>
										<td>12</td>
									</tr>
									<tr>
										<td class="sorting_1">2017/4/6</td>
										<td>12</td>
										<td>11</td>
										<td>24</td>
										<td>23</td>
									</tr>
									<tr class="danger">
										<td class="sorting_1">2017/4/5</td>
										<td>1</td>
										<td>0</td>
										<td>2</td>
										<td>1</td>
									</tr>
									<tr>
										<td class="sorting_1">2017/4/4</td>
										<td>3</td>
										<td>2</td>
										<td>6</td>
										<td>2</td>
									</tr>
									<tr class="warning">
										<td class="sorting_1">2017/4/3</td>
										<td>4</td>
										<td>3</td>
										<td>8</td>
										<td>8</td>
									</tr>
									<tr >
										<td class="sorting_1">2017/4/2</td>
										<td>0</td>
										<td>2</td>
										<td>3</td>
										<td>12</td>
									</tr>
									<tr class="info">
										<td class="sorting_1">2017/4/1</td>
										<td>23</td>
										<td>22</td>
										<td>46</td>
										<td>44</td>
									</tr>
									<tr>
										<td class="sorting_1">2017/3/31</td>
										<td>2</td>
										<td>1</td>
										<td>4</td>
										<td>4</td>
									</tr>
									
									<tr class="danger">
										<td class="sorting_1">2017/3/28</td>
										<td>2</td>
										<td>2</td>
										<td>5</td>
										<td>4</td>
									</tr>
								</tbody>
							</table>
					</div>
				</div>

			</div>
		</div>

		<script type="text/javascript" src="<%= path%>/js/chart.js"></script>
</body>
</html>