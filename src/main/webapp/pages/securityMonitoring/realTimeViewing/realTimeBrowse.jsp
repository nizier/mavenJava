<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header_jstree.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>${title }</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">

<!-- 左侧下边的css -->
<link href="<%=path%>/css/custom.css" rel="stylesheet" type="text/css" />
<style>
body {
	background: #FFF;
}

ul, li {
	padding: 0;
	margin: 0;
	list-style: none;
}

.select {
	float: right;
	display: inline-block;
	font-size: 14px;
	line-height: 28px;
	padding: 8px 0px 4px;
	color: #FFF;
}

.caption ul {
	padding-left: 30px;
}

.caption ul li {
	display: inline-block;
	border-right: 1px solid #ADCEF8;
	padding-right: 6px;
	font-size: 14px;
}

.caption ul li:last-child {
	border-right: 0;
}

.caption ul li img {
	width: 20px !important;
	margin-right: 3px;
}

.tabSelect {
	border: 1px solid #fff;
	width: 50px;
	float: left;
	margin: 0 4px;
	font-size: 14px;
}

.setul {
	height: 45x;
}

.setul li a {
	font-size: 12px;
}

.monitor_img{
   padding:2px;
   border:2px solid black;
}
</style>
</head>

<body>
	<div class=" page-container ">
		<div class="page-content-wrapper">
			<div class="sodb-page-home" style="padding-left: 34px;">
				<ul class=" sodb-page-ul">
					<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
						class="fa fa-angle-right"></i></li>
					<li><a href="#">机场安全视频场景监控</a></li>
				</ul>
			</div>
			<div style="clear:both;"></div>
			<div class="row">
				<div class="col-md-3" style="margin-top: 10px;">
					<div class="portlet blue-hoki box" style="height: 725px;">
						<div class="portlet-title">
							<div class="caption" style="padding: 12px 0px;">
								<i class="fa fa-cogs"></i>视频资源
							</div>
						</div>
						<div class="portlet-body">
							<div class="tree-demo jstree jstree-1 jstree-default" id="tree_1"
								role="tree"
								aria-activedescendant="112bee64-3a6d-4a33-bd17-7e420c149004">
								<ul class="jstree-container-ul jstree-children">
									<li role="treeitem" aria-expanded="true" id="0"
										class="jstree-node  jstree-open jstree-last"
										aria-selected="true"><i
										class="jstree-icon jstree-clicked"></i> <a
										class="jstree-anchor jstree-clicked" href="#"><i
											class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>青岛机场视频资源树</a>
										<ul role="group" class="jstree-children">
											<li role="treeitem" aria-expanded="true"
												id="kc07106f-05ee-46cb-afca-7242a47611f6"
												class="jstree-node  jstree-open" aria-selected="false">
												<i class="jstree-icon jstree-ocl"></i> <a
												class="jstree-anchor" href="#"><i
													class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>航站区</a>
												<ul role="group" class="jstree-children">
													<li aria-selected="false" class="jstree-node  jstree-close"
														id="15" aria-expanded="true" codevalue="" special="0"
														level="2" role="treeitem"><i
														class="jstree-icon jstree-ocl"></i> <a href="#"
														class="jstree-anchor"> <i
															class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>值机岛
													</a>
														<ul style="" class="jstree-children" role="group">
															<li aria-selected="false"
																class="jstree-node  jstree-leaf" id="1" codevalue=""
																special="0" level="3" role="treeitem"><i
																class="jstree-icon jstree-ocl"></i> <a href="#"
																class="jstree-anchor"> <i
																	class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>1号摄像头

															</a></li>
															<li aria-selected="false"
																class="jstree-node  jstree-leaf" id="2" codevalue=""
																special="0" level="3" role="treeitem"><i
																class="jstree-icon jstree-ocl"></i> <a href="#"
																class="jstree-anchor"> <i
																	class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>2号摄像头
															</a></li>
															<li aria-selected="false"
																class="jstree-node  jstree-leaf" id="3" codevalue=""
																special="0" level="3" role="treeitem"><i
																class="jstree-icon jstree-ocl"></i> <a href="#"
																class="jstree-anchor"> <i
																	class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>3号摄像头
															</a></li>
															<li aria-selected="false"
																class="jstree-node  jstree-leaf" id="4" codevalue=""
																special="0" level="3" role="treeitem"><i
																class="jstree-icon jstree-ocl"></i> <a href="#"
																class="jstree-anchor"> <i
																	class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>4号摄像头
															</a></li>
															<li aria-selected="false"
																class="jstree-node  jstree-leaf" id="5" codevalue=""
																special="0" level="3" role="treeitem"><i
																class="jstree-icon jstree-ocl"></i> <a href="#"
																class="jstree-anchor"> <i
																	class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>5号摄像头
															</a></li>
															<li aria-selected="false"
																class="jstree-node  jstree-leaf" id="6" codevalue=""
																special="0" level="3" role="treeitem"><i
																class="jstree-icon jstree-ocl"></i> <a href="#"
																class="jstree-anchor"> <i
																	class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>6号摄像头
															</a></li>

															<li class="jstree-node jstree-last" id="8"
																aria-expanded="false" codevalue="" special="0" level="3"
																role="treeitem"><i class="jstree-icon jstree-ocl"></i><a
																href="#" class="jstree-anchor"><i
																	class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>7号摄像头</a></li>
														</ul></li>

													<li role="treeitem"
														id="112bee64-3b6d-4a33-bd17-7e420c149005"
														class="jstree-node  jstree-leaf" aria-selected="true">
														<i class="jstree-icon jstree-ocl"></i> <a
														class="jstree-anchor" href="#"><i
															class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>安检口</a>
													</li>
													<li role="treeitem"
														id="b12bee64-3a6d-4a33-bd17-7e420c149006"
														class="jstree-node  jstree-leaf" aria-selected="false">
														<i class="jstree-icon jstree-ocl"></i> <a
														class="jstree-anchor" href="#"><i
															class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>登机口</a>
													</li>

													<li role="treeitem"
														id="112bee64-3a6d-4a33-bd1b-7e420c149009"
														class="jstree-node  jstree-leaf" aria-selected="false">
														<i class="jstree-icon jstree-ocl"></i> <a
														class="jstree-anchor" href="#"><i
															class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>出发大厅</a>
													</li>
													<li role="treeitem"
														id="6a2b7c50-0247-49f7-846b-adb538d54dd1"
														class="jstree-node  jstree-leaf jstree-last"
														aria-selected="false"><i
														class="jstree-icon jstree-ocl"></i> <a
														class="jstree-anchor" href="#"><i
															class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>到达大厅</a>
													</li>
												</ul>
											</li>

											<li role="treeitem" aria-expanded="true"
												id="057600db-cc2c-436d-b634-322e732ef6bd"
												class="jstree-node  jstree-open jstree-last"
												aria-selected="true"><i class="jstree-icon jstree-ocl"></i>
												<a class="jstree-anchor" href="#"><i
													class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>飞行区</a>
												<ul role="group" class="jstree-children">
													<li role="treeitem"
														id="112bee64-3a6d-4a33-bd17-7e420c149004"
														class="jstree-node  jstree-leaf" aria-selected="false">
														<i class="jstree-icon jstree-ocl"></i> <a
														class="jstree-anchor" href="#"><i
															class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>跑道</a>
													</li>
													<li role="treeitem"
														id="47ecd7dc-8487-430c-a8ba-81f2a61348a4"
														class="jstree-node  jstree-leaf jstree-last"
														aria-selected="false"><i
														class="jstree-icon jstree-ocl"></i> <a
														class="jstree-anchor" href="#"><i
															class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom"></i>滑行区</a>
													</li>
												</ul></li>

										</ul></li>
								</ul>
							</div>
						</div>
					</div>

				</div>

				<div class="col-md-9 " style="margin-top: 10px;">
				<%-- <div class="tabbable" id="tabs-104323">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#panel-213204" data-toggle="tab">视频场景监控</a></li>
							<li><a href="#panel-937403" data-toggle="tab"
								onclick="javacript:window.parent.location.href='<%=path%>/pages/securityMonitoring/realTimeViewing/deviceGisLocation.jsp'">地图展示</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="panel-213204"> --%> 
							
							
								<div class="row">
									<div class="col-md-12" style="margin-left: -13px;">
										<div class="portlet box blue-hoki">
											<div class="portlet-title">
												<div class="caption"
													style="margin-left: -35px; padding: 12px 0px;">
													<ul>
														<li><img
															src="<%=path%>/img/realTimeBrowse/capture.png">抓拍</li>
														<li><img
															src="<%=path%>/img/realTimeBrowse/videotape.png">录像</li>
														<%-- <li><img src="<%=path%>/img/realTimeBrowse/sound.png">伴音</li> --%>
														<li><img
															src="<%=path%>/img/realTimeBrowse/enlarge.png">放大</li>
														<li><img
															src="<%=path%>/img/realTimeBrowse/yuntai.png">云台</li>
														<li><img
															src="<%=path%>/img/realTimeBrowse/playback.png">回放</li>
														<li><img
															src="<%=path%>/img/realTimeBrowse/suspend.png">暂停</li>
														<li><img src="<%=path%>/img/realTimeBrowse/relay.png">接力</li>
														<li><img
															src="<%=path%>/img/realTimeBrowse/tagging.png">标注</li>
														<li><img
															src="<%=path%>/img/realTimeBrowse/collection.png">收藏</li>
														<li><img
															src="<%=path%>/img/realTimeBrowse/settings.png">轮巡设置</li>
														<li><img src="<%=path%>/img/realTimeBrowse/close.png">关闭</li>
													</ul>
												</div>
											</div>
											<div class="portlet-body" style="padding: 10px 10px 0px;">
												<table
													class="table table-striped table-bordered table-hover"
													id="sample_2">
													<!-- 四张监控图片 -->
													<img
														style="display: inline-block; width: 50%; height: 300px;"
														src="<%=path%>/img/realTimeBrowse/monitor1.png" class="monitor_img"/>
													<img
														style="display: inline-block; width: 50%; height: 300px;"
														src="<%=path%>/img/realTimeBrowse/monitor2.png" class="monitor_img"/>
													<img
														style="display: inline-block; width: 50%; height: 300px;"
														src="<%=path%>/img/realTimeBrowse/monitor3.png" class="monitor_img"/>
													<img
														style="display: inline-block; width: 50%; height: 300px;"
														src="<%=path%>/img/realTimeBrowse/monitor4.png" class="monitor_img"/>
													<div class="portlet box blue-hoki"
														style="margin: 0px 0px -12px;">
														<div class="portlet-title">
															<div class="caption" style="float: right;">
																<img src="<%=path%>/img/realTimeBrowse/tools_grid.png">

															</div>
														</div>
													</div>
												</table>


											</div>
										</div>
									</div>
								</div>
							
							
				<!-- 			</div>
							<div class="tab-pane" id="panel-937403">
								<p>Howdy, I'm in Section 2.</p>
							</div>
						</div>
				</div> -->
					
					
				</div>
			</div>
		</div>

	</div>
	<script>
		jQuery(document).ready(function() {
			Metronic.init(); // init metronic core components
			Layout.init(); // init current layout

			//渲染jstree
			var tree = $('#tree_1').jstree({

				"types" : {
					"default" : {
						"icon" : "fa fa-folder icon-state-warning icon-lg"
					},
					"file" : {
						"icon" : "fa fa-file icon-state-warning icon-lg"
					}
				},
				"plugins" : [ "types" ]
			// 如果要记住树的点击状态，请使用  "plugins" : [ "state","types" ]
			});

		});
	</script>
</body>

</html>