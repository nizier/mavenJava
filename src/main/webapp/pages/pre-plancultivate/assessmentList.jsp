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
			<a href="#">应急救援评估管理</a>
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
								<i class="fa fa-th-list"></i>应急救援事件信息
							</div>
						</div>
						<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
						        <div class="form-group" style="line-height: 50px;margin-top:-8px">
						    		事件名称：<input type="text" class="form-control" id="projectName" placeholder="请输入事件名称">
								</div>
								<button type="button" id="searchBtn" onclick="window.location.reload()" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px">
									<i class="fa fa-search"></i>查询
								</button>
								<!-- <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		删除
				            	</button>
				            	<button type="button" id="addBtn" onclick="addEvent()" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		录入事件
				            	</button>
								<button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		预案刷新
				            	</button>
				            	<button type="button" id="colorConfigBtn" onclick="colorConfig()" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		配色配置
				            	</button>
				            	<button type="button" id="contactBtn" onclick="contactMange()"class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		通讯录
				            	</button> -->
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
			            <button type="button" onclick="hideColorConfig();" id="hideGlobalModalBtn" class="btn btn-default">取消</button>
			        </div>
		        </div>
		    </div>
		</div>
</div>
<script type="text/javascript">
$(function(){
	var datas = [
		{
			"id": "A004",
			"name": "火警处理",
			"content":"无",
			"operator": "操作人A",
			"department":"消防部门",
			"operateTime": "2018-01-22 11:47",
			"status": "已办理",
			"level": "中"
		}, {
			"id": "A005",
			"name": "航空器丢失二",
			"content":"无",
			"operator": "操作人A",
			"department":"消防部门",
			"operateTime": "2018-01-22 11:47",
			"status": "已办理",
			"level": "中"
		}, {
			"id": "A006",
			"name": "航空遇险二",
			"content":"无",
			"operator": "操作人A",
			"department":"消防部门",
			"operateTime": "2018-01-22 11:47",
			"status": "已办理",
			"level": "高"
		}, {
			"id": "A007",
			"name": "地面事故二",
			"content":"无",
			"operator": "操作人A",
			"department":"消防部门",
			"operateTime": "2018-01-22 11:47",
			"status": "已办理",
			"level": "低"
		},
	];
	var gridColumns_2_1_1 = [
		{id:'id', title:'事件编号', type:'number', columnClass:'text-center'},
		{id:'name', title:'事件名称', type:'string', columnClass:'text-center'},
		{id:'content', title:'事件内容', type:'string', columnClass:'text-center'},
		{id:'level', title:'级别', type:'string', columnClass:'text-center',
	    	resolution : function(value, record,column, grid, dataNo, columnNo) {
				if(record.level == '高'){
					var content = '<span style="color: red;">'+record.level+'</span>';
				}else if(record.level == '中'){
	   				var content = '<span style="color: green;">'+record.level+'</span>';
	   			}else{
	             	var content = '<span style="color: black;">'+record.level+'</span>';
	            }
	          	return content;
	     	}	
	     },
		{id:'status', title:'事件处理状态', type:'string', columnClass:'text-center',
			resolution : function(value, record,column, grid, dataNo, columnNo) {
				if(value == '准备阶段'){
					var content = '<span style="color: #FF0000;">'+value+'</span>';
				}else if(value == '处置阶段'){
	   				var content = '<span style="color: #1E90FF;">'+value+'</span>';
	   			}else{
	             	var content = '<span style="color: #2D9900;">'+value+'</span>';
	            }
	          	return content;
	     	}
	     },
		{id:'operator', title:'操作人', type:'string', columnClass:'text-center',
			resolution : function(value, record,column, grid, dataNo, columnNo) {
				var content = '<a href="#"><span class="glyphicon glyphicon-phone"></span></a>';
				content += ' <span> '+value+'</span>';
	          	return content;
	     	}	
		},
		{id:'department', title:'部门', type:'string', columnClass:'text-center'},
		{id:'operateTime', title:'操作时间', type:'string', columnClass:'text-center'},
	    {id:'operation', title:'操作', type:'string', columnClass:'text-center',
	     	resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = ''; 	                     			
		        content += '<button class="sbtn sbtn-blue" onclick = "dynamicManage()">查看详情</button>'; 	
		        content += '  ';	
		        content += '<button class="sbtn sbtn-blue" onclick = "assessment()">评估总结</button>';
		        return content;                     			
	      	}		
	    }
	];
	var eventOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '用户列表',
		datas : datas,
		columns : gridColumns_2_1_1,
		gridContainer : 'eventListContainer',
		toolbarContainer : 'eventPageContainer',
		tools : 'refresh',
		pageSize : 10,
		pageSizeLimit : [10, 20, 50]
	};
    var grid_2_1_1 = $.fn.dlshouwen.grid.init(eventOption);
	$(function(){
		grid_2_1_1.load();
	});
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
function assessment() {
	window.location.href = "/EMS-Prototype/pages/pre-plancultivate/assessmentMap.jsp";
}
</script>		
</body>
</html>