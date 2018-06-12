<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/pages/inc/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
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
			<a href="#">告警任务管理</a> 
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">告警接入任务管理</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li><a href="#">告警接入定时器</a></li>
	  </ul> 
</div>
	<div style="width: 100%; padding: 0px 10px;">
		<form class="form-inline" style="margin: 10px 0px 10px 0px;" name=""
			method="post">
			<!-- <div class="form-group">
				<span>告警接入定时器：</span> <input type="text" class="form-control" placeholder="请输入任务名称" id="exampleInputName2" >
			</div> -->

			<!-- <div class="form-group" style="margin-left: 30px;">
				<button type="submit" class="sbtn sbtn-default">添加定时器</button>
			</div> -->
		</form>

		<div class="divcss5">
			<div class="divcss5_left">告警接入定时器列表</div>
			<div class="divcss5_right1">
				<button type="button" onclick="javascript:window.location.href='<%=path %>/pages/AccessManaging/taskManaging/timerManaging/timerAdd.jsp'"
					class="sbtn sbtn-default">添加定时器</button>
			</div>

			<!-- <div class="divcss5_right2">
				<button type="button" onclick="javascript:window.location.href='#'"
					class="sbtn sbtn-default">同步设备基础信息</button>
			</div> -->
			<div class="clear"></div>
		</div>

		<div id="timerhold_211" class="dlshouwen-grid-container"
			style="margin-top: 5px;"></div>
		<div id="timer_bar" class="dlshouwen-grid-toolbar-container"></div>
	</div>
</body>

<script type="text/javascript">
	var datas = [ {
		"serialId" : 1,
		"timerId" : "#1001",
		"timerName" : "查询T1刷卡事件信息",
		"bindTaskId" : "#101",
		"bindTaskName" : "T1刷卡事件信息",
		"bindInterface" : "queryCheckIn",
		"executeInterval":"1000",
		"state" : "运行中",
		"operation" : ""
	}, {
		"serialId" : 2,
		"timerId" : "#1002",
		"timerName" : "查询T2刷卡事件信息",
		"bindTaskId" : "#102",
		"bindTaskName" : "T2刷卡事件信息",
		"bindInterface" : "queryCheckIn",
		"executeInterval":"1000",
		"state" : "运行中",
		"operation" : ""
	}, ];

	var gridColumns = [
			{
				id : 'serialId',
				title : '序号',
				type : 'number',
				columnClass : 'text-center'
			},
			{
				id : 'timerId',
				title : '定时器ID',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'timerName',
				title : '定时器名称',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'bindTaskId',
				title : '绑定任务编号',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'bindTaskName',
				title : '绑定任务名称',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'bindInterface',
				title : '绑定接口地址',
				type : 'string',
				columnClass : 'text-center'
			},
			
			{
				id : 'executeInterval',
				title : '执行间隔',
				type : 'string',
				columnClass : 'text-center'
			},
			
			
			{
				id : 'state',
				title : '状态',
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
					content += '<button class="sbtn sbtn-blue" onclick="modifyTimer();" style="margin-left:5px;"> 修改</button>';
					content += '<button class="sbtn sbtn-blue" style="margin-left:5px;"> 删除</button>';
					return content;
				}
			} ];
	var gridOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '告警接入任务列表',
		datas : datas,
		columns : gridColumns,
		gridContainer : 'timerhold_211',
		toolbarContainer : 'timer_bar',
		tools : '',
		pageSize : 10,
		pageSizeLimit : [ 10, 20, 50 ]
	};
	var grid = $.fn.dlshouwen.grid.init(gridOption);
	$(function() {
		grid.load();
	});

	
	function modifyTimer(){
		window.location.href = "timerModify.jsp";
	}
</script>
</html>