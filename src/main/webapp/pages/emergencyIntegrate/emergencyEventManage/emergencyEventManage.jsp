<%@page pageEncoding="UTF-8"%>
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
			<a href="#">应急救援指挥协调</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">事后管理</a>
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
								<button type="submit" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px">
									<i class="fa fa-search"></i>查询
								</button>
								<button type="button" id="colorConfigBtn" onclick="colorConfig()" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		配色配置
				            	</button>
								<button type="button" id="delBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		删除
				            	</button>
				            	<button type="button" id="editBtn"  class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		编辑事件
				            	</button>
				            	<button type="button" id="addBtn" onclick="addEvent()" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		录入事件
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
							<label class="col-md-8 control-label">事件级别-低:</label>
							<div class="col-md-4">
								<input type="color" value="#FF0000"/>
							</div>
						</div>
						<div class="col-md-12" style="height:20px;"></div>
						<label class="col-md-8 control-label">事件级别-中:</label>
						<div class="col-md-4">
								<input type="color" value="#1E90FF"/>
						</div>
						<div class="col-md-12" style="height:20px;"></div>
						<label class="col-md-8 control-label">事件级别-高:</label>
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
	
	
	
	<!-- 事件评估模态框 -->
	<div id="eventEvaluate" class="modal fade bs-example-modal-sm" style="margin-top: 8%;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss = "modal">&times;</button>
                    <h4 class="modal-title" id="">事件评估意见</h4>
                </div>
                <div class="modal-body" style="text-align: center; height: 50%;">
                   <label class="col-md-12 control-label"><span style="font-family: KaiTi; font-size: 25px;">评估总结</span></label>
					<div class="col-md-12">
						<textarea rows="7" style="width:100%; height: 260px; resize:none;" id="textluru" ></textarea>
					</div>
					<span style="display: none" id="bianhao"></span>
					
					<label class="col-md-3 control-label" style="padding-top: 1%;"><span style="font-family: KaiTi; font-size: 20px;">附件上传：</span></label>
					<div class="col-md-5" style="padding-top: 1%; text-align: left;">
						<input type="text" id="filePath" class="form-control" placeholder="附件">
	                	<input type="file" id="fileopen" style="display: none">
					</div>
					<div class="col-md-4" style="padding-top: 1%; text-align: left;" id="fileChoice">
						
					</div>
                </div>
                
               
                <div class="modal-footer">
                    <div style="text-align: center;">
                        <button class="sbtn sbtn-blue sbtn30" data-dismiss = "modal" onclick="hideEventEvaluate(1);" id="hideGlobalModalBtn" >确认</button>
                        <button class="sbtn sbtn-blue sbtn30" data-dismiss = "modal" onclick="hideEventEvaluate(2);" id="hideGlobalModalBtn"  style="margin-left: 45px;" >取消</button>
                    	<button  id="history" class="sbtn sbtn-default sbtn30" data-dismiss = "modal" onclick="hideEventEvaluate(3);" style="margin-left: 45px;">历史评估查看</button> 
                    </div>
                </div>
            </div>
        </div>
    </div>
	
	
		<!-- 历史评估查看模态框 -->
	<div id="historyAssessment" class="modal fade bs-example-modal-sm" style="margin-top: 8%;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss = "modal">&times;</button>
                    <h4 class="modal-title" id="">历史评估查看</h4>
                </div>
                <div class="modal-body" style="text-align: center; height: 50%;">
                	<div id="historyAssessmentContainer" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
					<div id="historyPageContainer" class="dlshouwen-grid-toolbar-container"></div>
                </div>
               
                <div class="modal-footer" style="margin-top: 12%;">
                    <div style="text-align: center; padding-top: 7%;">
                        <button class="sbtn sbtn-blue sbtn30" data-dismiss = "modal" onclick="hideEventEvaluate(4);" id="hideGlobalModalBtn" >返回列表</button>
                        <button class="sbtn sbtn-blue sbtn30" data-dismiss = "modal" onclick="hideEventEvaluate(5);" id="hideGlobalModalBtn"  style="margin-left: 45px;" >返回评估</button></div>
                </div>
            </div>
        </div>
    </div>
	
<script type="text/javascript">
	// 事件列表数据
	var datas = [
		{
			"id": "A001",
			"name": "航空器丢失",
			"operator": "负责人一",
			"level": "中",
			"reserve":"失火紧急救援",
			"category":"发动机事件",
			"operateTime": "2018-01-22 11:47",
			"Assessment":""
		}, {
			"id": "A002",
			"name": "航空遇险",
			"operator": "负责人二",
			"level": "高",
			"reserve":"失火紧急救援",
			"category":"起落架事件",
			"operateTime": "2018-07-22 11:47",
			"Assessment":""
		}, {
			"id": "A003",
			"name": "地面事故",
			"operator": "负责人三",
			"level": "低",
			"reserve":"失火紧急救援",
			"category":"发动机事件",
			"operateTime": "2018-01-22 11:47",
			"Assessment":""
		}, {
			"id": "A004",
			"name": "航空器丢失",
			"operator": "负责人一",
			"level": "中",
			"reserve":"失火紧急救援",
			"category":"发动机事件",
			"operateTime": "2018-01-22 11:47",
			"Assessment":"此事件的处理..."
		}, {
			"id": "A005",
			"name": "火情处理",
			"operator": "负责人四",
			"level": "中",
			"reserve":"失火紧急救援",
			"category":"发动机事件",
			"operateTime": "2018-01-22 11:47",
			"Assessment":"此事件的处理"
		}, {
			"id": "A006",
			"name": "火情处理",
			"operator": "负责人二",
			"level": "中",
			"reserve":"失火紧急救援",
			"category":"发动机事件",
			"operateTime": "2018-01-22 11:47",
			"Assessment":"此事件的处理..."
		}, {
			"id": "A005",
			"name": "火情处理",
			"operator": "负责人一",
			"level": "中",
			"reserve":"失火紧急救援",
			"category":"发动机事件",
			"operateTime": "2018-01-22 11:47",
			"Assessment":"此事件的处理..."
		},
	];
	
	// 历史评估查看列表数据
	var datas1 = [
		{
			"id": "A001",
			"ids": "1",
			"name": "航空器丢失",
			"operator": "负责人一",
			"level": "中",
			"reserve":"失火紧急救援",
			"category":"发动机事件",
			"operateTime": "2018-01-22 11:47",
			"Assessment":"对于此事件的处理，在整个事件的处理过程中，跟部门积极联动，高效配合完成...对于此事件的处理，在整个事件的处理过程中，跟部门积极联动，高效配合完成...对于此事件的处理，在整个事件的处理过程中，跟部门积极联动，高效配合完成...对于此事件的处理，在整个事件的处理过程中，跟部门积极联动，高效配合完成...对于此事件的处理，在整个事件的处理过程中，跟部门积极联动，高效配合完成...对于此事件的处理，在整个事件的处理过程中，跟部门积极联动，高效配合完成...对于此事件的处理，在整个事件的处理过程中，跟部门积极联动，高效配合完成...对于此事件的处理，在整个事件的处理过程中，跟部门积极联动，高效配合完成...对于此事件的处理，在整个事件的处理过程中，跟部门积极联动，高效配合完成...对于此事件的处理，在整个事件的处理过程中，跟部门积极联动，高效配合完成..."
		}, {
			"id": "A002",
			"ids": "2",
			"name": "航空遇险",
			"operator": "负责人二",
			"level": "高",
			"reserve":"失火紧急救援",
			"category":"起落架事件",
			"operateTime": "2018-07-22 11:47",
			"Assessment":""
		}, {
			"id": "A003",
			"ids": "3",
			"name": "地面事故",
			"operator": "负责人三",
			"level": "低",
			"reserve":"失火紧急救援",
			"category":"发动机事件",
			"operateTime": "2018-01-22 11:47",
			"Assessment":""
		}, {
			"id": "A004",
			"ids": "4",
			"name": "航空器丢失",
			"operator": "负责人一",
			"level": "中",
			"reserve":"失火紧急救援",
			"category":"发动机事件",
			"operateTime": "2018-01-22 11:47",
			"Assessment":"此事件的处理..."
		}, {
			"id": "A005",
			"ids": "5",
			"name": "火情处理",
			"operator": "负责人四",
			"level": "中",
			"reserve":"失火紧急救援",
			"category":"发动机事件",
			"operateTime": "2018-01-22 11:47",
			"Assessment":"此事件的处理"
		}, {
			"id": "A006",
			"ids": "6",
			"name": "火情处理",
			"operator": "负责人二",
			"level": "中",
			"reserve":"失火紧急救援",
			"category":"发动机事件",
			"operateTime": "2018-01-22 11:47",
			"Assessment":"此事件的处理..."
		}, {
			"id": "A005",
			"ids": "7",
			"name": "火情处理",
			"operator": "负责人一",
			"level": "中",
			"reserve":"失火紧急救援",
			"category":"发动机事件",
			"operateTime": "2018-01-22 11:47",
			"Assessment":"此事件的处理..."
		},
	];
	
	// 事件配置
	var gridColumns_2_1_1 = [
		{id:'id', title:'事件编号', type:'number', columnClass:'text-center'},
		{id:'name', title:'事件名称', type:'string', columnClass:'text-center',
	    	resolution : function(value, record,column, grid, dataNo, columnNo) {
	    		var content = '<a href=eventLookUp.jsp>'+value+'</a>';
	          	return content;
	     	}	
	     },
		{id:'operator', title:'负责人', type:'string', columnClass:'text-center',
			resolution : function(value, record,column, grid, dataNo, columnNo) {
				var content = ' <span> '+value+'</span>';
				content += '<a href="#"><span class="glyphicon glyphicon-phone"></span></a>';
	          	return content;
	     	}	
		},
		{id:'level', title:'事件级别', type:'string', columnClass:'text-center',
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
		{id:'reserve', title:'所属预案', type:'string', columnClass:'text-center'},
		{id:'category', title:'事件分类', type:'string', columnClass:'text-center'},
		{id:'operateTime', title:'操作时间', type:'string', columnClass:'text-center'},
		{id:'Assessment', title:'评估状态', type:'string', columnClass:'text-center',
			resolution : function(value, record,column, grid, dataNo, columnNo) {
				if(value.length < 1){
					var content = "未评估";
				}else{
					var content = "已评估";
				}
	          	return content;
	     	}	
		},
	    {id:'operation', title:'操作', type:'string', columnClass:'text-center',
	     	resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = ''; 	                     			
		        content += '<button class="sbtn sbtn-blue" >下载附件</button>'; 	                     			
		        content += '  ';
		        content += '<button class="sbtn sbtn-blue" onclick = eventEvaluate("'+record.id+'","'+record.Assessment+'");>评估</button>'; 	                     			
		       
		        return content;                     			
	      	}		
	    }
	];
	// 事件初始化
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
		pageSizeLimit : [10, 20, 50],
		check: true
	};
    var grid_2_1_1 = $.fn.dlshouwen.grid.init(eventOption);
	$(function(){
		grid_2_1_1.load();
	});
	
	
	// 历史评估配置
	var gridColumns = [
		{id:'ids', title:'序号', type:'string', columnClass:'text-center'},
		{id:'name', title:'评估人', type:'string', columnClass:'text-center'},
		{id:'Assessment', title:'评估内容', type:'string', columnClass:'text-center',
			resolution : function(value, record,column, grid, dataNo, columnNo) {
				// 创建字符段  用于接受 数据
            	var content = '';
				// 将数据复制给字符串
                content += value;
                var clause = '';
				// 创建字符段 用于接受处理好的字符串
                var box = '';
            	var l=7;  
            	var p=document.getElementById('box');  
            	box=checkString(content,l,'...');
            	clause += "<span title="
				        + content + ">"+box+"</span>";
            	function checkString(s,l,tag){  
            	    if(s.length>l){  
            	        return s.substring(0,l)+tag;  
            	    } else{
            	    	return s;
            	    } 
            	}  
     		<%-- var content = '<a href="<%=path %>/pages/agreementManage/lookAgreement.jsp">'+clause+'</a>'; --%>
     		var content = clause;
          	return content;
     	  }	},
		{id:'operateTime', title:'评估时间', type:'string', columnClass:'text-center'},
	    {id:'operation', title:'操作', type:'string', columnClass:'text-center',
	     	resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = ''; 	                     			
		        content += '<button class="sbtn sbtn-blue" >下载附件</button>'; 	                     			
		        return content;                     			
	      	}		
	    }
	];
	
	//历史评估查看
	var historyOption = {
			lang : 'zh-cn',
			ajaxLoad : false,
			exportFileName : '用户列表',
			datas : datas1,
			columns : gridColumns,
			gridContainer : 'historyAssessmentContainer',
			toolbarContainer : 'historyPageContainer',
			tools : '',
			pageSize : 10,
			pageSizeLimit : [10, 20, 50],
			check: false
		};
	    var grid = $.fn.dlshouwen.grid.init(historyOption);
		$(function(){
			grid.load();
		});
	
	
	
	
	$("#delBtn").click(function() {
		if(grid_2_1_1.getCheckedRecords().length==0){
			alert("请至少选择一条记录!");
		}else{
			confirm("是否删除？");
		}
	})
	
	$("#editBtn").click(function() {
		if(grid_2_1_1.getCheckedRecords().length==0){
			alert("请至少选择一条记录!");
		}else if(grid_2_1_1.getCheckedRecords().length==1){
			window.location.href = "/EMS-Prototype/pages/emergencyIntegrate/emergencyEventManage/editEvent.jsp";
		}else{
			alert("只能选择一条记录!");
		}
	})
 
function fn(){
	confirm("是否删除？");
}
function dynamicManage(){
	window.location.href = "/EMS-Prototype/pages/emergencyIntegrate/emergencyEventManage/eventDynamicManage.jsp";
}

function eventEvaluate(id,Assessment){
	for (var i = 0; i < datas.length; i++) {
		if (datas[i].id == id) {
			var luru = datas[i].Assessment;
			/* $("#textluru").val(""); */
			$("#textluru").val(luru);
			$("#bianhao").html(id);
		}
	} 
	var isAssessment = '';
	if (Assessment) {
		isAssessment = '<button class="sbtn sbtn-blue" id="upload" onclick=xiazai() type="button">选择附件</button>';
		/* isAssessment += '  ';
		isAssessment += '<button class="sbtn sbtn-blue" id="" type="button">下载</button> '; */
		$("#history").show();
	}else{
		isAssessment = '<button class="sbtn sbtn-blue" id="upload" onclick=xiazai() type="button">选择附件</button>';
		$("#history").hide();
	}
	
	$("#fileChoice").html(isAssessment);
	
	$('#eventEvaluate').modal('show');
}

/* 	$("#upload").click(function(){
		
		
	}) */
	
	 function xiazai(){
		 $("#fileopen").click();
	}
	
	$("#fileopen").change(function(){
		var file = $("#fileopen").val();
		$("#filePath").val(file);
	})
function hideEventEvaluate(num) {
	// 数字为 1 的时候  执行保存操作
	if (num === 1) {
		var luru = $("#textluru").val();
		var bianhao = $("#bianhao").text();
		for (var i = 0; i < datas.length; i++) {
			if (datas[i].id == bianhao) {
				// 回填值
				datas[i].Assessment=luru;
			}
		} 
		 grid_2_1_1.load();
	// 数字为 3 的时候  跳转到“历史评估查看”记录 
	}else if (num === 3) {
		$('#eventEvaluate').modal('hide');
		$('#historyAssessment').modal('show');
		
	// 数字为 4 的时候  跳转到“返回评估”页面
	}else if (num === 4) {
		$('#historyAssessment').modal('hide');
	// 数字为 5 的时候  跳转到“返回评估”页面
	}else if (num === 5) {
		$('#historyAssessment').modal('hide');
		$('#eventEvaluate').modal('show');
	}else{
	// 数字为 2 的时候  关闭模态框 
		 $('#eventEvaluate').modal('hide');
	}
	
}

function hideColorConfig() {
	 $('#colorConfig').modal('hide');
}

function addEvent() {
	window.location.href = "/EMS-Prototype/pages/emergencyIntegrate/emergencyEventManage/addEvent.jsp";
}

function colorConfig() {
	$('#colorConfig').modal('show');
}

function contactMange() {
	window.location.href = "/EMS-Prototype/pages/emergencyIntegrate/emergencyEventManage/contactManage.jsp";
}
</script>		
</body>
</html>