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
			<a href="#">应急救援模拟演练</a>
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
						        <div class="form-group" style="line-height: 50px;margin-top:-8px;margin-right:10px;">
						    		演练名称：<input type="text" class="form-control" id="projectName" placeholder="请输入预案名称">
								</div>
								<div class="form-group" style="line-height: 50px;margin-top:-8px">
						    		演练状态：
						    		<select class="form-control">
						    			<option>请选择</option>
						    			<option>未演练</option>
						    			<option>演练中</option>
						    			<option>已完成</option>
						    		</select>
								</div>
								<button type="submit" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px">
									<i class="fa fa-search"></i>查询
								</button>
								<button type="button" id="exportBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		导出
				            	</button>
								<button type="button" id="delBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		删除
				            	</button>
								<button type="button" id="editBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		编辑
				            	</button>
				            	<button type="button" id="addBtn" onclick="addDrill()" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		新增
				            	</button>
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
<script type="text/javascript">
$(function(){
	var datas = [
		{
			"id": "DR001",
			"name": "航空器失事应急演练",
			"type": "航空器紧急事件",
			"eventType": "北京国际机场东货机坪",
			"planType":"专项预案",
			"drillType":"桌面演练",
			"plan": "航空器失事应急处置预案",
		},
		{
			"id": "DR002",
			"name": "航空器失事应急演练",
			"type": "航空器紧急事件",
			"eventType": "北京国际机场东货机坪",
			"planType":"专项预案",
			"drillType":"桌面演练",
			"plan": "航空器失事应急处置预案",
		},
		{
			"id": "DR002",
			"name": "航空器失事应急演练",
			"type": "航空器紧急事件",
			"eventType": "北京国际机场东货机坪",
			"planType":"专项预案",
			"drillType":"桌面演练",
			"plan": "航空器失事应急处置预案",
		},
		{
			"id": "DR003",
			"name": "航空器失事应急演练",
			"type": "航空器紧急事件",
			"eventType": "北京国际机场东货机坪",
			"planType":"专项预案",
			"drillType":"现场演练",
			"plan": "航空器失事应急处置预案",
		},
		{
			"id": "DR004",
			"name": "航空器失事应急演练",
			"type": "航空器紧急事件",
			"eventType": "北京国际机场东货机坪",
			"planType":"专项预案",
			"drillType":"现场演练",
			"plan": "航空器失事应急处置预案",
		}
	];
	var gridColumns_2_1_1 = [
		{id:'id', title:'序号', type:'string', columnClass:'text-center',width:'60',
			resolution : function(value, record,column, grid, dataNo, columnNo) {
				return dataNo+1;
			},
		},
		{id:'id', title:'编号', type:'string', columnClass:'text-center','width':'80'},
		{id:'name', title:'名称', type:'string', columnClass:'text-center',width:'200',
			resolution:function(value, record, column, grid, dataNo, columnNo){ 
				return "<a onclick='checkDrill();'>"+value+"</a>"
			},
		},
		{id:'eventType', title:'事件类型', type:'string', columnClass:'text-center'},
		{id:'planType', title:'预案类型', type:'string', columnClass:'text-center'},
		{id:'drillType', title:'演练类型', type:'string', columnClass:'text-center'},
		{id:'plan', title:'预案', type:'string', columnClass:'text-center'},
	    {id:'operation', title:'操作', type:'string', columnClass:'text-center',width:'200',
	     	resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = '';
		        content += '<button class="sbtn sbtn-blue" onclick="evaluteDrill();" style="margin-right:15px;">评估</button>'; 
		        if(record.drillType == '桌面演练'){
		        	content += '<button class="sbtn sbtn-blue" onclick="startTableDrill();">开始演练</button>'; 	
		        }else{
		        	content += '<button class="sbtn sbtn-blue" onclick="startRealDrill();">开始演练</button>'; 
		        }
		        
		        content += '  ';	                     			
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
		pageSize : 5,
		check: 'true',
		checkWidth: '60'
		
	};
    var grid_2_1_1 = $.fn.dlshouwen.grid.init(eventOption);
	$(function(){
		grid_2_1_1.load();
	});
	
	$("#delBtn").click(function() {
		if(grid_2_1_1.getCheckedRecords().length==0){
			alert("请至少选择一条记录!");
		}else{
			
		}
	})
	
	$("#editBtn").click(function() {
		if(grid_2_1_1.getCheckedRecords().length==0){
			alert("请至少选择一条记录!");
		}else if(grid_2_1_1.getCheckedRecords().length==1){
			window.location.href = "<%=path%>/pages/sandTable/drillBasicInfo.jsp";
		}else{
			alert("只能选择一条记录!");
		}
	})
});

function fn(){
	confirm("是否删除？");
}
function dynamicManage(){
	window.location.href = "<%=path%>/pages/emergencyIntegrate/emergencyEventManage/eventDynamicManage.jsp";
}

function drillConfig() {
	window.location.href = "<%=path%>/pages/sandTable/drillConfig.jsp";
}

function evaluteDrill(){
	$('#eventEvaluate').modal('show');
}

function hideEventEvaluate() {
	 $('#eventEvaluate').modal('hide');
}

function hideColorConfig() {
	 $('#colorConfig').modal('hide');
}

function addEvent() {
	window.location.href = "/EMS-Prototype/pages/emergencyIntegrate/emergencyEventManage/addEvent.jsp";
}

function addDrill() {
	window.location.href = "/EMS-Prototype/pages/sandTable/addDrillBasicInfo.jsp";
}

function startTableDrill() {
	window.location.href = "/EMS-Prototype/pages/sandTable/drillReceive.jsp";
}

function startRealDrill() {
	window.location.href = "/EMS-Prototype/pages/sandTable/spotDrill.jsp";
}

function editDrill() {
	window.location.href = "/EMS-Prototype/pages/sandTable/chcekDrill.jsp";
}

function checkDrill() {
	window.location.href = "/EMS-Prototype/pages/sandTable/chcekDrill.jsp";
}


</script>		
</body>
</html>