<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp"%>
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

.col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3,
	.col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9,
	.col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3,
	.col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9,
	.col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3,
	.col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9,
	.col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3,
	.col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
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

	<div class="sodb-page-home" style="margin-bottom: 20px">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">设备信息档案管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">设备档案详情</a></li>
		</ul>
	</div>
	<div class="col-md-3">
		<div class="portlet blue-hoki box">
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-cogs"></i>全景视频监控区域列表
				</div>

			</div>
			<div class="portlet-body">
				<div id="tree_2" class="tree-demo" style="height: 460px"></div>
			</div>
		</div>
	</div>

	<div class="col-md-9">
		<div class="tabbable" id="tabs-293139" style="position: relative;">
			<ul class="nav nav-tabs" style="margin-left: 20px;">
				<li class="active"><a href="#panel-331421" data-toggle="tab">全景视频监控</a></li>
				<li><a href="#panel-331422" data-toggle="tab">阈值设置</a></li>
				<li><a href="#panel-331423" data-toggle="tab">分析结果</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="panel-331421">
					<div class="col-md-12" style="margin: 0">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption" id="title">
									<i class="fa fa-th-list"></i>飞行区实时入侵检测
								</div>
							</div>


							<div class="row" style="margin: 10px;">
								<div class="col-md-6 video-win" style="margin-bottom: 10px">
									<div
										style="width: 500px; height: 255px; background-color: gray; border: 4px lightgray solid;border-radius:5px">
										<img src="/sodb/img/panoramaVideo/line1.jpg" height="245px"
											width="490px">
									</div>
								</div>
								<div class="col-md-6 video-win" style="margin-bottom: 10px">
									<div
										style="width: 500px; height: 255px; background-color: gray; border: 4px lightgray solid;border-radius:5px">
										<img src="/sodb/img/panoramaVideo/line2.jpg" height="245px"
											width="490px">
									</div>
								</div>
								<div class="col-md-6 video-win">
									<div
										style="width: 500px; height: 255px; background-color: gray; border: 4px lightgray solid;border-radius:5px">
										<img src="/sodb/img/panoramaVideo/line3.jpg" height="245px"
											width="490px">
									</div>
								</div>
								<div class="col-md-6 video-win">
									<div
										style="width: 500px; height: 255px; background-color: gray; border: 4px lightgray solid;border-radius:5px">
										<img src="/sodb/img/panoramaVideo/line4.jpg" height="245px"
											width="490px">
									</div>
								</div>


							</div>

						</div>
					</div>

				</div>
				<div class="tab-pane" id="panel-331422">
					<div class="portlet-body form" style="margin-top: 20px">
						<form id="form1" class="form-horizontal" role="form" action="#"
							enctype="multipart/form-data" method="post">
							<div class="form-body">
								<div class="form-group">
									<label class="col-md-3 control-label">最大长度阈值<span
										class="required">* </span></label>
									<div class="col-md-3">
										<input type="text" class="form-control" placeholder="设备名称"
											value="100">
									</div>
									<label class="col-md-2 control-label">最高密度阈值<span
										class="required">* </span></label>
									<div class="col-md-3">
										<input type="text" class="form-control" placeholder="设备编号"
											value="100">
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-3 control-label">长度预警阈值<span
										class="required">* </span></label>
									<div class="col-md-3">
										<input type="text" class="form-control"
											placeholder="设置长度预警阈值<"
											value="80">
									</div>
									<label class="col-md-2 control-label">密度预警阈值<span
										class="required">* </span></label>
									<div class="col-md-3">
										<input type="text" class="form-control" placeholder="设置密度预警阈值"
											value="80">
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-3 control-label">远近比例<span
										class="required">* </span></label>
									<div class="col-md-3">
										<input type="text" class="form-control" placeholder="规格型号"
											value="1.00">
									</div>
									<label class="col-md-2 control-label">缩放比例<span
										class="required">* </span></label>
									<div class="col-md-3">
										<input type="text" class="form-control" placeholder="生产厂商"
											value="0.9">
									</div>
								</div>


							</div>
							<div class="form-actions">
								<div class="row">
									<div class="col-md-offset-5 col-md-10" style="margin-top: 30px">
										<button type="submit" class="sbtn sbtn-blue sbtn30">
											保存</button>
										<button type="button" class="sbtn sbtn-blue  sbtn30"
											onclick="update()" style="margin-left: 15px">编辑</button>
										<button type="button"
											onclick="javascript:location.href='deviceInfo.jsp'"
											class="sbtn sbtn-default sbtn30" style="margin-left: 15px">
											返回</button>
									</div>
								</div>
							</div>
						</form>
					</div>

				</div>
				<div class="tab-pane" id="panel-331423">
					<div id="policehold_211" class="dlshouwen-grid-container"
						style="margin-top: 5px;"></div>
					<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
				</div>
			</div>
		</div>

	</div>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">分析结果上报</h4>
				</div>
				<div class="modal-body">
					<div class="row clearfix" style="padding: 50px">
						<form class="form-horizontal" role="form">

							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">所在区域</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputarea3" readonly="readonly" value="安检区A001口"/>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">决策建议</label>
								<div class="col-sm-10">
									<textarea rows="6" cols="" class="form-control"></textarea>
								</div>
							</div>
						
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="sbtn sbtn-default"
						data-dismiss="modal">关闭</button>
					<button type="button" class="sbtn sbtn-blue">上报</button>


				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							var datas = [ {
								"resId" : "1",
								"resArea" : "值机岛A区",
								"resTime" : "2017/7/31 11:00:23",
								"length" : "32",
								"status" : "队伍过长",
								"tips" : "无"
							}, {
								"resId" : "2",
								"resArea" : "值机岛A区",
								"resTime" : "2017/7/31 11:00:23",
								"length" : "32",
								"status" : "队伍过长",
								"tips" : "无"
							}, {
								"resId" : "3",
								"resArea" : "值机岛A区",
								"resTime" : "2017/7/31 11:00:23",
								"length" : "32",
								"status" : "队伍过长",
								"tips" : "无"
							},

							{
								"resId" : "4",
								"resArea" : "值机岛A区",
								"resTime" : "2017/7/31 11:00:23",
								"length" : "32",
								"status" : "队伍过长",
								"tips" : "无"
							}

							];

							var tree = $('#tree_2')
									.jstree(
											{
												"core" : {
													"themes" : {
														"responsive" : false
													},
													"check_callback" : true,
													'data' : [ {
														'id' : '0',
														'text' : '航站楼排队监控列表',
														//'url' : ,
														'dataType' : 'JSON',
														'data' : function(node) {
															return {
																'id' : node.id
															};
														},
														'state' : {
															'opened' : true,
															'selected' : false
														},

														'children' : [

																{
																	'id' : '1',
																	'text' : '安检区',
																	//'url' : ,
																	'dataType' : 'JSON',
																	'data' : function(
																			node) {
																		return {
																			'id' : node.id
																		};
																	},
																	'state' : {
																		'opened' : true,
																		'selected' : false
																	},

																	'children' : null
																},

																{
																	'id' : '2',
																	'text' : '值机区',
																	//'url' : ,
																	'dataType' : 'JSON',
																	'data' : function(
																			node) {
																		return {
																			'id' : node.id
																		};
																	},
																	'state' : {
																		'opened' : true,
																		'selected' : false
																	},

																	'children' : null
																} ]
													} ]
												},
												"types" : {
													"default" : {
														"icon" : "fa fa-folder icon-state-warning icon-lg"
													},
													"file" : {
														"icon" : "fa fa-file icon-state-warning icon-lg"
													}
												},
												"plugins" : [ "types" ]
											});
							var ref = $('#tree_2').jstree(true);

							// 树加载完毕后设置节点状态
							$('#tree_2').on('ready.jstree', function(e, data) {
								var openNodeId = "${param.node}";
								if (openNodeId == "") {
									openNodeId = "0";
								}
								var sel = ref.get_node(openNodeId);
								ref.select_node(sel);
								ref.open_node(sel);
							});

							var gridColumns_2_1_1 = [

									{
										id : 'resId',
										title : '预警编号',
										type : 'string',
										columnClass : 'text-center'
									},
									{
										id : 'resArea',
										title : '所在区域',
										type : 'string',
										columnClass : 'text-center'
									},
									{
										id : 'resTime',
										title : '预警时间',
										type : 'string',
										columnClass : 'text-center'
									},
									{
										id : 'length',
										title : '队伍长度',
										type : 'string',
										columnClass : 'text-center'
									},
									{
										id : 'status',
										title : '预警原因',
										type : 'string',
										columnClass : 'text-center'
									},
									{
										id : 'tips',
										title : '备注',
										type : 'string',
										columnClass : 'text-center'
									},
									{
										id : 'operation',
										title : '操作',
										type : 'string',
										columnClass : 'text-center',
										resolution : function(value, record,
												column, grid, dataNo, columnNo) {
											var content = '';
											content += '<button class="sbtn sbtn-blue" data-toggle=\"modal\" data-target=\"#myModal\">上报结果</button>';
											return content;
										}
									} ];
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
								pageSizeLimit : [ 10, 20, 50 ]
							};

							var grid_2_1_1 = $.fn.dlshouwen.grid
									.init(gridOption_2_1_1);
							$(function() {
								grid_2_1_1.load();
							});

						});
		function fn() {
			confirm("是否删除？");
		}
	</script>
</body>
</html>