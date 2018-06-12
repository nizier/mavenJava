<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Insert title here</title>
<style>
/* .right-blank { */
/*     padding-right: 10px; */
/* } */
/* .clear { */
/*     padding: 0; */
/*     margin: 0; */
/* } */

.video-win{
}


</style>
</head>
<body>
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">全景视频可视化智能分析</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">飞行区区域入侵检测</a></li>
		</ul>
	</div>
	<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<div class="row">
					<div class="col-md-2">
						<div class="portlet blue-hoki box">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>全景视频监控区域列表
								</div>

							</div>
							<div class="portlet-body">
								<div id="tree_2" class="tree-demo" style="height: 371px"></div>
							</div>
						</div>
					</div>

					<div class="col-md-6" style="margin:0">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption" id="title">
									<i class="fa fa-th-list"></i>飞行区实时入侵检测
								</div>
							</div>
							
							
								<div class="row" style="margin:10px 0;height:381px">
									<div class="col-md-6 video-win" style="margin-bottom:10px">
										<div
											style="width: 340px; height: 185px; background-color: gray; border: 5px lightgray solid;border-radius:5px">
											<img src="/sodb/img/panoramaVideo/airfiled_video1.jpg"
												height="170px" width="330px">
										</div>
									</div>
									<div class="col-md-6 video-win" style="margin-bottom:10px">
										<div
											style="width: 340px; height: 185px; background-color: gray; border: 5px lightgray solid;border-radius:5px">
											<img src="/sodb/img/panoramaVideo/airfiled_video2.jpg"
												height="170px" width="330px">
										</div>
									</div>
									<div class="col-md-6 video-win">
										<div
											style="width: 340px; height: 185px; background-color: gray; border: 5px lightgray solid;border-radius:5px">
											<img src="/sodb/img/panoramaVideo/airfiled_video3.jpg"
												height="170px" width="330px">
										</div>
									</div>
									<div class="col-md-6 video-win">
										<div
											style="width: 340px; height: 185px; background-color: gray; border: 5px lightgray solid;border-radius:5px">
											<img src="/sodb/img/panoramaVideo/airfiled_video4.jpg"
												height="170px" width="330px">
										</div>
									</div>
								</div>
							
						</div>
					</div>
					<div class="col-md-4" id="content_1">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption" id="title">
									<i class="fa fa-th-list"></i>入侵报警信息
								</div>
							</div>
							<div class="portlet-body form">
								<form class="form-inline" style="margin: 10px 0px 10px 10px;"
									name="" method="post">
									<div class="form-group">
										<span>关键词：</span> <input type="text" class="form-control"
											id="name" placeholder="输入关键词">
									</div>
									<div class="form-group" style="margin-left: 30px;">
										<button type="submit" class="sbtn sbtn-blue">查询</button>
									</div>
								</form>
							</div>

							<div id="policehold_211" class="dlshouwen-grid-container"
								style="margin-top: 5px;"></div>
							<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					查看录像
				</h4>
			</div>
			<div class="modal-body">
				<img src="/sodb/img/panoramaVideo/airfiled_video1.jpg" width="570px" height="400px"/>
			</div>
			<div class="modal-footer">
				<button type="button" class="sbtn sbtn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="sbtn sbtn-blue">
					播放/暂停
				</button>
				
				<button type="button" class="sbtn sbtn-blue">
					截图
				</button>
				
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

<div class="modal fade" id="detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					详细信息
				</h4>
			</div>
			<div class="modal-body">
				
			</div>
			<div class="modal-footer">
				<button type="button" class="sbtn sbtn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="sbtn sbtn-blue">
					播放/暂停
				</button>
				
				<button type="button" class="sbtn sbtn-blue">
					截图
				</button>
				
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>


	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							var datas = [ {
								"number" : "1",
								"alarmId" : "IVD001",
								"invadeArea" : "客机坪",
								"alarmTime" : "2017/7/31 11:00:23",
								"alarmStatus" : "待处理"
							}, {
								"number" : "2",
								"alarmId" : "IVD002",
								"invadeArea" : "滑行道",
								"alarmTime" : "2017/7/31 10:04:43",
								"alarmStatus" : "已清除"
							}, {
								"number" : "3",
								"alarmId" : "IVD003",
								"invadeArea" : "跑道1 ",
								"alarmTime" : "2017/7/31 7:26:22",
								"alarmStatus" : "已清除"
							},

							{
								"number" : "4",
								"alarmId" : "IVD004",
								"invadeArea" : "跑道2 ",
								"alarmTime" : "2017/7/31 4:10:50",
								"alarmStatus" : "已清除"
							}
							,

							{
								"number" : "5",
								"alarmId" : "IVD004",
								"invadeArea" : "跑道3 ",
								"alarmTime" : "2017/7/31 4:10:50",
								"alarmStatus" : "已清除"
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
														'text' : '全景视频监控区域列表',
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
																	'text' : '跑道',
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
																	'text' : '升降带',
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
																	'id' : '3',
																	'text' : '跑道端安全区',
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
																	}
																},
																{
																	'id' : '4',
																	'text' : '滑行道',
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
																	'id' : '5',
																	'text' : '机坪',
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
																}
																]
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
										id : 'alarmId',
										title : '编号',
										type : 'string',
										columnClass : 'text-center'
									},
									{
										id : 'invadeArea',
										title : '区域',
										type : 'string',
										columnClass : 'text-center'
									},
									{
										id : 'alarmTime',
										title : '告警时间',
										type : 'string',
										columnClass : 'text-center'
									},
									{
										id : 'alarmStatus',
										title : '状态',
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
											content += '<button class="sbtn sbtn-blue" data-toggle=\"modal\" data-target=\"#myModal\">查看录像</button>';
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