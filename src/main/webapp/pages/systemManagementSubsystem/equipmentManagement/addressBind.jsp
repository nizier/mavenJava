<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/pages/inc/header.jsp"%>
<title>IP地址绑定</title>
</head>
<style type="text/css">
.btn .btn-default {
	background: #1f4a09;
}
.divcss5 {
	background: #67809F;
	height: 40px;
	line-height: 40px;
	padding: 0px 15px;
	color: #fff;
}
.divcss5_left {
	float: left;
	width: 150px;
}
.divcss5_right {
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
			<a href="#">设备管理</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li><a href="#">IP地址绑定</a></li>
	</ul> 
</div>
<%-- 系统采集处理状态的弹窗1--%>
<div class="modal fade" tabindex="-1" role="dialog"
		id="autoTreatmentState1" aria-labelledby="myModalLabel" >
		<div class="modal-dialog" role="document" style="width: 800px">
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
							<li class="step1 active"><i>1</i><p>设备报警</p><p>2017年7月10日 19:00:37</p><p>操作人:门禁系统</p><div class="auto_border"></div></li>
							<li class="step2"><i>2</i><p>报警确认</p><div class="auto_border"></div></li>
							<li class="step3"><i>3</i><p>任务分派、处理</p><div class="auto_border"></div></li>
							<li class="step4"><i>4</i><p>处理完成</p><div class="auto_border"></div></li>
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
<%-- 系统采集处理状态的弹窗2--%>
<div class="modal fade" tabindex="-1" role="dialog"
		id="autoTreatmentState2" aria-labelledby="myModalLabel" >
		<div class="modal-dialog" role="document" style="width: 800px">
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
							<li class="step1 active"><i>1</i><p>设备报警</p><p>2017年7月10日</p><p>19:00:37</p><p>操作人:门禁系统</p><div class="auto_border"></div></li>
							<li class="step2 active"><i>2</i><p>报警确认</p><p>2017年7月10日</p><p>19:10:00</p><p>操作人:张三</p><div class="auto_border"></div></li>
							<li class="step3 "><i>3</i><p>任务分派、处理</p><p></p><div class="auto_border"></div></li>
							<li class="step4"><i>4</i><p>处理完成</p><p></p><div class="auto_border"></div></li>
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
<%-- 系统采集处理状态的弹窗3--%>
<div class="modal fade" tabindex="-1" role="dialog"
		id="autoTreatmentState3" aria-labelledby="myModalLabel" >
		<div class="modal-dialog" role="document" style="width: 800px">
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
							<li class="step1 active"><i>1</i><p>设备报警</p><p>2017年7月10日</p><p>19:00:37</p><p>操作人:门禁系统</p><div class="auto_border"></div></li>
							<li class="step2 active"><i>2</i><p>报警确认</p><p>2017年7月10日</p><p>19:10:00</p><p>操作人:张三</p><div class="auto_border"></div></li>
							<li class="step3 active"><i>3</i><p>任务分派、处理</p><p>2017年7月10日</p><p>19:20:00</p><p>操作人:李四</p><div class="auto_border"></div></li>
							<li class="step4"><i>4</i><p>处理完成</p><p></p><div class="auto_border"></div></li>
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
<%-- 系统采集处理状态的弹窗4--%>
<div class="modal fade" tabindex="-1" role="dialog"
		id="autoTreatmentState4" aria-labelledby="myModalLabel" >
		<div class="modal-dialog" role="document" style="width: 800px">
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
							<li class="step1 active"><i>1</i><p>设备报警</p><p>2017年7月10日</p><p>19:00:37</p><p>操作人:门禁系统</p><div class="auto_border"></div></li>
							<li class="step2 active"><i>2</i><p>报警确认</p><p>2017年7月10日</p><p>19:10:00</p><p>操作人:张三</p><div class="auto_border"></div></li>
							<li class="step3 active"><i>3</i><p>任务分派、处理</p><p>2017年7月10日</p><p>19:20:00</p><p>操作人:李四</p><div class="auto_border"></div></li>
							<li class="step4 active"><i>4</i><p>处理完成</p><p>2017年7月10日</p><p>19:30:00</p><p>操作人:王五</p><div class="auto_border"></div></li>
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
<%--详情页面用弹窗显示 --%>
	<div style="width: 100%; padding: 0px 10px;">
		<form class="form-inline" style="margin: 10px 0px 10px 0px;" name=""
			method="post">
			<div class="form-group">
				<span>用户名：</span> <input type="text" class="form-control"
					id="exampleInputName2" placeholder="请填写用户名">
			</div>
			<div class="form-group" style="margin-left: 30px;">
				<span>IP地址：</span>  <input type="text" class="form-control"
					id="exampleInputName2" placeholder="请填写IP地址">
			</div>
			<div class="form-group" style="margin-left: 30px;">
				<span>IP绑定状态：</span> <select id="cardStatusSearch"
					name="cardStatusSearch" class="form-control">
					<option value="">请选择</option>
					<option>未绑定</option>
					<option>已绑定</option>					
				</select>
			</div>
			<div class="form-group" style="margin-left: 30px;">
				<button type="submit" class="sbtn sbtn-blue">查询</button>
			</div>
		</form>
		<div class="divcss5">
			<div class="divcss5_left">IP地址绑定</div>
			<div class="divcss5_right">
				<button type="button"
					onclick="javascript:window.location.href='#'"
					class="btn btn-default">新增</button>
			</div>
			<div class="clear"></div>
		</div>
		<ul class="nav nav-tabs" id="securityTable" style="margin-top: 10px">
			<li class="active"><a data-area-id="noBindArea" style="cursor: pointer;">未绑定</a>
			</li>
			<li><a data-area-id="bindArea" style="cursor: pointer;">已绑定</a>
			</li>
		</ul>
		<div id="noBindArea" class="area-test">
			<div id="noBindTable" class="dlshouwen-grid-container"
				style="margin-top: 5px;"></div>
			<div id="noBindPage" class="dlshouwen-grid-toolbar-container"></div>
		</div>

		<div id="bindArea" class="area-test">
			<div id="bindTable" class="dlshouwen-grid-container"
				style="margin-top: 5px;"></div>
			<div id="bindPage" class="dlshouwen-grid-toolbar-container"></div>
		</div>
	</div>
</body>
<script type="text/javascript">	
<%--未绑定数据 --%>
	var noBindDatas = [ {
		"xuhao" : 1,	
		"IP" : "127.0.0.1",		
		"time" : "2017-6-15 12:35:30",
		"trend" : "未绑定"
	}, {
		"xuhao" : 2,	
		"IP" : "127.0.0.2",		
		"time" : "2017-6-15 12:35:30",
		"trend" ; "未绑定"
	}, {
		"xuhao" : 3,	
		"IP" : "127.0.0.3",		
		"time" : "2017-6-15 12:35:30",
		"trend" ; "未绑定"
	} ];
<%--已绑定数据 --%>
	var bindDatas = [ {
		"xuhao" : 1,
		"userName" : "李飞",
		"IP" : "127.0.1.1",		
		"time" : "2017-6-15 12:35:30",
		"trend" : "绑定"
	}, {
		"xuhao" : 2,
		"userName" : "马飞",
		"IP" : "127.0.1.2",		
		"time" : "2017-6-15 12:35:30",
		"trend" : "绑定"
	}, {
		"xuhao" : 3,
		"userName" : "常飞",
		"IP" : "127.0.1.3",		
		"time" : "2017-6-15 12:35:30",
		"trend" : "绑定"
	} ];
<%--未绑定选项 --%>
	var noBindColumns = [
			{id : 'xuhao',
				title : '序号',
				type : 'number',
				columnClass : 'text-center'},		1
			{id : 'IP',
				title : 'IP地址',
				type : 'string',
				columnClass : 'text-center'},
			{id : 'time',
				title : '时间',
				type : 'string',
				columnClass : 'text-center'},
			{id : 'trend',
				title : '绑定状态',
				type : 'string',
				columnClass : 'text-center'},
			{id : 'operation',
				title : '操作',
				type : 'string',
				columnClass : 'text-center',
				resolution : function(value, record, column, grid, dataNo,
						columnNo) {
					var content = '';
					content += '<button class="sbtn sbtn-blue" onclick="noBind();"> 绑定</button>';		
					return content;}} ];
<%--已绑定选项 --%>
	var bindColumns = [
			{id : 'xuhao',
				title : '序号',
				type : 'number',
				columnClass : 'text-center'},
			{id : 'userName',
				title : '用户名',
				type : 'string',
				columnClass : 'text-center'},
			{id : 'IP',
				title : 'IP地址',
				type : 'string',
				columnClass : 'text-center'},
			{id : 'time',
				title : '时间',
				type : 'string',
				columnClass : 'text-center'},
			{id : 'trend',
				title : '绑定状态',
				type : 'string',
				columnClass : 'text-center'},
			{
				id : 'caozuo',
				title : '操作',
				type : 'string',
				columnClass : 'text-center',
				resolution : function(value, record, column, grid, dataNo,
						columnNo) {
					var content = '';
						content += '<button class="sbtn sbtn-blue" onclick=" edit();" >编辑</button>';		
					var content = '';
						content += '<button class="sbtn sbtn-blue" onclick="bindDetails();"> 查看详情</button>';
					return content;
				}
			} ];
	var noBindOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		datas : noBindDatas,
		columns : noBindColumns,
		gridContainer : 'noBindTable',
		toolbarContainer : 'noBindPage',
		tools : '',
		pageSize : 10,
		pageSizeLimit : [ 10, 20, 50 ]
	};

	var bindOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		datas : bindDatas,
		columns : bindColumns,
		gridContainer : 'bindTable',
		toolbarContainer : 'bindPage',
		tools : '',
		pageSize : 10,
		pageSizeLimit : [ 10, 20, 50 ]
	};
	var noBind = $.fn.dlshouwen.grid.init(noBindOption);
	var bind = $.fn.dlshouwen.grid.init(bindOption);
	$(function() {
		noBind.load();
		bind.load();
		$("#noBindArea").hide();
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
	function edit() {
		//$('#eventConfirmation').modal('show');
		window.location.href="#";}	
	function noBind() {
		window.location.href = "#";}
	function autoDetails() {
		window.location.href = "#";}	
</script>
</html>