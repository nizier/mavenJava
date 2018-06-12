<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/pages/inc/header.jsp"%>
<title>处警</title>
</head>
<style type="text/css">
.btn .btn-default{background:#1f4a09;}

.divcss5{background:#67809F;height:40px;line-height:40px;padding:0px 15px;color:#fff;} 
.divcss5_left{ float:left;width:150px;} 
.divcss5_right{ float:right;width:120px;padding:3px 0px;} 
.clear{ clear:both;}

.form-inline .form-control{
	width:130px;
}

#exampleInputName2{height: 34px;padding: 6px 12px;}
.page-bar{background:#f7f7f7;}
</style>
<body>
<div class="page-bar">
	<ul class="page-breadcrumb">
		<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i class="fa fa-angle-right"></i></li>
		<li><a href="#">安全事件处警</a></li>
	</ul>
</div>
<div style="width:100%;padding:0px 10px;">
<form class="form-inline" style="margin:10px 0px 10px 0px;" name="" method="post">	
	<div class="form-group">
	    <span>事件名称：</span>
	    <input type="text" class="form-control" id="exampleInputName2" placeholder="请填写事件名称">
  	</div>
	<div class="form-group" style="margin-left:30px;">
		<span>事件类别：</span>
		<select id="cardTypeSearch" name="cardTypeSearch" class="form-control">
			<option value="">请选择</option>
			<option>门禁</option>
			<option>卡口</option>
			<option>围戒</option>
		</select>
	</div>
	<div class="form-group" style="margin-left:30px;">
		<span>处理状态：</span>
		<select id="cardStatusSearch" name="cardStatusSearch" class="form-control">
			<option value="">请选择</option>
			<option>未处理</option>
			<option>处理中</option>
			<option>处理完成</option>
		</select>
	</div>
	<div class="form-group" style="margin-left:30px;">
    	<span>采集方式：</span>
   		<select id="cardStatusSearch" name="cardStatusSearch" class="form-control">
			<option value="">请选择</option>
			<option>自动采集 </option>
			<option>人工上报</option>
		</select>
	</div>
	<div class="form-group" style="margin-left:30px;">
    	<button type="submit" class="btn btn-default">查询</button>
	</div>	
</form>

<div class="divcss5"> 
    <div class="divcss5_left">安全事件信息管理表</div> 
    <div class="divcss5_right">
    	<button type="button" onclick="javascript:window.location.href='eventEnter.jsp'" class="btn btn-default">安全事件录入</button>
    </div> 
    <div class="clear"></div>
</div> 
			
<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
</div>
</body>

<script type="text/javascript">
var datas = [{"xuhao":1,"ningchen":"摄像头不能扭转","leibie":"消防安全类",
	"shijian":"2017-01-10 05:22:21","weizhi":"控制区",
	"fuzeren":"张三丰","bumen":"消防","baojinrenleibie":"机场值班人员",
	"baojinfangshi":"电话","caijifangshi":"人工上报","chulizhuangtai":"未处理","caozuo":"事件确认","view details":"查看详情"},
	{"xuhao":2,"ningchen":"摄像头不能扭转","leibie":"消防安全类",
		"shijian":"2017-01-10 05:22:21","weizhi":"飞行区",
		"fuzeren":"李四","bumen":"消防","baojinrenleibie":"机场值班人员",
		"baojinfangshi":"电话","caijifangshi":"人工上报","chulizhuangtai":"未处理","caozuo":"事件确认","view details":"查看详情"},
	{"xuhao":3,"ningchen":"摄像头不能扭转","leibie":"消防安全类",
			"shijian":"2017-01-10 05:22:21","weizhi":"控制区",
			"fuzeren":"李飞","bumen":"消防","baojinrenleibie":"机场值班人员",
			"baojinfangshi":"","caijifangshi":"自动采集","chulizhuangtai":"未处理","caozuo":"事件确认","view details":"查看详情"},
	{"xuhao":4,"ningchen":"摄像头不能扭转","leibie":"消防安全类",
				"shijian":"2017-01-20 05:22:21","weizhi":"控制区",
				"fuzeren":"张龙","bumen":"消防","baojinrenleibie":"机场值班人员",
				"baojinfangshi":" ","caijifangshi":"自动采集","chulizhuangtai":"未处理","caozuo":"事件确认","view details":"查看详情"},
	{"xuhao":5,"ningchen":"摄像头不能扭转","leibie":"消防安全类",
					"shijian":"2017-01-10 05:22:21","weizhi":"控制区",
					"fuzeren":"司继娟","bumen":"消防","baojinrenleibie":"机场值班人员",
					"baojinfangshi":"电话","caijifangshi":"人工上报","chulizhuangtai":"未处理","caozuo":"事件确认","view details":"查看详情"},
	{"xuhao":6,"ningchen":"摄像头不能扭转","leibie":"消防安全类",
						"shijian":"2017-02-10 05:22:21","weizhi":"控制区",
						"fuzeren":"李四","bumen":"消防","baojinrenleibie":"机场值班人员",
						"baojinfangshi":"","caijifangshi":"自动采集","chulizhuangtai":"未处理","operation":"事件确认","view details":"查看详情"}
			];

var gridColumns_2_1_1 = [
	{id:'xuhao', title:'序号', type:'number', columnClass:'text-center'},	
	{id:'ningchen', title:'事件名称', type:'string',  columnClass:'text-center'},
	{id:'leibie', title:'事件类别', type:'string', columnClass:'text-center'},	
	{id:'shijian', title:'时间', type:'string', columnClass:'text-center'},
	{id:'weizhi', title:'位置', type:'string',  columnClass:'text-center'},
	{id:'fuzeren', title:'负责人', type:'string', columnClass:'text-center'},
	{id:'bumen', title:'所在部门', type:'string', columnClass:'text-center'},
	{id:'caijifangshi', title:'采集方式', type:'string', columnClass:'text-center'},
	{id:'chulizhuangtai', title:'处理状态', type:'string', columnClass:'text-center'},
	{id:'operation', title:'操作', type:'string', columnClass:'text-center', resolution:function(value, record, column, grid, dataNo, columnNo){
		 var content = '';
		 content += '<button class="btn btn-xs btn-default" onclick="handleBtn();">事件处理</button>&nbsp;&nbsp;';		  
		 content += '<button class="btn btn-xs btn-default" onclick="handleDetails();"> 查看详情</button>';		 
		 return content;
	}}
];
var gridOption_2_1_1 = {
	lang : 'zh-cn',
	ajaxLoad : false,
	exportFileName : '用户列表',
	datas : datas,
	columns : gridColumns_2_1_1,
	gridContainer : 'policehold_211',
	toolbarContainer : 'police_211',
	tools : '',
	pageSize : 10,
	pageSizeLimit : [10, 20, 50]
};
var grid_2_1_1 = $.fn.dlshouwen.grid.init(gridOption_2_1_1);
$(function(){
	grid_2_1_1.load();
});

function handleBtn(){
	window.location.href="eventConfirmation1.jsp";
}
function handleDetails(){
	window.location.href="viewDetails_chujing.jsp";
}
</script>
</html>