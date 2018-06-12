<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/pages/inc/header.jsp"%>
<title>设备单独授权</title>
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
			<i class=""></i> 
			<a href="#">设备管理</a> 
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">设备单独授权</a>
		</li>
	</ul> 
</div>
	<div style="width: 100%; padding: 0px 10px;">		
		<div class="divcss5">
			<div class="divcss5_left"><span class="divcss5_title">设备单独授权</span></div>
			<div class="divcss5_right">
				<button type="button"
					onclick="fn();"
					class="sbtn sbtn-default">授权</button>
			</div>
			<div class="clear"></div>
		</div>
		<div id="gridContainer_2_1_8" class="dlshouwen-grid-container" style="margin-top: 5px;"></div>
		<div id="gridToolBarContainer_2_1_8" class="dlshouwen-grid-toolbar-container"></div>		
	</div>
</body>
<script type="text/javascript">
var userdatas = [
	{ "num":"1" , "name":"李飞","function":"视频监控调用，查看实时图像，系统配置的更改"},																			
	{ "num":"2" , "name":"张龙","function":"视频监控调用"},
	{ "num":"3" , "name":"刘成","function":"视频监控调用"},
	{ "num":"4" , "name":"王全","function":"查看实时图像"},];
var gridColumns_2_1_8 = [
		    {id:'num', title:'序号', type:'string', columnClass:'text-center'},
		    {id:'name', title:'用户名', type:'string', columnClass:'text-center'},
		    {id:'function', title:'功能', type:'string',columnClass:'text-center'}
		];
		var gridOption_2_1_8 = {
		    lang : 'zh-cn',
		    ajaxLoad : false,
		    check : true,
		    checkWidth : 40,
		    exportFileName : '用户列表',
		    datas : userdatas,
		    columns : gridColumns_2_1_8,
		    gridContainer : 'gridContainer_2_1_8',
		    toolbarContainer : 'gridToolBarContainer_2_1_8',    tools : '',
		    pageSize : 10,
		    pageSizeLimit : [10, 20, 50]
		};
		var grid_2_1_8 = $.fn.dlshouwen.grid.init(gridOption_2_1_8);
		$(function(){
		    grid_2_1_8.load();
		});
		function getGrid_2_1_8CheckedRecordsLength(){
		    var recordCount = grid_2_1_8.getCheckedRecords().length;
		    alert('您一共选择了 '+recordCount+' 条。');
		}
		function fn(){
			confirm("你确定要授权？");
		}
</script>
</html>