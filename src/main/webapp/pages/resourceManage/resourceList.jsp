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
			<a href="#">资源管理</a>
		</li>
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
									<i class="fa fa-cogs"></i>资源管理								
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
								<i class="fa fa-th-list"></i>应急救援资源信息
							</div>
						</div>
						<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
						        <div class="form-group" style="line-height: 50px;margin-top:-8px">
						    		资源名称：<input type="text" class="form-control" id="projectName" placeholder="请输入资源名称">
								</div>
								<button type="button" id="searchBtn" onclick="window.location.reload()" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px">
									<i class="fa fa-search"></i>查询
								</button>
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
<script type="text/javascript" src="<%=path %>/js/resourceManage/dutyPeopleJstree.js"></script>
<script type="text/javascript">
$(function(){
	var datas = [
		{
			"id": "A001",
			"name": "救护车",
			"category":"急救-救援车辆",
			"type": "进口丰田大海狮",
			"number":"12",
			"unit": "辆"
		},
		{
			"id": "A001",
			"name": "急救箱",
			"category":"急救-声明救助",
			"type": "红立方急救箱",
			"number":"50",
			"unit": "个"
		},
		{
			"id": "A002",
			"name": "消防车",
			"category":"消防-救援车辆",
			"type": "国五东风D913",
			"number":"6",
			"unit": "辆"
		},
		{
			"id": "A003",
			"name": "消防栓",
			"category":"消防-消防设施",
			"type": "SN室内消火栓 ",
			"number":"12",
			"unit": "辆"
		},
	];
	var gridColumns_2_1_1 = [
	/* 	{id:'id', title:'资源编号', type:'number', columnClass:'text-center'}, */
		{id:'name', title:'资源名称', type:'string', columnClass:'text-center',
     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = ''; 	                     			                     			
		        content += '<a href="<%=path %>/pages/resourceManage/resourcelistTeam.jsp">'+value+'</a>'; 
		        return content;                     			
		    }},
		{id:'category', title:'资源类别', type:'string', columnClass:'text-center'},
		/* {id:'type', title:'型号', type:'string', columnClass:'text-center'}, */
		{id:'number', title:'数量', type:'number', columnClass:'text-center'},
		{id:'unit', title:'单位', type:'string', columnClass:'text-center'}
	];
	var eventOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '用户列表',
		datas : datas,
		/* check : true, */
		columns : gridColumns_2_1_1,
		gridContainer : 'eventListContainer',
		toolbarContainer : 'eventPageContainer',
		tools : 'refresh',
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
   			alert("删除成功");
   			 
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