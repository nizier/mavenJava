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
		<li><a href="#">安全事件接警</a></li>
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

<%-- 人工采集处理状态的弹窗1--%>
<div class="modal fade" tabindex="-1" role="dialog"
		id="artificialTreatmentState1" aria-labelledby="myModalLabel" >
		<div class="modal-dialog" role="document" style="width: 600px">
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
							<li class="step1 active"><i>1</i><p>人工报警</p><p>2017年7月11日 12:00:37</p><p>操作人:张三</p><div class="auto_border"></div></li>
							<li class="step2"><i>2</i><p>任务分派、处理</p><div class="auto_border"></div></li>
							<li class="step4"><i>3</i><p>处理完成</p><div class="auto_border"></div></li>
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

<%-- 人工采集处理状态的弹窗2--%>
<div class="modal fade" tabindex="-1" role="dialog"
		id="artificialTreatmentState2" aria-labelledby="myModalLabel" >
		<div class="modal-dialog" role="document" style="width: 600px">
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
							<li class="step1 active"><i>1</i><p>设备报警</p><p>2017年7月11日</p><p>12:00:37</p><p>操作人:张三</p><div class="auto_border"></div></li>
							<li class="step2 active"><i>2</i><p>任务分派、处理</p><p>2017年7月11日</p><p>12:20:00</p><p>操作人:陈丽</p><div class="auto_border"></div></li>
							<li class="step4"><i>3</i><p>处理完成</p><p></p><div class="auto_border"></div></li>
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
<%-- 人工采集处理状态的弹窗3--%>
<div class="modal fade" tabindex="-1" role="dialog"
		id="artificialTreatmentState3" aria-labelledby="myModalLabel" >
		<div class="modal-dialog" role="document" style="width: 600px">
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
							<li class="step1 active"><i>1</i><p>人工报警</p><p>2017年7月11日</p><p>12:00:37</p><p>操作人:张三</p><div class="auto_border"></div></li>
							<li class="step2 active"><i>2</i><p>任务分派、处理</p><p>2017年7月11日</p><p>12:20:00</p><p>操作人:陈丽</p><div class="auto_border"></div></li>
							<li class="step4 active"><i>3</i><p>处理完成</p><p>2017年7月10日</p><p>12:30:00</p><p>操作人:王伟</p><div class="auto_border"></div></li>
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
				<span>事件名称：</span> <input type="text" class="form-control"
					id="exampleInputName2" placeholder="请填写事件名称">
			</div>
			<div class="form-group" style="margin-left: 30px;">
				<span>事件类别：</span> <select id="cardTypeSearch" name="cardTypeSearch"
					class="form-control">
					<option value="">请选择</option>
					<option>门禁</option>
					<option>卡口</option>
					<option>围戒</option>
				</select>
			</div>
			<div class="form-group" style="margin-left: 30px;">
				<span>处理状态：</span> <select id="cardStatusSearch"
					name="cardStatusSearch" class="form-control">
					<option value="">请选择</option>
					<option>未处理</option>
					<option>处理中</option>
					<option>处理完成</option>
				</select>
			</div>
			<div class="form-group" style="margin-left: 30px;">
				<button type="submit" class="sbtn sbtn-blue">查询</button>
			</div>
		</form>

		<div class="divcss5">
			<div class="divcss5_left">安全事件信息管理表</div>
			<div class="divcss5_right">
				<button type="button"
					onclick="javascript:window.location.href='eventEntry.jsp'"
					class="btn btn-default">安全事件录入</button>
			</div>
			<div class="clear"></div>
		</div>
		<ul class="nav nav-tabs" id="securityTable" style="margin-top: 10px">
			<li class="active"><a data-area-id="artificialArea"
				style="cursor: pointer;">人工上报</a></li>
			<li><a data-area-id="autoArea" style="cursor: pointer;">自动采集</a>
			</li>

		</ul>

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
	
<%--人工上报数据 --%>
	var artificialDatas = [ {
		"xuhao" : 1,
		"mingchen" : "摄像头不能扭转",
		"leibie" : "消防安全类",
		"jibie" : "一级",
		"shijian" : "2017-01-10 05:22:21",
		"weizhi" : "控制区",
		"baojinren" : "张三丰",
		"baojinrennumber" : "18895731508",
		"baojinrenleibie" : "机场值班人员",
		"baojinfangshi" : "电话",
		"chulizhuangtai" : "1",
		"caozuo" : "事件确认",
		"view details" : "查看详情"
	}, {
		"xuhao" : 2,
		"mingchen" : "摄像头不能扭转",
		"leibie" : "消防安全类",
		"jibie" : "一级",
		"shijian" : "2017-01-10 05:22:21",
		"weizhi" : "飞行区",
		"baojinren" : "李四",
		"baojinrennumber" : "18895731808",
		"baojinrenleibie" : "机场值班人员",
		"baojinfangshi" : "电话",
		"chulizhuangtai" : "2",
		"caozuo" : "事件确认",
		"view details" : "查看详情"
	}, {
		"xuhao" : 3,
		"mingchen" : "摄像头不能扭转",
		"leibie" : "消防安全类",
		"jibie" : "一级",
		"shijian" : "2017-01-10 05:22:21",
		"weizhi" : "控制区",
		"baojinren" : "司继娟",
		"baojinrennumber" : "18895731518",
		"baojinrenleibie" : "机场值班人员",
		"baojinfangshi" : "电话",
		"caijifangshi" : "人工上报",
		"chulizhuangtai" : "3",
		"caozuo" : "视频联动确认",
		"view details" : "查看详情"
	} ];
<%--自动采集数据 --%>
	var autoDatas = [ {
		"xuhao" : 1,
		"sbianhao" : "ITC-001-C101-D",
		"smingcheng" : "警报器01",
		"quyu" : "T2航站楼四楼",
		"jibie" : "二级",
		"shijian" : "2017-07-14 18:03:04",
		"fuzeren" : "李四",
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
		"fuzeren" : "张三",
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
		"fuzeren" : "王五",
		"zhuangtai" : "4",
		"caozuo" : "4",
		"view details" : "查看详情"
	} ];
<%--人工上报选项 --%>
	var artificialColumns = [
			{
				id : 'xuhao',
				title : '序号',
				type : 'number',
				columnClass : 'text-center'
			},
			{
				id : 'mingchen',
				title : '事件名称',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'leibie',
				title : '事件类别',
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
				title : '时间',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'weizhi',
				title : '位置',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'baojinren',
				title : '报警人',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'baojinrennumber',
				title : '报警人联系方式',
				type : 'string',
				columnClass : 'text-center'
			},
			{
				id : 'chulizhuangtai',
				title : '处理状态',
				type : 'string',
				columnClass : 'text-center',
				resolution : function(value, record, column, grid, dataNo,
						columnNo) {
					var content = '';
				 	if(value==1){
						content += '<a href="javascript:void(0)" onclick="artDoState(1)">已确认</a>';
					}
				 	else if(value==2){
				 		content += '<a href="javascript:void(0)" onclick="artDoState(2)">处理中</a>';
				 	}
				 	else if(value==3){
				 		content += '<a href="javascript:void(0)" onclick="artDoState(3)">已处理</a>';
				 	}
					 return content;
				}
			},
			{
				id : 'operation',
				title : '操作',
				type : 'string',
				columnClass : 'text-center',
				resolution : function(value, record, column, grid, dataNo,
						columnNo) {
					var content = '';
					content += '<button class="sbtn sbtn-blue" onclick="artificialDetails();"> 查看详情</button>';
					return content;
				}
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
				id : 'fuzeren',
				title : '负责人',
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
				 	else if(value==3){
				 		content += '<a href="javascript:void(0)" onclick="doState(3)">处理中</a>';
				 	}
				 	else if(value==4){
					    content += '<a href="javascript:void(0)" onclick="doState(4)">已处理</a>';
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
					if(value==1){
						content += '<button class="sbtn sbtn-blue" onclick="handleBtn();" >视频联动确认</button>&nbsp;&nbsp;';
						content += '<button class="sbtn sbtn-blue" onclick="autoDetails();"> 查看详情</button>';
					}else{
						content += '<button class="sbtn sbtn-blue" onclick="autoDetails();"> 查看详情</button>';
					}
					return content;
				}
			} ];

	var artificialOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		datas : artificialDatas,
		columns : artificialColumns,
		gridContainer : 'artificialTable',
		toolbarContainer : 'artificialPage',
		tools : '',
		pageSize : 10,
		pageSizeLimit : [ 10, 20, 50 ]
	};

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

	var artificial = $.fn.dlshouwen.grid.init(artificialOption);
	var auto = $.fn.dlshouwen.grid.init(autoOption);
	$(function() {
		artificial.load();
		auto.load();
		$("#autoArea").hide();
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
	
	function handleBtn() {
		//$('#eventConfirmation').modal('show');
		window.location.href="videoLink.jsp";
	}
	
	function artificialDetails() {
		window.location.href = "artificialDetails.jsp";
	}
	function autoDetails() {
		window.location.href = "autoDetails.jsp";
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
	//人工上报状态处理
	function artDoState(num){
		if(num=="1"){
			$('#artificialTreatmentState1').modal('show');
		}
		else if(num=="2"){
			$('#artificialTreatmentState2').modal('show');
		}
		else{
			$('#artificialTreatmentState3').modal('show');
		}
	}
	
	
</script>
</html>