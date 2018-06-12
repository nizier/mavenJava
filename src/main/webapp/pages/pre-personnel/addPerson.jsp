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
<!-- 
				页面说明
				
		该页面是最开始阶段实际的添加救援人员信息表页面，保存该页面，可能用于后续的非机场工作人员添加。
		
		180227-姚小贤


 -->
</head>
<body>
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">应急救援管理系统</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">人员信息管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">新增人员信息</a></li>
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
										<div style="margin-top: 30px">
									<span style="margin-left: 39%;margin-top:35px;font-size: 27px">添加救援队伍人员明细</span>
								</div>
									</div>
								</div>
								<div class="col-md-12" style="background-color:#234377; height:2px;"></div>
								<button type="button" id="addPlanBtn"  onclick="addPlanApp()" class="sbtn sbtn-blue" style="margin-left: 200px;margin-top:35px">
									新增</button>
								<div style="margin-top: 30px">
									<span style="margin-left: 90px;font-size: 20px">人员编号</span>
									<span style="margin-left: 160px;font-size: 20px">姓&nbsp;&nbsp;名</span>
									<span style="margin-left: 160px;font-size: 20px">电&nbsp;&nbsp;话</span>
									<span style="margin-left: 160px;font-size: 20px">入职时间</span>
									<span style="margin-left: 160px;font-size: 20px">部门</span>
								</div>
								
								
								
								<div id= "idd" class="form-body">
								<!-- <div class = "from-group">
									<label class="col-md-2 control-label" >姓名</label>
								</div>	 -->
									<div  class = "col-md-12" style="margin-top: 30px">
										<div class = "col-md-2" >
											<input type="text" class="form-control"  placeholder="人员编号" >
										</div>
										<div class = "col-md-2" >
											<input type="text" class="form-control"  placeholder="姓名">
										</div>
										<div class = "col-md-2" >
											<input type="text" class="form-control"  placeholder="电话">
										</div>
										<div class = "col-md-2" >
											<input type="text" class="form-control"  placeholder="入职时间">
										</div>
										<div class = "col-md-2" >
											<select id="item" name="item" class="form-control" >
												<option value="">部门</option>
												<option value="0">部门</option>
												<option value="1">部门</option>
											</select>
										</div>
										<div class = "col-md-2" >
											<button type="button" id="addPlanBtn" class="sbtn sbtn-blue ">删除</button>
										</div>
										<!-- <div class = "col-md-2" >
											<input type="text" class="form-control"  >
										</div>
										<div class = "col-md-2" >
											<input type="text" class="form-control"  >
										</div>
										<div class = "col-md-1" >
										<button type="button" id="addPlanBtn" class="sbtn sbtn-blue">删除</button>
										</div>   -->
									</div>
								
								
								
									<!-- <div class = "col-md-2" >
										<input type="text" class="form-control"  >
									</div>
									<div class = "col-md-2" >
										<input type="text" class="form-control"  >
									</div>
									<div class = "col-md-2" >
										<input type="text" class="form-control"  >
									</div>
									<div class = "col-md-2" >
										<input type="text" class="form-control"  >
									</div>
									<div class = "col-md-2" >
										<input type="text" class="form-control"  >
									</div>
									<div class = "col-md-1" >
										<button type="button" id="addPlanBtn" class="sbtn sbtn-blue">删除</button>
									</div>  -->
								</div>
								<div class="form-actions">
									<div class="row">
										<div class="col-md-offset-5 col-md-9">
											<button type="submit" class="sbtn sbtn-blue sbtn30" style="margin-top: 20px">
												保存</button>
											<button style="margin-left: 45px;margin-top: 20px" type="button"
												 onclick="window.location.href='personnel.jsp'"
												class="sbtn sbtn-default sbtn30" >取消</button>
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
		/* var html = '<div  class = "from-group">';
		var html0 = '<div class = "col-md-2">';
		var html1 = '<div class = "col-md-2">';
		var html2 = '<div class = "col-md-2">';
		var html3 = '<div class = "col-md-2">';
		var html4 = '<div class = "col-md-2">';
		var html5 = '<div class = "col-md-1" >';
		/* var html5 = '<div class = "col-md-1">';  */
		
		/* html0 +='<input type="text" class="form-control" ></div>',
		html1 +='<input type="text" class="form-control" ></div>',
		html2 +='<input type="text" class="form-control" ></div>',
		html3 +='<input type="text" class="form-control" ></div>',
		html4 +='<input type="text" class="form-control" ></div>',
		html5 +='<button type="button" id="addPlanBtn" class="sbtn sbtn-blue">删除</button></div></div>', 
			 */ 
		var html = '<div  class = "col-md-12" >';
		
		html+= '<div class = "col-md-2" style="margin-top: 30px"><input type="text" class="form-control " placeholder="人员编号" ></div>';
		html+= '<div class = "col-md-2" style="margin-top: 30px"><input type="text" class="form-control"  placeholder="姓名"></div>';
		html+= '<div class = "col-md-2" style="margin-top: 30px"><input type="text" class="form-control"  placeholder="电话"></div>';
		html+= '<div class = "col-md-2" style="margin-top: 30px"><input type="text" class="form-control"  placeholder="入职时间"></div>';
		html+= '<div class = "col-md-2" style="margin-top: 30px"><select id="item" name="item" class="form-control" ><option value="">部门</option><option value="0">部门</option><option value="1">部门</option></select></div>';
		html+= '<div class = "col-md-2" style="margin-top: 30px"><button type="button" id="addPlanBtn" class="sbtn sbtn-blue ">删除</button></div></div>';
		
	
		$("#idd").append(html);

	}) 
	
</script>
</body>
</html>