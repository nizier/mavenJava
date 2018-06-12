<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/pages/inc/header.jsp"%>
<title>接口表管理</title>
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
			<a href="#">系统管理</a>
			<i class="fa fa-angle-right"></i>
		</li>
		
		<li>
			<a href="#">接口管理</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">接口表管理</a>
		</li>
	</ul> 
</div>
	<div style="width: 100%; padding: 0px 10px;">
		<form class="form-inline" style="margin: 10px 0px 10px 0px;" name=""
			method="post">
			<div class="form-group">
				<span>关键字：</span> <input type="text" class="form-control"
					id="exampleInputName2" placeholder="请填写设备名称">
			</div>


			<div class="form-group" style="margin-left: 30px;">
				<button type="submit" class="sbtn sbtn-default">查询</button>
			</div>
		</form>

		<div class="divcss5">


			<div class="divcss5_left">接口表管理</div>
		

			<div class="divcss5_right1">
				<button type="button" onclick="javascript:window.location.href='#'"
					class="sbtn sbtn-default">添加授权</button>
			</div>
			<div class="divcss5_right2">
				<button type="button" onclick="javascript:window.location.href='#'"
					class="sbtn sbtn-default">接口管理</button>
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
		"interface" : "查询T1刷卡信息接口",
		"database" : "t1_terminal",
		"table" : "entrance_info",
	}, {
		"serialId" : 2,
		"interface" : "查询T1刷卡信息接口",
		"database" : "t1_terminal",
		"table" : "entrance_info",
		
	}, 
	 {
		"serialId" : 3,
		"interface" : "查询T1刷卡信息接口",
		"database" : "t1_terminal",
		"table" : "exit_info",
	}, 
	];

	var gridColumns = [
			{
				id : 'serialId',
				title : '序号',
				type : 'number',
				columnClass : 'text-center'
			},
			{
				id : 'interface',
				title : '接口名称',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'database',
				title : '数据库名称',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'table',
				title : '接口表名称',
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
					content += '<button class="sbtn sbtn-blue" onclick="" style="margin-left:10px"> 查看详细</button>';
					content += '<button class="sbtn sbtn-blue" onclick="showDetails();" style="margin-left:10px"> 删除</button>';
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
	
</script>
</html>