<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>${title }</title>
<style>
	
</style>
</head>
<body>
<div class="sodb-page-home">
	<ul class="sodb-page-ul">
		<li>
			<i class="fa fa-home"></i> 
			<a href="#">北京新机场应急救援管理</a> 
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">应急救援演练计划管理</a>
		</li>
	</ul> 
</div>
<div class="page-container">
	<div class="page-content-wrapper">
		<div class="page-content">
			<div class="row">
				<div class="col-md-12"  id="content_1" >
					<div class="portlet box blue-hoki">
						<div class="portlet-title">
							<div class="caption"  id="title">
								<i class="fa fa-th-list"></i>应急救援演练计划信息
							</div>
						</div>
						<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
						        <div class="form-group" style="line-height: 50px;margin-top:-8px;margin-right:15px;">
						    		演练名称：<input type="text" class="form-control" id="projectName" placeholder="请输入演练名称">
								</div>
								<div class="form-group" style="line-height: 50px;margin-top:-8px">
						    		演练类型：
						    		<select class="form-control">
						    			<option>请选择</option>
						    			<option>桌面演练</option>
						    			<option>现场演练</option>
						    			<option>单体演练</option>
						    			<option>综合演练</option>
						    		</select>
								</div>
								<button type="submit" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-8px">
									<i class="fa fa-search"></i>查询
								</button>
								<button type="button" id="delBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		删除
				            	</button>
								<button type="button" id="editBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		编辑
				            	</button>
				            	<button type="button" id="addBtn" onclick="addDrill()" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		制定演练计划
				            	</button>
							</form>
						</div>
						
						<div id="drillListContainer" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
						<div id="drillPageContainer" class="dlshouwen-grid-toolbar-container"></div>
					</div>
				</div>					
			</div>
		</div>
	</div>
	<div class="modal fade" tabindex="-1" role="dialog" id="colorConfig" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document" style="width:350px;">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">事件状态颜色配置</h4>
		        </div>
		        <div class="modal-body" id="sodbGlobalModalBody" style="height: 150px;width: 350px;">
		        	<div class="form-body">
			        	<div class="form-group row">
							<label class="col-md-8 control-label">准备阶段:</label>
							<div class="col-md-4">
								<input type="color" value="#FF0000"/>
							</div>
						</div>
						<div class="col-md-12" style="height:20px;"></div>
						<label class="col-md-8 control-label">处置阶段:</label>
						<div class="col-md-4">
								<input type="color" value="#1E90FF"/>
						</div>
						<div class="col-md-12" style="height:20px;"></div>
						<label class="col-md-8 control-label">已处理:</label>
						<div class="col-md-4">
								<input type="color" value="#2D9900"/>
						</div>
					</div>
		        </div>
		        <div class="modal-footer">
		            <button type="button" onclick="hideColorConfig();" id="hideGlobalModalBtn" class="btn btn-primary">保存</button>
		            <button type="button" id="hideGlobalModalBtn" class="btn btn-primary">恢复默认</button>
		            <button type="button" onclick="hideColorConfig();" id="hideGlobalModalBtn" class="btn btn-default">取消</button>
		        </div>
	        </div>
	    </div>
	</div>
	
	<div class="modal fade" tabindex="-1" role="dialog" id="eventEvaluate" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document" style="width:450px;">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">事件评估意见</h4>
		        </div>
		        <div class="modal-body" id="sodbGlobalModalBody" style="height: 280px;width: 450px;">
		        	<div class="form-body">
						<label class="col-md-12 control-label">评估总结:</label>
						<div class="col-md-12">
							<textarea rows="7" style="width:100%;"></textarea>
						</div>
						<label class="col-md-12 control-label" style="margin-top:10px">附件上传:</label>
						<div class="col-md-12">
							<input type="file" class="form-control">
						</div>
					</div>
		        </div>
		        <div class="modal-footer">
		            <button type="button" onclick="hideEventEvaluate();" id="hideGlobalModalBtn" class="btn btn-primary">保存</button>
		            <button type="button" onclick="hideEventEvaluate();" id="hideGlobalModalBtn" class="btn btn-default">取消</button>
		        </div>
	        </div>
	    </div>
	</div>
</div>
<script type="text/javascript" src="<%=path %>/js/drillManage/drillGrid.js"></script>
<script type="text/javascript">
function fn(){
	confirm("是否删除？");
}
function dynamicManage(){
	window.location.href = "<%=path%>/pages/emergencyIntegrate/emergencyEventManage/eventDynamicManage.jsp";
}

function eventEvaluate(){
	$('#eventEvaluate').modal('show');
}

function hideEventEvaluate() {
	 $('#eventEvaluate').modal('hide');
}

function hideColorConfig() {
	 $('#colorConfig').modal('hide');
}

function addEvent() {
	window.location.href = "";
}

function colorConfig() {
	$('#colorConfig').modal('show');
}

function addDrill() {
	window.location.href = "/EMS-Prototype/pages/drillManage/addDrill.jsp";
}

function editDrill() {
	window.location.href = "/EMS-Prototype/pages/drillManage/editDrill.jsp"; 
}
</script>		
</body>
</html>