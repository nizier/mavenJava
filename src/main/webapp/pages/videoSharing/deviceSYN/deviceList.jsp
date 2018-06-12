<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/pages/inc/header.jsp"%>
<title>接警</title>
</head>
<style type="text/css">
.btn .btn-default {
	background: #1f4a09;
}

.divcss5 {
	background: #67809F;
	height: 40px;

	padding: 0px 15px;
	color: #fff;
}

.divcss5_title {
	line-height: 40px;
}

.divcss5_left {
	float: left;
	height:40px;
	line-height:40px;
	width: 150px;
}

.divcss5_right {
	float: right;	
	width: 120px;
	padding: 3px 0px;
}

.divcss5_right1 {
	float: right;
	padding: 3px 0px;
	margin-left: 30px
}

.divcss5_right2 {
	float: right;
	width: 120px;
	padding: 3px 0px;
}

.divcss5_right3 {
	float: right;
	width: 120px;
	padding: 3px 0px;
}

.clear {
	clear: both;
}

.form-inline .form-control {
	width: 130px;
}

#exampleInputName2 {
	height: 34px;
	padding: 6px 12px;
}

.page-bar {
	background: #f7f7f7;
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
			<a href="#">设备信息同步</a>
		</li>
	</ul> 
</div>
	<div style="width: 100%; padding: 0px 10px;">
		<form class="form-inline" style="margin: 10px 0px 10px 0px;" name=""
			method="post">
			<div class="form-group">
				<span>设备名称：</span> <input type="text" class="form-control"
					id="exampleInputName2" placeholder="请填写设备名称">
			</div>


			<div class="form-group" style="margin-left: 30px;">
				<button type="submit" class="sbtn sbtn-default">查询</button>
			</div>
		</form>

		<div class="divcss5">


			<div class="divcss5_left">设备信息同步</div>
			<div class="divcss5_right1">
				<button type="button" onclick="javascript:window.location.href='#'"
					class="sbtn sbtn-default">导出</button>
			</div>

			<div class="divcss5_right2">
				<button type="button" onclick="javascript:window.location.href='#'"
					class="sbtn sbtn-default">同步设备基础信息</button>
			</div>
			<div class="clear"></div>
		</div>

		<div id="policehold_211" class="dlshouwen-grid-container"
			style="margin-top: 5px;"></div>
		<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
	</div>
</body>

<script type="text/javascript">
	var datas = [ {
		"serialId" : 1,
		"deviceName" : "C873摄像头",
		"deviceId" : "#D0011",
		"IPAddress" : "233.233.233.233",
		"source" : "视频监控联网平台",
		"installSite" : "航站区候机大厅",
		"installTime" : "2017-06-09",
		"upadteTime" : "2017-06-09 15:53",
		"location" : "116.406281,39.911172",
		"connection" : "在线",
		"runningCondition" : "正常"
	}, {
		"serialId" : 2,
		"deviceName" : "C873摄像头",
		"deviceId" : "#D0011",
		"IPAddress" : "233.233.233.233",
		"source" : "视频监控联网平台",
		"installSite" : "航站区候机大厅",
		"installTime" : "2017-06-09",
		"upadteTime" : "2017-06-09 15:53",
		"location" : "116.406281,39.911172",
		"connection" : "在线",
		"runningCondition" : "正常"
	}, ];

	var gridColumns = [
			{
				id : 'serialId',
				title : '序号',
				type : 'number',
				columnClass : 'text-center'
			},
			{
				id : 'deviceName',
				title : '设备名称',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'IPAddress',
				title : 'IP地址',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'source',
				title : '平台',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'installSite',
				title : '安装地点',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'location',
				title : '定位信息',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'upadteTime',
				title : '更新时间',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'connection',
				title : '在线状态',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'runningCondition',
				title : '运行状况',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'operation',
				title : '操作',
				type : 'string',
				columnClass : 'text-center',
				resolution : function(value, record, column, grid, dataNo,
						columnNo) {
					var content = '';
					content += '<button class="sbtn sbtn-blue" onclick="showDetails();"> 查看详情</button>';
					return content;
				}
			} ];
	var gridOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '用户列表',
		datas : datas,
		columns : gridColumns,
		gridContainer : 'policehold_211',
		toolbarContainer : 'police_211',
		tools : '',
		pageSize : 10,
		pageSizeLimit : [ 10, 20, 50 ]
	};
	var grid = $.fn.dlshouwen.grid.init(gridOption);
	$(function() {
		grid.load();
	});

	function updateBtn() {
		alert("同步成功！");
	}
	function showDetails() {
		window.location.href = "deviceDetail.jsp";
	}
</script>
</html>