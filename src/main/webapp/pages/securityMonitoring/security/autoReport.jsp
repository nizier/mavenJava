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
			<a href="#">安全事件处置</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li><a href="#">安全事件自动采集</a></li>
	</ul> 
</div>

<%-- 系统采集处理状态的弹窗1--%>
<div class="modal fade" tabindex="-1" role="dialog"
		id="autoTreatmentState1" aria-labelledby="myModalLabel" >
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
							<li class="step1 active"><i>1</i><p>事件报警</p><p>2017年7月13日 15:30:45</p><p>报警设备:警报器01</p><div class="auto_border"></div></li>
							<li class="step2"><i>2</i><p>报警确认</p><div class="auto_border"></div></li>
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
<%-- 系统采集处理状态的弹窗2--%>
<div class="modal fade" tabindex="-1" role="dialog"
		id="autoTreatmentState2" aria-labelledby="myModalLabel" >
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
							<li class="step1 active"><i>1</i><p>事件报警</p><p>2017年7月13日 15:30:45</p><p>报警设备:警报器01</p><div class="auto_border"></div></li>
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
							<li class="step2 active"><i>2</i><p>待确认</p><p>2017年7月10日</p><p>19:10:00</p><p>操作人:张三</p><div class="auto_border"></div></li>
							<li class="step4 active"><i>3</i><p>已确认</p><p>2017年7月10日</p><p>19:20:00</p><p>操作人:李四</p><div class="auto_border"></div></li>
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

	<div style="width: 100%; padding: 0px 10px;">
		<form class="form-inline" style="margin: 10px 0px 10px 0px;" name=""
			method="post">
			<div class="form-group">
				<span>事件名称：</span> <input type="text" class="form-control"
					id="exampleInputName2" placeholder="请填写事件名称">
			</div>
			<div class="form-group" style="margin-left: 30px;">
				<span>事件类别：</span> <select id="cardTypeSearch" name="cardTypeSearch"
					class="form-control">
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
			<div class="form-group" style="margin-left: 30px;">
				<span>处理状态：</span> <select id="cardStatusSearch"
					name="cardStatusSearch" class="form-control">
					<option value="">请选择</option>
					<option>待确认</option>
					<option>已确认</option>
				</select>
			</div>
			<div class="form-group" style="margin-left: 30px;">
				<button type="submit" class="sbtn sbtn-blue">查询</button>
			</div>
		</form>

		<div class="divcss5">
			<div class="divcss5_left">安全事件自动采集</div>
			
			<div class="clear"></div>
		</div>

		<div id="artificialArea" class="area-test">
			<div id="artificialTable" class="dlshouwen-grid-container"
				style="margin-top: 5px;"></div>
			<div id="artificialPage" class="dlshouwen-grid-toolbar-container"></div>
		</div>

		<div id="autoArea" class="area-test">
			<div id="autoTable" class="dlshouwen-grid-container"
				style="margin-top: 5px;"></div>
			<div id="autoPage" class="dlshouwen-grid-toolbar-container"></div>
		</div>
	</div>



</body>

<script type="text/javascript">

<%--自动采集数据 --%>
	var autoDatas = [ {
		"xuhao" : 1,
		"sbianhao" : "ITC-001-C101-D",
		"smingcheng" : "警报器01",
		"quyu" : "T2航站楼四楼",
		"jibie" : "二级",
		"shijian" : "2017-07-14 18:03:04",
		"zhuangtai" : "1",
		"caozuo" : "1",
		"view details" : "查看详情"
	}, {
		"xuhao" : 2,
		"sbianhao" : "ITC-001-C101-D",
		"smingcheng" : "警报器01",
		"quyu" : "T2航站楼四楼",
		"jibie" : "二级",
		"shijian" : "2017-07-14 18:03:04",
		"zhuangtai" : "2",
		"caozuo" : "2",
		"view details" : "查看详情"
	}, {
		"xuhao" : 3,
		"sbianhao" : "ITC-001-C101-D",
		"smingcheng" : "警报器01",
		"quyu" : "T2航站楼四楼",
		"jibie" : "二级",
		"shijian" : "2017-07-14 18:03:04",
		"zhuangtai" : "1",
		"caozuo" : "4",
		"view details" : "查看详情"
	} ];
<%--自动采集选项 --%>
	var autoColumns = [
			{
				id : 'xuhao',
				title : '序号',
				type : 'number',
				columnClass : 'text-center'
			},
			{
				id : 'sbianhao',
				title : '设备编号',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'smingcheng',
				title : '设备名称',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'quyu',
				title : '报警区域',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'jibie',
				title : '级别',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'shijian',
				title : '报警时间',
				type : 'string',
				columnClass : 'text-center'
			},
			
			{
				id : 'zhuangtai',
				title : '处理状态',
				type : 'string',
				columnClass : 'text-center',
				resolution : function(value, record, column, grid, dataNo,
						columnNo) {
					var content = '';
				 	if(value==1){
						content += '<a href="javascript:void(0)" onclick="doState(1)">待确认</a>';
					}
				 	else if(value==2){
				 		content += '<a href="javascript:void(0)" onclick="doState(2)">已确认</a>';
				 	}
					 return content;
				}
			},
			{
				id : 'caozuo',
				title : '操作',
				type : 'string',
				columnClass : 'text-center',
				resolution : function(value, record, column, grid, dataNo,
						columnNo) {
					var content = '';
					content += '<button class="sbtn sbtn-blue" onclick="autoDetails();"> 查看详情</button>';
					return content;
				}
			} ];
	var autoOption = {
			lang : 'zh-cn',
			ajaxLoad : false,
			datas : autoDatas,
			columns : autoColumns,
			gridContainer : 'autoTable',
			toolbarContainer : 'autoPage',
			tools : '',
			pageSize : 10,
			pageSizeLimit : [ 10, 20, 50 ]
		};

	var auto = $.fn.dlshouwen.grid.init(autoOption);
	$(function() {
		auto	.load();
	});
	
	
	
	function autoDetails() {
		window.location.href = "autDetails.jsp";
	}
	
	//系统上传状态处理
	function doState(num){
		if(num=="1"){
			$('#autoTreatmentState1').modal('show');
		}
		else if(num=="2"){
			$('#autoTreatmentState2').modal('show');
		}
		else if(num=="3"){
			$('#autoTreatmentState3').modal('show');
		}else {
			$('#autoTreatmentState4').modal('show');
		}
	}
	
	
</script>
</html>