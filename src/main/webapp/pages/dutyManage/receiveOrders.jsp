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
body {
    background: #fff none repeat scroll 0 0;
}
ol, ul, li {
    list-style: outside none none;
}

#sys-step1 li {
    color: #888;
    float: left;
    position: relative;
    text-align: center;
}
#sys-step1 li.step1 {
    text-align: left;
    width: 120px;
}
#sys-step1 li.step1 p {
    margin-left: -0.8em;
}
#sys-step1 li.step2 p {
    text-align: left;
}
#sys-step1 li.step3 p {
    text-align: left;
}
#sys-step1 li.step4 p {
    text-align: right;
}

#sys-step1 li.step2 {
    width: 185px;
}
#sys-step1 li.step3 {
    width: 185px;
}
#sys-step1 li.step4 {
	text-align:right;
    width: 160px;
}
.auto_border {
    background: #e6e6e6 none repeat scroll 0 0;
    height: 7px;
    position: absolute;
    top: 9px;
    width: 100%;
    z-index: -1;
}
#sys-step1 li i {
    background: #ccc none repeat scroll 0 0;
    border-radius: 50%;
    color: #fff;
    display: inline-block;
    font-weight: bold;
    height: 24px;
    line-height: 24px;
    margin-bottom: 7px;
    text-align: center;
    width: 24px;
}

#sys-step1 li.step4 i,p{
	margin-left: 60px;
}

#sys-step1 li.active {
    color: #2d456b;
}
#sys-step1 li.active i, #sys-step1 li.active .auto_border {
    background: #2d456b none repeat scroll 0 0;
}
.modal-content{z-index: 1;}
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
			<a href="#">日常值班管理</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li><a href="#">回单</a></li>
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
			<option>围界</option>
			<option>隐蔽报警</option>
			<option>视频监控</option>
			<option>围界道闸口</option>
			<option>安检</option>
			<option>消防</option>
		</select>
	</div>
	
	<div class="form-group" style="margin-left:30px;">
    	<span>事件位置：</span>
   		<select id="cardStatusSearch" name="cardStatusSearch" class="form-control">
			<option value="">请选择</option>
			<option>航站楼 </option>
			<option>飞行区</option>
			<option>入口</option>
		</select>
	</div>
	<div class="form-group" style="margin-left:30px;">
    	<button type="submit" class="sbtn sbtn-blue">查询</button>
	</div>	
</form>

<div class="divcss5"> 
    <div class="divcss5_left">回单</div>
    <div class="divcss5_right">
	    </div> 
    <div class="clear"></div>
</div> 
		
	
		<div id="paidanArea" class="area-test">
			<div id="paidanTable" class="dlshouwen-grid-container"
				style="margin-top: 5px;"></div>
			<div id="paidanPage" class="dlshouwen-grid-toolbar-container"></div>
		</div>

		

</div>


</body>

<script type="text/javascript">
var paidandatas = [{"xuhao":1,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
	"xingzhi":"事件性质","weizhi":"控制区",
	"zenrengren":"张三丰",
	"baojinfangshi":"电话","caozuo":"1","view details":"查看详情"},
	{"xuhao":2,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
		"xingzhi":"事件性质","weizhi":"飞行区",
		"zenrengren":"李四",
		"baojinfangshi":"电话","caijifangshi":"人工上报","chulizhuangtai":"1","caozuo":"1","view details":"查看详情"},
	{"xuhao":3,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
			"xingzhi":"事件性质","weizhi":"控制区",
			"zenrengren":"王欧",
			"baojinfangshi":"","caijifangshi":"自动采集","chulizhuangtai":"1","caozuo":"2","view details":"查看详情"},
	{"xuhao":4,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
				"xingzhi":"事件性质","weizhi":"控制区",
				"zenrengren":"阿里",
				"baojinfangshi":" ","caijifangshi":"自动采集","chulizhuangtai":"1","caozuo":"2","view details":"查看详情"},
	{"xuhao":5,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
					"xingzhi":"事件性质","weizhi":"控制区",
					"zenrengren":"司继娟",
					"baojinfangshi":"电话","caijifangshi":"人工上报","chulizhuangtai":"1","caozuo":"1","view details":"查看详情"},
	{"xuhao":6,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
						"xingzhi":"事件性质","weizhi":"控制区",
						"zenrengren":"彭东",
						"baojinfangshi":"","caijifangshi":"自动采集","chulizhuangtai":"1","caozuo":"2","view details":"查看详情"}
			];
			


var paidanColumns = [
	{id:'xuhao', title:'序号', type:'number', columnClass:'text-center'},	
	{id:'ningchen', title:'事件名称', type:'string',  columnClass:'text-center'},
	{id:'leibie', title:'事件类别', type:'string', columnClass:'text-center'},	
	{id:'xingzhi', title:'事件性质', type:'string', columnClass:'text-center'},
	{id:'weizhi', title:'位置', type:'string',  columnClass:'text-center'},
	{id:'zenrengren', title:'责任人', type:'string', columnClass:'text-center'},
	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center', resolution:function(value, record, column, grid, dataNo, columnNo){
		 var content = '';
		 content += '<button class="sbtn sbtn-blue" onclick="handleBtn();">回单</button>&nbsp;&nbsp;';	
		 return content;
	}}
];



var paidan = {
	lang : 'zh-cn',
	ajaxLoad : false,
	exportFileName : '用户列表',
	datas : paidandatas,
	columns : paidanColumns,
	gridContainer : 'paidanTable',
	toolbarContainer : 'paidanPage',
	tools : '',
	pageSize : 10,
	pageSizeLimit : [10, 20, 50]
};

var paidan = $.fn.dlshouwen.grid.init(paidan);

$(function(){
	paidan.load();
	
});

function doState(num){
	if(num=="1"){
		$('#safeTreatmentState1').modal('show');
	}
	else if(num=="2"){
		$('#safeTreatmentState2').modal('show');
	}
	else if(num=="3"){
		$('#safeTreatmentState3').modal('show');
	}
}
<%-- 事件确认--%>
function handleBtn() {
	window.location.href="huidan.jsp";
}

</script>
</html>