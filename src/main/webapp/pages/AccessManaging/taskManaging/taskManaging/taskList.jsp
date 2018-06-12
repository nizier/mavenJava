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
		<li><a href="#">告警接入任务配置</a></li>
	  </ul> 
</div>
	<div style="width: 100%; padding: 0px 10px;">
		<form class="form-inline" style="margin: 10px 0px 10px 0px;" name=""
			method="post">
			<div class="form-group">
				<span>告警接入任务：</span> <input type="text" class="form-control" placeholder="请输入任务名称" id="exampleInputName2" >
			</div>

			<div class="form-group" style="margin-left: 30px;">
				<button type="submit" class="sbtn sbtn-default">查询</button>
			</div>
		</form>

		<div class="divcss5">
			<div class="divcss5_left">告警接入任务列表</div>
			<div class="divcss5_right1">
				<button type="button" onclick="javascript:window.location.href='<%=path %>/pages/AccessManaging/taskManaging/taskManaging/taskAdd.jsp'"
					class="sbtn sbtn-default">添加数据源</button>
			</div>

			<!-- <div class="divcss5_right2">
				<button type="button" onclick="javascript:window.location.href='#'"
					class="sbtn sbtn-default">同步设备基础信息</button>
			</div> -->
			<div class="clear"></div>
		</div>

		<div id="taskhold_211" class="dlshouwen-grid-container"
			style="margin-top: 5px;"></div>
		<div id="task_bar" class="dlshouwen-grid-toolbar-container"></div>
	</div>
</body>

<script type="text/javascript">
	var datas = [ {
		"serialId" : 1,
		"taskName" : "T3旅客信息表数据更新",
		"dataSourceName" : "安检信息管理系统(T3-厦门机电)",
		"dataType":"旅客相关",
		"sourceTable":"LKXXB1",
		"targetTable":"XKXXB1",
		"executeInterval" : "每个5分钟执行",
		"state" : "已启动",
		"serviceId":"esb_resource_t3lkxxbUpdate",
		"operation" : ""
	}, {
		"serialId" : 2,
		"taskName" : "T3旅客信息表数据采集",
		"dataSourceName" : "安检信息管理系统(T3-厦门机电)",
		"dataType":"旅客相关",
		"sourceTable":"LKXXB1",
		"targetTable":"LKXXB1",
		"executeInterval" : "每隔5分钟执行",
		"state" : "已启动",
		"serviceId":"esb_resource_t3lkxxb1Select",
		"operation" : ""
	}, 
	
	{
		"serialId" : 3,
		"taskName" : "T3安检信息数据采集",
		"dataSourceName" : "T3旅客安检信息",
		"dataType":"旅客相关",
		"sourceTable":"ajxxb1",
		"targetTable":"ajxxb1",
		"executeInterval" : "每隔5分钟执行",
		"state" : "已启动",
		"serviceId":"esb_resource_t3ajxxb1",
		"operation" : ""
	},];

	var gridColumns = [
			{
				id : 'serialId',
				title : '序号',
				type : 'number',
				columnClass : 'text-center'
			},
			
			{
				id : 'taskName',
				title : '任务名称',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'dataSourceName',
				title : '数据源',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'dataType',
				title : '数据类型',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'sourceTable',
				title : '源数据表',
				width:100,
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'targetTable',
				title : '目标表',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id:"executeInterval",
				title:"任务执行时间策略",
				width:160,
				type:'string',
				columnClass:'text-center'
			},
			{
				id : 'state',
				title : '状态',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'serviceId',
				title : '服务ID',
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
					content += '<button class="sbtn sbtn-blue" > 停止</button>';
					content += '<button class="sbtn sbtn-blue" onclick="modifyTask();" style="margin-left:5px;"> 编辑</button>';
					content += '<button class="sbtn sbtn-blue"  onclick="viewTask();"  style="margin-left:5px;"> 下线</button>';
					return content;
				}
			} ];
	var gridOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '告警接入任务列表',
		datas : datas,
		columns : gridColumns,
		gridContainer : 'taskhold_211',
		toolbarContainer : 'task_bar',
		tools : '',
		pageSize : 10,
		pageSizeLimit : [ 10, 20, 50 ]
	};
	var grid = $.fn.dlshouwen.grid.init(gridOption);
	$(function() {
		grid.load();
	});

	function viewTask() {
		window.location.href = "taskDetail.jsp";
	}
	
	function modifyTask(){
		window.location.href = "taskModify.jsp";
	}
</script>
</html>