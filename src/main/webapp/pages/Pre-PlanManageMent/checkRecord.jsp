<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>检查单管理列表</title>
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
<li>
<a href="#">检查单管理</a> 
<i class="fa fa-angle-right"></i>
<a href="#">已发布检查单管理</a> 
</ul> 
</div>
<div class="page-container" style="width:100%;">
<div class="page-content-wrapper">
<div class="page-content">
<div class="row"> 
<div id="content_1">
<div class="portlet box blue-hoki">			
		<div class="portlet-title">
			<div class="caption"  id="title">
				检查单管理列表
			</div>
			<div style="margin-left:92%;padding-top:4px;">
			</div>
		</div>			
		<div class="portlet-body form"> 
			<form action="roleManagement.jsp" id="equId" class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">
				<input type="hidden" name="equipment" id="eq" class="equip" value=""/>		
				<div class="form-group">
					   <span>预案分类：</span>
					   <select class="form-control" id="planName" >
					   		<option>航空器紧急事件</option>
					   		<option>非航空器紧急事件</option>
					   </select>
				  </div>
				<div class="form-group"  style="margin-left:30px;">
					<span>救援部门：</span>
					<select class="form-control" id="planName" >
					   		<option>技术部</option>
					   		<option>开发部</option>
					 </select>
				</div>
				<div class="form-group"  style="margin-left:30px;">
					<span>检查单名称：</span>
						<input type="text" class="form-control" id="name" placeholder="请输入检查单名称">
				</div>	   
				<div class="form-group" style="margin-left:30px;">
				    <button type="button" onclick="window.location.reload()" class="sbtn sbtn-blue">查询</button>
				</div>
			</form>
		</div>							
			<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
			<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="modal fade bs-example-modal-sm" id="deleteApply" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
			<div class="col-md-6" style="margin-left: 85px;width: 374px;margin-top: 26px">
					<div class="form-group">
						<span for="outerLeader" class="col-sm-6 control-label" style="width:455px; margin-top: 15px;font-weight: bolder;font-size: 18px;margin-left: 40px" >您确定要撤销已发布的检查单吗？</span>
						</div>					
					</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 125px">
							<button style="margin-left: -152px; margin-top: -45px" type="button" id="okk" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class='fa fa-trash-o'></i> 确定</button>
							<button style="margin-left: 15px; margin-top: -45px" type="button" id="no" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
						</div>
				</div>
			</div>
					
			
		</div>
	</div>
</div>
<div class="modal fade bs-example-modal-sm" id="release" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
			<div class="col-md-6" style="margin-left: 85px;width: 374px;margin-top: 26px">
					<div class="form-group">
						<span for="outerLeader" class="col-sm-6 control-label" style="width:455px; margin-top: 15px;font-weight: bolder;font-size: 18px;margin-left: 73px" >是否确定发布该项目？</span>
						</div>					
					</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 125px">
							<button style="margin-left: -152px; margin-top: -45px" type="button" id="okk" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class='fa fa-trash-o'></i> 确定</button>
							<button style="margin-left: 15px; margin-top: -45px" type="button" id="no" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
						</div>
				</div>
			</div>
					
			
		</div>
	</div>
</div>
<script type="text/javascript" src="<%=path %>/js/deviceJstreeManage.js"></script>
<script type="text/javascript">
function fn(){
	  confirm("是否删除？");
}
$(document).ready(function() {	
	var datas = [
{ "checkCode":"A0001" ,"status":"已发布", "checkName":"检查单A0001","eventSort":"航空器紧急事件","planName":"航空器失事应急处置预案","rescueSection":"技术部","updateTime":"2018年1月22日"},
];    	
	var gridColumns_2_1_1 = [    	
     	{id:'checkCode', title:'检查单编号', type:'string', columnClass:'text-center'},    	
     	{id:'checkName', title:'检查单名称', type:'string',  columnClass:'text-center',
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content = '';
					content += '<a href="checkEvolve.jsp">' + record.checkName + '</a>';
				return content;
			}
     	},
     	{id:'status', title:'发布状态', type:'string',  columnClass:'text-center'},
     	{id:'eventSort', title:'事件分类', type:'string',  columnClass:'text-center'},
     	{id:'planName', title:'预案名称', type:'string',  columnClass:'text-center'},
     	{id:'rescueSection', title:'救援部门', type:'string',  columnClass:'text-center'},
     	{id:'updateTime', title:'修改时间', type:'string',  columnClass:'text-center'},

     ];
     var gridOption_2_1_1 = {
     	lang : 'zh-cn',
     	ajaxLoad : false,
     	exportFileName : '用户列表',
     	datas : datas,
     	columns : gridColumns_2_1_1,
     	check:true,
     	gridContainer : 'policehold_211',
     	toolbarContainer : 'police_211',
     	tools : '',
     	pageSize : 10,
     	pageSizeLimit : [10, 20, 50]
     };
     var grid_2_1_1 = $.fn.dlshouwen.grid.init(gridOption_2_1_1);
     $(function(){
     	grid_2_1_1.load();
     })	  
     
 
})
function deletapp(){
	$("#deleteApply").modal();
}
function releaseapp(){
	$("#release").modal();
}
</script>				
</body>
</html>