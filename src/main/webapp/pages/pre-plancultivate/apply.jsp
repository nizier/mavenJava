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
<a href="#">应急救援培训管理</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">人员列表</a></li>
</ul> 
</div>
<div class="page-container">
	<div class="page-content-wrapper" >
		<div class="page-content">
			<div class="row">
    			<div class="col-md-3">
				   <div class="portlet blue-hoki box" >
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>部门人员								
								</div>
							</div>
							<div class="portlet-body">
								<div id="dptree" class="tree-demo"></div>
							</div>
					</div>
				</div> 
				
				<div class="col-md-9"  id="content_1" >
					<div class="portlet box blue-hoki">
						<div class="portlet-title">
							<div class="caption"  id="title">
								<i class="fa fa-th-list"></i>人员信息
							</div>
						</div>
						<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
						        <div class="form-group" style="line-height: 50px;margin-top:-8px">
						    		姓名：<input type="text" class="form-control" id="projectName" placeholder="请输入姓名">
								</div>
								<button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px">
									<i class="fa fa-search"></i>查询
								</button>
								<a href="<%=path %>/pages/pre-plancultivate/planCheck.jsp"><button type="button" id="us" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
          						  返回</button> </a>
          						  <button type="button" id="resetBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
          						  报名</button> 
								<!-- <button type="button" id="addBtn"  class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		新增资源
				            	</button> -->
								<%-- <button type="button" id="delBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		删除
				            	</button>

				            	<a href="<%=path %>/pages/resourceManage/updateResourceList.jsp.jsp"><button type="button" id="editBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		编辑
				            	</button>
				            	 <a href="<%=path %>/pages/resourceManage/addResourceList.jsp"><button type="button" id="editBtn" onclick="addEvent()" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		新增
				            	</button></a> --%>
							</form>
						</div>
						
						<div id="eventListContainer" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
						<div id="eventPageContainer" class="dlshouwen-grid-toolbar-container"></div>
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
</div>
<script type="text/javascript" src="<%=path %>/businessJs/cultivate.js"></script>
<script type="text/javascript">
$(function(){
	var datas = [
		{ "id":"1" , "name":"张三","place":"1500000000000","number":"男","cultivate":"办公室","submitter":"15700000000"},
		{ "id":"2" , "name":"李四","place":"1500000000000","number":"男","cultivate":"财务部","submitter":"15700000000"},
		{ "id":"3" , "name":"王五","place":"1500000000000","number":"男","cultivate":"人力资源部","submitter":"15700000000"},
		{ "id":"4" , "name":"易烊千玺","place":"1500000000000","number":"男","cultivate":"安检","submitter":"15700000000"},
		{ "id":"5" , "name":"王子珩","place":"1500000000000","number":"男","cultivate":"护卫","submitter":"15700000000"},
		{ "id":"6" , "name":"邓超","place":"1500000000000","number":"男","cultivate":"物流","submitter":"15700000000"},
		{ "id":"7" , "name":"董傻","place":"1500000000000","number":"男","cultivate":"信息中心","submitter":"15700000000"},
	];
	var gridColumns_2_1_1 = [
		{id:'id', title:'培训编号', type:'number', columnClass:'text-center'},
     	{id:'name', title:'姓名', type:'string', columnClass:'text-center'},
     	/* {id:'time1', title:'起始时间', type:'string', columnClass:'text-center'},
     	{id:'time2', title:'结束时间', type:'string', columnClass:'text-center'}, */
     	{id:'place', title:'身份证号', type:'string', columnClass:'text-center'},
     	{id:'number', title:'性别', type:'string', columnClass:'text-center'},
     	{id:'cultivate', title:'部门', type:'string', columnClass:'text-center'},
     	{id:'submitter', title:'电话', type:'string', columnClass:'text-center'}
     ];
	   
	var eventOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '用户列表',
		datas : datas,
		check : true, 
		columns : gridColumns_2_1_1,
		gridContainer : 'eventListContainer',
		toolbarContainer : 'eventPageContainer',
		tools : '',
		/* check: true, */
		pageSize : 10,
		pageSizeLimit : [10, 20, 50]
	};
    var grid_2_1_1 = $.fn.dlshouwen.grid.init(eventOption);
	$(function(){
		grid_2_1_1.load();
	});
	 $("#resetBtn").click(function(){
   		//alert("111");
   		var recordCount =grid_2_1_1.getCheckedRecords().length;
   		 if (recordCount == 0) {
   			 showMsg('请至少选择一条数据操作！',3);
   		 } else {
   			showMsg('报名成功！');
   			 
   		 }
   	})
   	$("#updates").click(function(){
   		var recordCounts =grid_2_1_1.getCheckedRecords().length;
   		 if (recordCounts != 1) {
   			 showMsg('请选择一条数据操作！',3);
   		 } else {
   			window.location.href = "<%=path %>/pages/resourceManage/updateResourceList.jsp.jsp";
   			<%-- <a href="<%=path %>/pages/pre-plancultivate/updateCultivate.jsp"><a/> --%>
   		 }
   	})
});
 
function fn(){
	confirm("是否删除？");
}
function dynamicManage(){
	window.location.href = "/EMS-Prototype/pages/emergencyIntegrate/emergencyEventManage/eventDynamicManage.jsp";
}

function addEvent() {
	window.location.href = "/EMS-Prototype/pages/emergencyIntegrate/emergencyEventManage/addNewEvent.jsp";
}

function colorConfig() {
	$('#colorConfig').modal('show');
}

function hideColorConfig() {
	 $('#colorConfig').modal('hide');
}

function contactMange() {
	window.location.href = "/EMS-Prototype/pages/emergencyIntegrate/emergencyEventManage/contactManage.jsp";
}
</script>		
</body>
</html>