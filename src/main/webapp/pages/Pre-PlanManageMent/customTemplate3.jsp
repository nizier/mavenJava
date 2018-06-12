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
<body style="overflow-x: hidden">
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
								<i class="fa fa-th-list"></i>检查单模板信息管理
							</div>
						</div>
					</div>
					<div class="portlet-body form" id="accordion">
							<form id="form1" class="form-horizontal" role="form" action="#"
								enctype="multipart/form-data" method="post">
									<input type="hidden" id="groupId" value="1">
									<input type="hidden" id="tableId" value="1">
									<div class="col-md-12">
										<div class="form-group " style="margin-left: 13%">
										<label class="col-md-1 control-label">字体</label>
											<div class="col-md-2">
												<select id="fontFamily" class="form-control">
													<option>微软雅黑</option>
													<option>宋体</option>
												</select>
											</div>
											<label class="col-md-1 control-label">字体大小</label>
											<div class="col-md-2">
												<select id="fontSize" class="form-control" onchange="getSel()">
													<option>---请选择---</option>
													<option>四号</option>
													<option>五号</option>
													<option>小二</option>
												</select>
											</div>
											<div class="col-md-4" style="margin-top: -0.3%">
										<!-- 	字体加粗 -->
											<button style="margin-left: 4%;margin-top: 2%; font-weight:bold;margin-bottom: 2%" type="button"
												 onclick="textBold()"
												class="sbtn sbtn-default sbtn30" >B</button>
										<!-- 	字体倾斜 -->	
											<button style="margin-left: 4%;margin-top: 2%; font-style: italic;font-weight:bold;margin-bottom: 2%" type="button"
												 onclick = "textItalic()"
												class="sbtn sbtn-default sbtn30" >I</button>
										<!-- 	下划线 -->	
											<button style="margin-left: 4%;margin-top: 2%;font-weight:bold;margin-bottom: 2%" type="button"
												 onclick = "textXie()"
												class="sbtn sbtn-default sbtn30" ><u>U</u></button>
											</div>
										
										</div>
										<div class="form-group" style="margin-left: 5%;margin-top: 2%">
											<div class="col-md-2" style="margin-left: 9.7%">
												<button style="margin-bottom: 2%" type="button"
												 id = "addTable"
												class="sbtn sbtn-default sbtn30">插入表格</button>
											</div>
											<div class="col-md-2" style="margin-left: -6.3%">
												<button style="margin-bottom: 2%" type="button"
												 id = "addGroup"
												class="sbtn sbtn-default sbtn30">新增一行</button>
											</div>
									
										
										
											<label class="col-md-1 control-label" style="margin-left: -6%">插入勾选框</label>
											<div class="col-md-2" >
												<select id="checkArea" class="form-control" style="width: 120px">
													<option>---请选择---</option>
													<option value="1">当前本文</option>
													<option value="2">添加到表格</option>
												</select>
												
											</div>
											<div class="col-md-1" style="margin-left: -6.3%">
												<button style="margin-bottom: 2%;margin-top: 7%;font-weight: bold;" type="button"
												 id = "addCheckBox"
												>＋</button>
											</div>
											<!-- 插入文本框 -->
											<label class="col-md-1 control-label" style="margin-left: -3.3%" >插入文本框</label>
											<div class="col-md-2" >
												<select id="inputArea" class="form-control" style="width: 120px;">
													<option>---请选择---</option>
													<option value="1">当前本文</option>
													<option value="2">添加到表格</option>
												</select>
											</div>
											<input type="hidden" id="inputId" value="1">
											<div class="col-md-1" style="margin-left: -6.3%">
												<button style="margin-bottom: 2%;margin-top: 7%;font-weight: bold;" type="button"
												 id = "addInput"
												>＋</button>
											</div>
											
											</div>
												<div class="form-group" style="margin-left: 15%;margin-top: 2%">
												<div class="col-md-2" style="margin-left: -0.9%">
														<button style="margin-bottom: 2%" type="button"
													 id = "clearCss"
													class="sbtn sbtn-default sbtn30">清空虚线</button>
												</div>
												<div class="col-md-2" style="margin-left: -5%">
													<button style="margin-bottom: 2%" type="button"
												 id = "deleteGroup"
												class="sbtn sbtn-default sbtn30">取消一行</button>
												</div>
												<div class="col-md-2" style="margin-left: -5%">
													<button style="margin-bottom: 2%" type="button"
												 id = "undo"
												class="sbtn sbtn-default sbtn30">撤销</button>
												</div>
											</div> 
										</div> 
										
								</div>
								   <div class="col-md-12" style="background-color:#234377; height:1px;margin-top: 10px;margin-top: 10px"></div>
								   <div class="col-md-8" id="addG" style="margin-left: 16%" >
								   </div>
							</form>
						</div>
				</div>
			</div>
<!--start modal插入文字-->
<div class="modal fade bs-example-modal-sm" id="interposition" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
			<div class="col-md-9" style="margin-left: 85px;width: 374px;margin-top: 26px">
				<div class="form-group">
					 <span class="col-sm-4 control-label">请输入行数：</span>
		                <div class="col-md-6 input-group ">
		                     <input type="text" class="form-control" style="margin-top: -3%"  id="trNum" placeholder="请输入行数" aria-describedby="sizing-addon2">
		                </div>
				</div>	
				<div class="form-group">
					 <span class="col-sm-4 control-label">请输入列数：</span>
		                <div class="col-md-6 input-group ">
		                     <input type="text"  style="margin-top: -3%" class="form-control" id="tdNum" placeholder="请输入列数" aria-describedby="sizing-addon2">
		                </div>
				</div>					
			</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 40%;margin-top: 165px">
						<button style="margin-left: -70%; margin-top: -40px" type="button" id="okTable" 
							class="sbtn sbtn-blue" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
						<button style="margin-left: 8%; margin-top: -40px" type="button" 
						class="sbtn sbtn-default"  data-dismiss="modal"><i class="fa fa-send-o"></i>取消</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--end modal-->

</div>
<script type="text/javascript" src="<%=path %>/js/Pre-PlanManageMent/customTemplate.js"></script>
<script type="text/javascript">
 
</script>
</body>
</html>