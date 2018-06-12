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
	width: 150px;
}
.divcss5_right {
	float: right;	width: 120px;
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
			<a href="#">设备信息档案管理</a>
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
			<div class="form-group" style="margin-left: 30px;"></div>

			<div class="form-group" style="margin-left: 30px;">
				<button type="submit" class="sbtn sbtn-default">查询</button>
			</div>
		</form>

		<div class="divcss5">
			<div class="divcss5_left"><span class="divcss5_title">基础档案信息管理</span></div>
			<div class="divcss5_right">
				<button type="button"
					onclick="javascript:window.location.href='updateDevice.jsp'"
					class="sbtn sbtn-default">设备信息录入</button>
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
		"deviceName" : "高清摄像头",
		"deviceType" : "监控设备",
		"deviceId" : "#D0011",
		"serviceId" : "ZTE",
		"specifications" : "C873",
		"installDate" : "EVIA",
		"location" : "116.406281,39.911172",
		"vendor" : "EVIA",
		"department" : "安保部"
	}, {
		"serialId" : 2,
		"deviceName" : "高清摄像头",
		"deviceType" : "监控设备",
		"deviceId" : "#D0011",
		"serviceId" : "ZTE",
		"specifications" : "C873",
		"installDate" : "EVIA",
		"location" : "116.406281,39.911172",
		"vendor" : "EVIA",
		"department" : "安保部"
	} ];
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
				id : 'deviceType',
				title : '设备类型',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'deviceId',
				title : '设备编号',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'specifications',
				title : '规格型号',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'serviceId',
				title : '生产厂商',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'installDate',
				title : '维护厂 家',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'department',
				title : '管理部门',
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
		window.location.href = "updateDevice.jsp";
	}
	function showDetails() {
		window.location.href = "deviceDetail.jsp";
	}
</script>
</html>