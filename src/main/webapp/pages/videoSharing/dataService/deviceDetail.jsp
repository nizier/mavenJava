<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>${title }</title>
<link rel="shortcut icon" href="favicon.ico" />
<style>
.form-horizontal .form-group {
    margin-left: -45px;
    margin-right: -15px;
}
.col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
    min-height: 1px;
    padding-left: 15px;
    padding-right: 10px;
    position: relative;
}
.form-horizontal .control-label {
    margin-bottom: 0;
    padding-top: 5px;
    text-align: right;
}
.col-md-3 {
    width: 24%;
}
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
.divcss5_right1 {
	float: right;
	width: 120px;
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
</head>
<body>
	<script type="text/javascript">
		var datas3 = [ {
			"serialId" : 1,
			"failureName" : "图像不清晰",
			"failureDesc" : "E003",
			"repairDepartment" : "安保部",
			"repairContact" : "李飞",
			"repairTime" : "2017-06-09 9:49",
			"repairResult" : "已修复",
			"repairCost" : "0",
			"tips" : "无"
		}, {
			"serialId" : 2,
			"failureName" : "图像不清晰",
			"failureDesc" : "E003",
			"repairDepartment" : "安保部",
			"repairContact" : "李飞",
			"repairTime" : "2017-06-09 9:49",
			"repairResult" : "已修复",
			"repairCost" : "0",
			"tips" : "无"
		}, {
			"serialId" : 3,
			"failureName" : "图像不清晰",
			"failureDesc" : "E003",
			"repairDepartment" : "安保部",
			"repairContact" : "李飞",
			"repairTime" : "2017-06-09 9:49",
			"repairResult" : "已修复",
			"repairCost" : "0",
			"tips" : "无"
		}, {
			"serialId" : 4,
			"failureName" : "图像不清晰",
			"failureDesc" : "E003",
			"repairDepartment" : "安保部",
			"repairContact" : "李飞",
			"repairTime" : "2017-06-09 9:49",
			"repairResult" : "已修复",
			"repairCost" : "0",
			"tips" : "无"
		} ];
		var gridColumns3 = [ {
			id : 'serialId',
			title : '序号',
			type : 'number',
			columnClass : 'text-center'
		}, {
			id : 'failureName',
			title : '故障编号',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'failureDesc',
			title : '故障现象',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'repairDepartment',
			title : '报修部门',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'repairContact',
			title : '报修联系人',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'repairTime',
			title : '报修时间',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'repairResult',
			title : '维修结果',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'repairCost',
			title : '维修费用',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'tips',
			title : '备注',
			type : 'string',
			columnClass : 'text-center'
		} ];
		var gridOption3 = {
			lang : 'zh-cn',
			ajaxLoad : false,
			exportFileName : '用户列表',
			datas : datas3,
			columns : gridColumns3,
			gridContainer : 'policehold_213',
			toolbarContainer : 'police_213',
			tools : '',
			pageSize : 10,
			pageSizeLimit : [ 10, 20, 50 ]
		};
		var grid3 = $.fn.dlshouwen.grid.init(gridOption3);
		$(function() {
			grid3.load();
		});
		var datas1 = [ {
			"serialId" : 1,
			"failureName" : "C873摄像头",
			"failureDesc" : "设备可正常工作",
			"installArea" : "航站楼一楼候机大厅",
			"installLocation" : "116.406281,39.911172",
			"repairDepartment" : "航飞装配公司",
			"repairContact" : "通过",
		}, {
			"serialId" : 2,
			"failureName" : "C873摄像头",
			"failureDesc" : "设备可正常工作",
			"installArea" : "航站楼一楼候机大厅",
			"installLocation" : "116.406281,39.911172",
			"repairDepartment" : "航飞装配公司",
			"repairContact" : "通过",
		}, {
			"serialId" : 3,
			"failureName" : "C873摄像头",
			"failureDesc" : "设备可正常工作",
			"installArea" : "航站楼一楼候机大厅",
			"installLocation" : "116.406281,39.911172",
			"repairDepartment" : "航飞装配公司",
			"repairContact" : "通过",
		} ];
		var gridColumns1 = [ {
			id : 'serialId',
			title : '序号',
			type : 'number',
			columnClass : 'text-center'
		}, {
			id : 'failureName',
			title : '设备名称',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'failureDesc',
			title : '安装情况',
			type : 'string',
			columnClass : 'text-center'
		},
		{
			id : 'installArea',
			title : '安装区域',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'installLocation',
			title : '安装位置',
			type : 'string',
			columnClass : 'text-center'
		},
		{
			id : 'repairDepartment',
			title : '安装单位',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'repairContact',
			title : '审查意见',
			type : 'string',
			columnClass : 'text-center'
		} ];
		var gridOption1 = {
			lang : 'zh-cn',
			ajaxLoad : false,
			exportFileName : '用户列表',
			datas : datas1,
			columns : gridColumns1,
			gridContainer : 'policehold_211',
			toolbarContainer : 'police_211',
			tools : '',
			pageSize : 10,
			pageSizeLimit : [ 10, 20, 50 ]
		};
		var grid1 = $.fn.dlshouwen.grid.init(gridOption1);
		$(function() {
			grid1.load();
		});
		var datas2 = [ {
			"serialId" : 1,
			"startupTime" : "2017/6/12 05:23",
			"shutdownTime" : "2017/6/21 11:23",
			"shutdownReason" : "故障维修",
			"operator" : "李飞",
			"tips" : "无",
		}, {
			"serialId" : 2,
			"startupTime" : "2017/7/12 05:23",
			"shutdownTime" : "2017/7/15 11:23",
			"shutdownReason" : "故障维修",
			"operator" : "李飞",
			"tips" : "无",
		}, {
			"serialId" : 3,
			"startupTime" : "2017/7/16 05:23",
			"shutdownTime" : "2017/7/21 11:23",
			"shutdownReason" : "故障维修",
			"operator" : "李飞",
			"tips" : "无",
		} ];
		var gridColumns2 = [ {
			id : 'serialId',
			title : '序号',
			type : 'number',
			columnClass : 'text-center'
		}, {
			id : 'startupTime',
			title : '开机时间',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'shutdownTime',
			title : '关机时间',
			type : 'string',
			columnClass : 'text-center'
		},
		{
			id : 'shutdownReason',
			title : '关闭原因',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'operator',
			title : '操作人',
			type : 'string',
			columnClass : 'text-center'
		}, {
			id : 'tips',
			title : '备注',
			type : 'string',
			columnClass : 'text-center'
		} ];
		var gridOption2 = {
			lang : 'zh-cn',
			ajaxLoad : false,
			exportFileName : '用户列表',
			datas : datas2,
			columns : gridColumns2,
			gridContainer : 'policehold_212',
			toolbarContainer : 'police_212',
			tools : '',
			pageSize : 10,
			pageSizeLimit : [ 10, 20, 50 ]
		};
		var grid2 = $.fn.dlshouwen.grid.init(gridOption2);
		$(function() {
			grid2.load();
		});
		function updateBtn() {
			window.location.href = "deviceInfo.jsp";
		}
		function showDetails() {
			window.location.href = "deviceDetail.jsp";
		}
	</script>			
<div class="sodb-page-home" style="margin-bottom:20px">
	<ul class="sodb-page-ul">
		<li>
			<i class="fa fa-home"></i> 
			<a href="#">青岛机场安全管理</a> 
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">设备信息档案管理</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li><a href="#">设备档案详情</a></li>
	</ul> 
</div>
<div class="tabbable" id="tabs-293139" style="position: relative;">
	<ul class="nav nav-tabs" style="margin-left: 20px;">
		<li class="active"><a href="#panel-331421" data-toggle="tab">基础信息</a></li>
		<li><a href="#panel-331422" data-toggle="tab">安装记录</a></li>
		<li><a href="#panel-331423" data-toggle="tab">运行记录</a></li>
		<li><a href="#panel-331424" data-toggle="tab">维修记录</a></li>
	</ul>
	<div class="tab-content">
		<div class="tab-pane active" id="panel-331421">
			<div class="portlet-body form" style="margin-top:20px">
				<form id="form1" class="form-horizontal" role="form" action="#"
					enctype="multipart/form-data" method="post">
					<div class="form-body">
						<div class="form-group">
							<label class="col-md-3 control-label">设备名称<span
								class="required">* </span></label>
							<div class="col-md-3">
								<input type="text" class="form-control" placeholder="设备名称"
									value="C873高清摄像头" readonly="readonly">
							</div>
							<label class="col-md-2 control-label">IP地址<span
								class="required">* </span></label>
							<div class="col-md-3">
								<input type="text" class="form-control" placeholder="设备编号"
									value="233.233.233.233" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">规格型号<span
								class="required">* </span></label>
							<div class="col-md-3">
								<input type="text" class="form-control" placeholder="规格型号"
									value="C873" readonly="readonly">
							</div>
							<label class="col-md-2 control-label">生产厂商<span
								class="required">* </span></label>
							<div class="col-md-3">
								<input type="text" class="form-control" placeholder="生产厂商"
									value="EVIA" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">管理部门<span
								class="required">* </span></label>
							<div class="col-md-3">
								<input type="text" class="form-control" placeholder="管理部门"
									value="平台" readonly="readonly">
							</div>
							<label class="col-md-2 control-label">设备安装区域<span
								class="required">* </span></label>
							<div class="col-md-3">
								<input type="text" class="form-control" placeholder="设备安装地址"
									value="航站区候机大厅" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label">经度<span
								class="required">* </span></label>
							<div class="col-md-3">
								<input type="text" class="form-control" placeholder="经度"
									value="116.406281" readonly="readonly">
							</div>
							<div class="col-md-6"></div>
							<label class="col-md-2 control-label">纬度<span
								class="required">* </span></label>
							<div class="col-md-3">
								<input type="text" class="form-control" placeholder="纬度"
									value="39.911172" readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-actions">
						<div class="row">
							<div class="col-md-offset-5 col-md-10" style="margin-top:30px">
								<button type="submit" class="sbtn sbtn-blue sbtn30">
									保存
								</button>
								<button type="button" class="sbtn sbtn-blue  sbtn30" onclick="update()" style="margin-left:15px">
									编辑
								</button>
								<button type="button"
									onclick="javascript:location.href='deviceInfo.jsp'"
									class="sbtn sbtn-default sbtn30" style="margin-left:15px">
									返回
								</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="tab-pane" id="panel-331422">
			<div class="col-md-11"></div>
			<div style="width: 100%; padding: 0px 53px; position: absolution; right: 5%">
				<button type="button"
					onclick="javascript:window.location.href='#'"
					class="sbtn sbtn-default" style="background:#f3f3f3;margin-top:10px">导出</button>
				<div id="policehold_211" class="dlshouwen-grid-container"style="margin-top: 5px;"></div>
				<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
			</div>
		</div>
		<div class="tab-pane" id="panel-331423">
			<div class="col-md-11"></div>
			<button type="button"
				onclick="javascript:window.location.href='#'"
				class="sbtn sbtn-default" style="background:#f3f3f3;margin-top:10px">导出</button>
			<div style="width: 100%; padding: 0px 53px;">
				<div id="policehold_212" class="dlshouwen-grid-container"
					style="margin-top: 5px;"></div>
				<div id="police_212" class="dlshouwen-grid-toolbar-container"></div>
			</div>
		</div>
		<div class="tab-pane" id="panel-331424">
			<div class="col-md-11"></div>
			<div style="width: 100%; padding: 0px 53px; position: absolution; right: 5%">
				<button id="bn1" type="button"
					onclick="javascript:window.location.href='#'"
					class="sbtn sbtn-default" style="background:#f3f3f3;margin-top:10px">导出</button>
				<div style="width: 100%; padding: 0px 0px;">
					<div id="policehold_213" class="dlshouwen-grid-container"
						style="margin-top: 5px;">
					</div>
					<div id="police_213" class="dlshouwen-grid-toolbar-container">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<script type="text/javascript">
		function getPath(obj, fileQuery, transImg) {
			var imgSrc = '', imgArr = [], strSrc = '';
			if (window.navigator.userAgent.indexOf("MSIE") >= 1) { // IE浏览器判断
				if (obj.select) {
					obj.select();
					var path = document.selection.createRange().text;
					obj.removeAttribute("src");
					imgSrc = fileQuery.value;
					imgArr = imgSrc.split('.');
					strSrc = imgArr[imgArr.length - 1].toLowerCase();
					if (strSrc.localeCompare('jpg') === 0
							|| strSrc.localeCompare('jpeg') === 0
							|| strSrc.localeCompare('gif') === 0
							|| strSrc.localeCompare('png') === 0) {
						obj.setAttribute("src", transImg);
						obj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
								+ path + "', sizingMethod='scale');"; // IE通过滤镜的方式实现图片显示
					} else {
						throw new Error(
								'File type Error! please image file upload..');
					}
				} else {
					imgSrc = fileQuery.value;
					imgArr = imgSrc.split('.');
					strSrc = imgArr[imgArr.length - 1].toLowerCase();
					if (strSrc.localeCompare('jpg') === 0
							|| strSrc.localeCompare('jpeg') === 0
							|| strSrc.localeCompare('gif') === 0
							|| strSrc.localeCompare('png') === 0) {
						obj.src = fileQuery.value;
					} else {
						throw new Error(
								'File type Error! please image file upload..');
					}
				}
			} else {
				var file = fileQuery.files[0];
				var reader = new FileReader();
				reader.onload = function(e) {
					imgSrc = fileQuery.value;
					imgArr = imgSrc.split('.');
					strSrc = imgArr[imgArr.length - 1].toLowerCase();
					if (strSrc.localeCompare('jpg') === 0
							|| strSrc.localeCompare('jpeg') === 0
							|| strSrc.localeCompare('gif') === 0
							|| strSrc.localeCompare('png') === 0) {
						obj.setAttribute("src", e.target.result);
					} else {
						throw new Error(
								'File type Error! please image file upload..');
					}
				}
				reader.readAsDataURL(file);
			}
		}
		function show() {
			//以下即为完整客户端路径
			var file_img = document.getElementById("img"), logo = document
					.getElementById("logo");
			getPath(file_img, logo, file_img);
		}
		function update(){
			$(".form-control").removeAttr("readonly");
		}
	</script>
</body>
</html>