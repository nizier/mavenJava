<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header.jsp"%>
<div class="col-md-12" id="content_1"
	style="padding-left: 0px; padding-right: 0px; margin-left: 4%; margin-top: -2%;">
	<div id="prompt" style="display: none" class="noDataTips">
		<div class="tabtop_left">请选择专题数据</div>
		<div class="hidePromptTeb" onclick="hidePrompt()"></div>
	</div>
	<div class="left-tool" style="position: absolute;left:-50px">
		<!--页面左侧菜单选择区域-->
		<!--头部搜索-->
		<header class="clearfix">
			<div class="header-logo">机场地理信息服务</div>
			<div id="menu_display"></div>
		</header>
		<div class="left-down" style="display:block">
			<nav class="classify-box">
				<ul class="classify">
					<li class="classify-list special active" id="cd"><div
							class="specialNav active" title="专题"></div></li>
					<li class="classify-list place" id="cx"><div class="placeNav"
							title="地名搜索"></div></li>
				</ul>
			</nav>
			<div class="classify-content" style="display: block;">
				<!--左侧专题区域-->

				<div id="wrapper-250">
					<div id="accordion-device" data-options="multiple:false;"
						style="height: 300px;">
						<h3>
							<a href="#" style="font-weight: small; line-height: 1.5;">航站区</a>
						</h3>
						<div id="example-0" style="display: block;">
							<input type="checkbox" checked="checked" value="gasxt" title="全部" id="all" onclick="showData(this,'all');selectAll();">所有<br /> 
								<input type="checkbox" name="camera" id="camera1" checked="checked" >枪机<br /> 
								<input type="checkbox" name="camera" id="camera2" checked="checked" >球机<br />
								<input type="checkbox" name="camera" id="camera3" checked="checked" >半球<br />
								<input type="checkbox" name="camera" id="camera4" checked="checked" >全景视频<br />
						</div>
						
						<h3>
							<a href="#" style="font-weight: normal; line-height: 1.5;">飞行区</a>
						</h3>
						<div id="example-0">
							<input type="checkbox" value="gawz" title="所有"
								onclick="showData(this,'all');">所有<br /> 
								<input type="checkbox" value="gawz" title="枪机" onclick="showData(this,'all');">枪机<br /> 
								<input type="checkbox" value="yjwz" title="球机" onclick="showData(this,'offline');">球机<br />
								<input type="checkbox" value="yjwz" title="半球" onclick="showData(this,'offline');">半球<br /> 
								<input type="checkbox" value="mj" title="全景视频" onclick="clickCheckbox(this,0)">全景视频<br /> 
						</div>
						<h3>
							<a href="#" style="font-weight: normal; line-height: 1.5;">控制区</a>
						</h3>
						<div id="example-0">
							<input type="checkbox" value="jy" title="所有" id="security-guard" onclick="showData(this,'all');">所有<br /> 
							<input type="checkbox" value="jy" title="枪机" id="security-guard">枪机<br />
							<input type="checkbox" value="jc" title="球机" onclick="showData(this,'damage');">球机<br /> 
							<input type="checkbox" value="jy" title="半球" id="security-guard">半球<br />	
							<input type="checkbox" value="mj" title="全景视频" onclick="clickCheckbox(this,0)">全景视频<br />
						</div>
						
						
						<h3>
							<a href="#" style="font-weight: normal; line-height: 1.5;">公共区</a>
						</h3>
						<div id="example-0">
							<input type="checkbox" value="jy" title="所有" id="security-guard" onclick="showData(this,'all');">所有<br /> 
							<input type="checkbox" value="jy" title="枪机" id="security-guard">枪机<br />
							<input type="checkbox" value="jc" title="球机" onclick="showData(this,'damage');">球机<br /> 
							<input type="checkbox" value="jy" title="半球" id="security-guard">半球<br />
							<input type="checkbox" value="mj" title="全景视频" onclick="clickCheckbox(this,0)">全景视频<br />
						</div>

					</div>
					<div class="ps-scrollbar-x-rail"
						style="width: 241px; display: none; left: 0px; bottom: 1px;">
						<div class="ps-scrollbar-x" style="left: 0px; width: 0px;"></div>
					</div>
					<div class="ps-scrollbar-y-rail"
						style="top: 0px; height: 445px; display: inherit; right: 1px;">
						<div class="ps-scrollbar-y" style="top: 0px; height: 168px;"></div>
					</div>
				</div>
			</div>
			<div class="search-content" style="display: none;">
				<!--左侧查询搜索窗口-->
			
					<input type="text" class="form-control" placeholder="请输入字段名"/ >
					<span class="input-group-btn">
						<button class="btn btn-info btn-search">查找</button>
					</span>
				
			</div>
			<div id="down-up" class="down-up">
				<div class="down-up-btn"></div>
			</div>
			<!--底部收缩按钮-->
		</div>
	</div>
	<!-- 数据窗口 -->
	<div class="main_table" id="main_table"
		style="display: ''; position: absolute; right: 62px; top: 65px;">
		<div class="main_tabletop">
			<div class="tabtop_left">数据</div>
			<div class="tabtop_rt"></div>
		</div>
		<div class="static_nav" style="border-bottom: none">
			<span class="indicator">专题：</span> <select class="form-control"
				id="select_id" onchange="changeSelect(this)"
				style="width: 70%; margin-top: 2%">
				<option value=1>专题1</option>
				<option value=2>专题2</option>
			</select>
		</div>
		<div class="table-body ps-container" id="tableDiv"
			style="border-left: 1px solid rgb(237, 237, 237); margin-top: 71px; height: 170px; overflow-y: auto; overflow-x: hidden;">
			<table id="example" style="width: 290px; font-size: 13px;">
				<thead>
					<tr>
						<th style="width: 50px; border: 1px solid rgb(237, 237, 237);">序号</th>
						<th style="width: 140px;">名称</th>
						<th style="width: 50px; border: 1px solid rgb(237, 237, 237);">状态</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="border: 1px solid rgb(237, 237, 237);">1</td>
						<td style="border: 1px solid rgb(237, 237, 237);">摄像头</td>
						<td style="border: 1px solid rgb(237, 237, 237);">在线</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<!-- 统计图窗口 -->
	<div class="main_graphic" id="tjt"
		style="display: ''; right: 62px; top: 265px; z-index: 2000">
		<div class="main_tabletop">
			<div class="tabtop_left">统计图</div>
			<div class="tabtop_rt"></div>
		</div>
		<div class="static_nav" style="padding-bottom: 10%">
			<span class="indicator">指标：</span> <select class="form-control"
				style="width: 28%; margin: 1% 0 0 0; display: inline; float: left">
				<option value="设备在线率">设备在线率</option>
			</select> <span id="column_graphic" type="column" class="active"
				onclick="changeOptions(this)"> <a href="javascript:void(0)"><img
					src="/sodb/img/GisLocation/pie.png"></a></span> <span id="line_graphic"
				type="line" onclick="changeOptions(this)"><a
				href="javascript:void(0)"> <img
					src="/sodb/img/GisLocation/line.png"></a></span> <span id="pie_graphic"
				type="pie" onclick="changeOptions(this)"><a
				href="javascript:void(0)"> <img
					src="/sodb/img/GisLocation/column.png"></a></span>

		</div>
		<div id="static_chart" style="width: 100%; height: 80%">此处放统计图</div>
	</div>


	<!--界面中右部分按钮 -->
	<div class="floattool">
		<div class="table_nav">
			<div class="icon"></div>
			<!-- 数据按钮 -->
		</div>
		<div class="graphic_nav">
			<div class="icon"></div>
			<!-- 统计图按钮 -->
		</div>
	</div>

</div>


<script>
	$(document).ready(function() {
		
		
		$("#accordion-device").accordion({
			'collapsible' : true,
			'active' : true,
			'heightStyle' : 'content'
		});
		//init.js
		initEvent();//初始化事件
		initLeftCon();//左侧抽屉菜单初始化
		$('#tableDiv').perfectScrollbar();

		$('#tab-info').DataTable({
			/*基本参数设置，以下参数设置和默认效果一致*/
			"bPaginate" : false, //翻页功能  
			"bLengthChange" : false, //改变每页显示数据数量  
			"bFilter" : false, //过滤功能  
			"bSort" : true, //排序功能  
			"bInfo" : false,//页脚信息  
			/*默认翻页样式设置*/
			"sPaginationType" : "full_numbers"
		});

		$(".tabtop_rt").click(function() {
			$(this).parent().parent().hide("slow");
		});
		//parent.document.getElementById("mainContent").style.height="759px";
		$('#example-0').css("display","block");
	});

	function hidePrompt() {
		$("#prompt").hide();
	}
	
	function selectAll(){
		var checkbox = document.getElementsByName("camera");
	
		for(var i=0;i<checkbox.length;i++){
			
			checkbox[i].checked=document.getElementById("all").checked;
		}
		
	}
	$(function(){

		//全选/全不选
		
		$("[name='camera']:checkbox").click(function(){
		var flag=true;
		$("[name='camera']:checkbox").each(function(){
		if(!this.checked){
		flag=false;
		}
		});
		$("#all").attr("checked",flag);
		})
	})
		

	
		
	
</script>
