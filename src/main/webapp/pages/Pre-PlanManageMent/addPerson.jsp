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
<style>
.portlet.box.blue-hoki > .portlet-title {
    background-color: #67809f;
}
</style>
</head>
<body>
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">预案管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">新增预案</a></li>
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
								<i class="fa fa-th-list"></i>新增救援人员
							</div>
						</div>
						<div class="portlet-body form">
							<form id="form1" class="form-horizontal" role="form" action="#"
								enctype="multipart/form-data" method="post">
								<div class="form-body">
									<div class="form-group">
										<label class="col-md-4 control-label">所属救援队伍
											<span class="required">* </span></label>
										<div class="col-md-4">
											<input type="text" class="form-control" value="应急人员管理" readonly="readonly">
										</div>
										
									</div>
								</div>
								<div style="margin-top: 30px">
									<span style="margin-left: 401px;font-size: 20px">添加救援队伍人员明细</span>
								</div>
								<div class="col-md-12" style="background-color:#234377; height:2px;"></div>
								<button type="button" id="addPlanBtn"  onclick="addPlanApp()" class="sbtn sbtn-blue" style="margin-left: 367px;margin-top:35px">
									新增</button>
								<div id= "idd">
								<!-- <div class = "from-group">
									<label class="col-md-2 control-label" >姓名</label>
								</div>	 -->
									<div class = "col-md-2" >
										<input type="text" class="form-control"  >
									</div>
								</div>
								<div class="form-actions">
									<div class="row">
										<div class="col-md-offset-5 col-md-9">
											<button type="submit" class="sbtn sbtn-blue sbtn30">
												保存</button>
											<button style="margin-left: 45px;" type="button"
												 onclick="window.location.href='checkList.jsp'"
												class="sbtn sbtn-default sbtn30">取消</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--start modal-->
			
			<!--end modal-->
		</div>
	</div>
	<script type="text/javascript">
	 $("#addPlanBtn").click(function(){
		var html = '<div class = "col-md-2">';
		html +='<input type="text" class="form-control" ></div>'
		$("#idd").append(html);
	}) 
	
</script>
</body>
</html>