<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>添加设备</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet" href="<%=path %>/css/pilotcockpit.css" />
<link rel="stylesheet" href="<%=path %>/css/pagebar.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/demo.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/dragslot.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/styles.css">
<script type="text/javascript" src="<%=path %>/js/dragslot.js"></script>
<style>
.portlet.box.blue-hoki > .portlet-title {
    background-color: #67809f;
}
</style>
</head>
<body>
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">北京新机场应急救援管理系统</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">预案版本管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">版本查看</a></li>
		</ul>
	</div>
	<div class="page-container" style="padding-left: 0px;">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<div id="content_1">
					<div class="portlet box blue-hoki">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-th-list"></i>预案版本详情查看
							</div>
						</div>
						<div class="portlet-body form">
							<form id="form1" class="form-horizontal" role="form" action="#"
								enctype="multipart/form-data" method="post">
									<div class="form-body" style="margin-left: -11%">
										<div class="form-group">
											<label class="col-md-4 control-label">当前版本号
												<span class="required">* </span></label>
													<div class="col-md-6">
														<input type="text" class="form-control" value="v1.0" disabled="disabled">
													</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label">修改后版本号
												<span class="required">* </span></label>
													<div class="col-md-6">
														<input type="text" class="form-control" value="v1.1" disabled="disabled">
													</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label">所修改的章节
												<span class="required">* </span></label>
													<div class="col-md-6">
														<input type="text" class="form-control" value="1.1" disabled="disabled">
													</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label">修改前内容
												<span class="required">* </span></label>
													<div class="col-md-6">
														<textarea class="form-control"  readonly="readonly" style="height: 270px">机场应急救援管理系统是为机场应急管理中心提供一套集应急演练、培训、流程管理、评估分析等功能的重要支撑系统，可以满足机场应对应急救援事件的需要。本系统能够辨别相关事故，维护事故处理流程预案，便于各部门对应急预案的查询检索；并可通过基于二维/三维地图应急演练电子沙盘系统，进行应急推演的模拟演练，从而进一步提高机场对类似事件的应对能力，优化相关应急流程。 机场应急救援事件分为航空器突发事件、非法干扰事件、机场设施失火事件、突发公共卫生事件等发生或可能发生严重损坏以及可能导致人员伤亡和财产严重损失的事件。
														</textarea>
													</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label">修改后内容
												<span class="required">* </span></label>
													<div class="col-md-6">
														<textarea class="form-control"  readonly="readonly" style="height: 270px">机场应急救援管理系统是为机场应急管理中心提供一套集应急演练、培训、流程管理、评估分析等功能的重要支撑系统，可以满足机场应对应急救援事件的需要。本系统能够辨别相关事故，维护事故处理流程预案，便于各部门对应急预案的查询检索；并可通过基于二维/三维地图应急演练电子沙盘系统，进行应急推演的模拟演练，从而进一步提高机场对类似事件的应对能力，优化相关应急流程。 机场应急救援事件分为航空器突发事件、非法干扰事件、机场设施失火事件、突发公共卫生事件等发生或可能发生严重损坏以及可能导致人员伤亡和财产严重损失的事件。
														</textarea>
													</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label">修改人<span
												class="required">* </span></label>
											<div class="col-md-6">
												<input type="text" class="form-control" value="管理员" readonly="readonly">
											</div>
										</div> 
									</div>							
									<div class="form-actions">
										<div class="row">
											<div class="col-md-offset-5 col-md-9">
												<button style="margin-left: 45px;" type="button"
												 	onclick="window.location.href='planVersion.jsp'"
													class="sbtn sbtn-default sbtn30">确定</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
<script type="text/javascript">

</script>
</body>
</html>