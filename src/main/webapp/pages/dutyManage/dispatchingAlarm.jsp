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
			<a href="#">安全事件处置</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li><a href="#">安全事件处警</a></li>
	</ul> 
</div>
<div style="width:100%;padding:0px 10px;">
<ul class="nav nav-tabs" id="myTab">
  <li class="active"><a href="receivingAlarm.jsp">接警</a></li>
   <li class="active"><a href="dispatchingAlarm.jsp" data-toggle="tab">处警</a></li>
</ul>
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
		<span>处理状态：</span>
		<select id="cardStatusSearch" name="cardStatusSearch" class="form-control">
			<option value="">请选择</option>
			<option>已分配</option>
			<option>未分配</option>
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
    	<button type="submit" class="sbtn sbtn-blue">查询</button>
	</div>	
</form>

<div class="divcss5"> 
    <div class="divcss5_left">安全事件处警</div>
    	
    <div class="divcss5_right">
	    </div> 
    <div class="clear"></div>
</div> 
	
	
	<ul class="nav nav-tabs" id="securityTable" style="margin-top: 10px">
			<li class="active"><a data-area-id="weifenpeiArea"
				style="cursor: pointer;">未分配</a></li>
			<li><a data-area-id="fenpeiArea" style="cursor: pointer;">已分配</a>
			</li>
			<li style="padding-top: 10px;padding-left: 250px">未分配事件：<font style="color: red;font-weight: bolder;">15</font>(件)&nbsp;&nbsp;已分配事件：21(件)</li>
	</ul>
	
	<div id="weifenpeiArea" class="area-test">
			<div id="weifenpeiTable" class="dlshouwen-grid-container"
				style="margin-top: 5px;"></div>
			<div id="weifenpeiPage" class="dlshouwen-grid-toolbar-container"></div>
		</div>

		<div id="fenpeiArea" class="area-test">
			<div id="fenpeiTable" class="dlshouwen-grid-container"
				style="margin-top: 5px;"></div>
			<div id="fenpeiPage" class="dlshouwen-grid-toolbar-container"></div>
	</div>
	
	
	
	
</div>
<%-- 安全事件处理状态的弹窗1--%>
<div class="modal fade" tabindex="-1" role="dialog"
		id="safeTreatmentState1" aria-labelledby="myModalLabel" >
		<div class="modal-dialog" role="document" style="width: 1000px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">
						<font>处理状态</font>
					</h4>
				</div>
				<div class="modal-body" id="stateBody">
					<div id="sys-step1" class="floatright"style="clear:both;">
						<ul>
							<li class="step1 active"><i>1</i><p>事件报警</p><p>2017年7月13日 15:30:45</p><p>报警人:赵飞</p><div class="auto_border"></div></li>
							<li class="step2 active"><i>2</i><p>报警确认</p><p>2017年7月13日 15:34:45</p><p>确认人:张三</p><div class="auto_border"></div></li>
							<li class="step2 "><i>3</i><p>报警处警</p><div class="auto_border"></div></li>
							<li class="step3 "><i>4</i><p>报警处理</p><div class="auto_border"></div></li>
							<li class="step4 "><i>5</i><p>警报解除</p><div class="auto_border"></div></li>
						</ul>
					</div>
					<div style="clear:both;"></div>
				</div>
				<div class="modal-footer" >
					<button type="button" id="hideGlobalModalBtn"
						class="sbtn sbtn-blue" data-dismiss="modal">返回</button>
				</div>
			</div>
		</div>
</div>

<%-- 安全事件处理状态的弹窗2--%>
<div class="modal fade" tabindex="-1" role="dialog"
		id="safeTreatmentState2" aria-labelledby="myModalLabel" >
		<div class="modal-dialog" role="document" style="width: 1000px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">
						<font>处理状态</font>
					</h4>
				</div>
				<div class="modal-body" id="stateBody">
					<div id="sys-step1" class="floatright"style="clear:both;">
						<ul>
							<li class="step1 active"><i>1</i><p>事件报警</p><p>2017年7月13日 15:30:45</p><p>报警人:赵飞</p><div class="auto_border"></div></li>
							<li class="step2 active"><i>2</i><p>报警确认</p><p>2017年7月13日 15:34:45</p><p>确认人:张三</p><div class="auto_border"></div></li>
							<li class="step2 active"><i>3</i><p>报警处警</p><p>2017年7月13日 15:45:37</p><p>分配人:李四</p><p>值班人:张磊</p><div class="auto_border"></div></li>
							<li class="step3 "><i>4</i><p>报警处理</p><div class="auto_border"></div></li>
							<li class="step4 "><i>5</i><p>警报解除</p><div class="auto_border"></div></li>
						</ul>
					</div>
					<div style="clear:both;"></div>
				</div>
				<div class="modal-footer" >
					<button type="button" id="hideGlobalModalBtn"
						class="sbtn sbtn-blue" data-dismiss="modal">返回</button>
				</div>
			</div>
		</div>
</div>
</body>

<script type="text/javascript">
var weifenpeidatas = [{"xuhao":1,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
	"shijian":"2017-01-10 05:22:21","weizhi":"控制区",
	"fuzeren":"","bumen":"","baojinrenleibie":"机场值班人员",
	"baojinfangshi":"电话","caijifangshi":"人工上报","chulizhuangtai":"1","caozuo":"1","view details":"查看详情"},
	{"xuhao":2,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
		"shijian":"2017-01-10 05:22:21","weizhi":"飞行区",
		"fuzeren":"李四","bumen":"消防","baojinrenleibie":"机场值班人员",
		"baojinfangshi":"电话","caijifangshi":"人工上报","chulizhuangtai":"1","caozuo":"1","view details":"查看详情"},
	{"xuhao":3,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
			"shijian":"2017-01-10 05:22:21","weizhi":"控制区",
			"fuzeren":"李飞","bumen":"消防","baojinrenleibie":"机场值班人员",
			"baojinfangshi":"","caijifangshi":"自动采集","chulizhuangtai":"1","caozuo":"1","view details":"查看详情"},
	{"xuhao":4,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
				"shijian":"2017-01-20 05:22:21","weizhi":"控制区",
				"fuzeren":"","bumen":"","baojinrenleibie":"机场值班人员",
				"baojinfangshi":" ","caijifangshi":"自动采集","chulizhuangtai":"1","caozuo":"1","view details":"查看详情"},
	{"xuhao":5,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
					"shijian":"2017-01-10 05:22:21","weizhi":"控制区",
					"fuzeren":"司继娟","bumen":"消防","baojinrenleibie":"机场值班人员",
					"baojinfangshi":"电话","caijifangshi":"人工上报","chulizhuangtai":"1","caozuo":"1","view details":"查看详情"},
	{"xuhao":6,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
						"shijian":"2017-02-10 05:22:21","weizhi":"控制区",
						"fuzeren":"","bumen":"","baojinrenleibie":"机场值班人员",
						"baojinfangshi":"","caijifangshi":"自动采集","chulizhuangtai":"1","caozuo":"1","view details":"查看详情"}
			];


var fenpeidatas = [{"xuhao":1,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
	"shijian":"2017-01-10 05:22:21","weizhi":"控制区",
	"fuzeren":"","bumen":"","baojinrenleibie":"机场值班人员",
	"baojinfangshi":"电话","caijifangshi":"人工上报","chulizhuangtai":"2","caozuo":"2","view details":"查看详情"},
	{"xuhao":2,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
		"shijian":"2017-01-10 05:22:21","weizhi":"飞行区",
		"fuzeren":"李四","bumen":"消防","baojinrenleibie":"机场值班人员",
		"baojinfangshi":"电话","caijifangshi":"人工上报","chulizhuangtai":"2","caozuo":"2","view details":"查看详情"},
	{"xuhao":3,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
			"shijian":"2017-01-10 05:22:21","weizhi":"控制区",
			"fuzeren":"李飞","bumen":"消防","baojinrenleibie":"机场值班人员",
			"baojinfangshi":"","caijifangshi":"自动采集","chulizhuangtai":"2","caozuo":"2","view details":"查看详情"},
	{"xuhao":4,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
				"shijian":"2017-01-20 05:22:21","weizhi":"控制区",
				"fuzeren":"","bumen":"","baojinrenleibie":"机场值班人员",
				"baojinfangshi":" ","caijifangshi":"自动采集","chulizhuangtai":"2","caozuo":"2","view details":"查看详情"},
	{"xuhao":5,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
					"shijian":"2017-01-10 05:22:21","weizhi":"控制区",
					"fuzeren":"司继娟","bumen":"消防","baojinrenleibie":"机场值班人员",
					"baojinfangshi":"电话","caijifangshi":"人工上报","chulizhuangtai":"2","caozuo":"2","view details":"查看详情"},
	{"xuhao":6,"ningchen":"摄像头不能遥控","leibie":"安防安全类",
						"shijian":"2017-02-10 05:22:21","weizhi":"控制区",
						"fuzeren":"","bumen":"","baojinrenleibie":"机场值班人员",
						"baojinfangshi":"","caijifangshi":"自动采集","chulizhuangtai":"2","caozuo":"2","view details":"查看详情"}
			];

var weifenpeiColumns = [
	{id:'xuhao', title:'序号', type:'number', columnClass:'text-center'},	
	{id:'ningchen', title:'事件名称', type:'string',  columnClass:'text-center'},
	{id:'leibie', title:'事件类别', type:'string', columnClass:'text-center'},	
	{id:'shijian', title:'时间', type:'string', columnClass:'text-center'},
	{id:'weizhi', title:'位置', type:'string',  columnClass:'text-center'},
	{id:'bumen', title:'所在部门', type:'string', columnClass:'text-center'},
	{id:'fuzeren', title:'值班人', type:'string', columnClass:'text-center'},
	{id:'caijifangshi', title:'采集方式', type:'string', columnClass:'text-center'},
	{id:'chulizhuangtai', title:'处理状态', type:'string', columnClass:'text-center',	resolution : function(value, record, column, grid, dataNo,
			columnNo) {
		var content = '';
		content += '<a href="javascript:void(0)" onclick="doState(1)">未分配</a>';
		 return content;
	}},
	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center', resolution:function(value, record, column, grid, dataNo, columnNo){
		 var content = '';
		 content += '<button class="sbtn sbtn-blue" onclick="handleBtn();" >分配任务</button>&nbsp;&nbsp;';
		 content += '<button class="sbtn sbtn-blue" onclick="handleDetails();"> 查看详情</button>';
		 return content;
	}}
];

var fenpeiColumns = [
	{id:'xuhao', title:'序号', type:'number', columnClass:'text-center'},	
	{id:'ningchen', title:'事件名称', type:'string',  columnClass:'text-center'},
	{id:'leibie', title:'事件类别', type:'string', columnClass:'text-center'},	
	{id:'shijian', title:'时间', type:'string', columnClass:'text-center'},
	{id:'weizhi', title:'位置', type:'string',  columnClass:'text-center'},
	{id:'bumen', title:'所在部门', type:'string', columnClass:'text-center'},
	{id:'fuzeren', title:'值班人', type:'string', columnClass:'text-center'},
	{id:'caijifangshi', title:'采集方式', type:'string', columnClass:'text-center'},
	{id:'chulizhuangtai', title:'处理状态', type:'string', columnClass:'text-center',	resolution : function(value, record, column, grid, dataNo,
			columnNo) {
		var content = '';
	 	content += '<a href="javascript:void(0)" onclick="doState(2)">已分配</a>';
		 return content;
	}},
	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center', resolution:function(value, record, column, grid, dataNo, columnNo){
		 var content = '';
		 content += '<button class="sbtn sbtn-blue" onclick="handleDetails();"> 查看详情</button>';
		 return content;
	}}
];

var weifenpeiOption = {
	lang : 'zh-cn',
	ajaxLoad : false,
	exportFileName : '用户列表',
	datas : weifenpeidatas,
	columns : weifenpeiColumns,
	gridContainer : 'weifenpeiTable',
	toolbarContainer : 'weifenpeiPage',
	tools : '',
	pageSize : 10,
	pageSizeLimit : [10, 20, 50]
};

var fenpeiOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '用户列表',
		datas : fenpeidatas,
		columns : fenpeiColumns,
		gridContainer : 'fenpeiTable',
		toolbarContainer : 'fenpeiPage',
		tools : '',
		pageSize : 10,
		pageSizeLimit : [10, 20, 50]
	};

var weifenpei = $.fn.dlshouwen.grid.init(weifenpeiOption);
var fenpei = $.fn.dlshouwen.grid.init(fenpeiOption);

$(function(){
	weifenpei.load();
	fenpei.load();
	$("#fenpeiArea").hide();
	$('#securityTable a').click(function(e) {
		e.preventDefault();//阻止a链接的跳转行为 
		var area = $(this).attr("data-area-id");
		if ($(".btn-default").css("display") == "none") {
			$(".btn-default").css('display','block');
		}else{
			$(".btn-default").css('display','none');
		}
		$(".area-test").hide();
		$("#" + area).show();
		$(this).tab('show');//显示当前选中的链接及关联的content

	});
});
function handleBtn(){
	window.location.href="<%=path %>/pages/securityMonitoring/security/eventConfirmation.jsp";
}
function handleDetails(){
	window.location.href="<%=path %>/pages/securityMonitoring/security/chuJingDetails.jsp";
}
function doState(num){
	if(num=="1"){
		$('#safeTreatmentState1').modal('show');
	}
	else if(num=="2"){
		$('#safeTreatmentState2').modal('show');
	}
}
</script>
</html>