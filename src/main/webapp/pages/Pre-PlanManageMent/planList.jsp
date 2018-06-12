<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>预案模板列表</title>
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
<li><a href="#">预案模板管理</a></li>
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
				预案模板列表
			</div>
			<div style="margin-left:92%;padding-top:4px;">
				<button type="button" class="sbtn sbtn-default" style="margin-left: -10px;margin-top: 1px" onclick="window.location.href='planTemplate.jsp'">添加预案模板</button>
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
				<div class="form-group" style="margin-left:30px;">
					<span>模板名称：</span>
						<input type="text" class="form-control" id="name" placeholder="请输入模块名称">
				</div>
				<div class="form-group" style="margin-left:30px;">
				    <button type="submit" class="sbtn sbtn-blue">查询</button>
				</div>
					<div class="form-group" style="margin-left:556px;">
				    <button type="submit" class="sbtn sbtn-blue">批量删除</button>
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
<script type="text/javascript" src="<%=path %>/js/deviceJstreeManage.js"></script>
<script type="text/javascript">
function fn(){
	  confirm("是否删除？");
}
$(document).ready(function() {	
	var datas = [
{ "code":"A0001" , "sort":"航空器紧急事件","accessory":"航空器紧急事件附件","description":"这是一个上传的航空器紧急事件附件","uploadingName":"张三","updateTime":"2018年1月22日"},
{ "code":"A0002" , "sort":"非航空器紧急事件","accessory":"非航空器紧急事件附件","description":"这是一个上传的非航空器紧急事件附件","uploadingName":"李四","updateTime":"2018年1月22日"},
];    	
	var gridColumns_2_1_1 = [    	
     	{id:'code', title:'编号', type:'string', columnClass:'text-center'},    	
     	{id:'sort', title:'类别', type:'string',  columnClass:'text-center'},
     	{id:'accessory', title:'附件名称', type:'string',  columnClass:'text-center'},
     	{id:'description', title:'描述', type:'string',  columnClass:'text-center'},
     	{id:'uploadingName', title:'上传人', type:'string',  columnClass:'text-center'},
     	{id:'updateTime', title:'修改时间', type:'string',  columnClass:'text-center'},
      	{id:'operation', title:'操作', type:'string', columnClass:'text-center'
      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
 			        var content = ''; 	                     			
 			        content += '<a href="editPlanTemplate.jsp"><button class="sbtn sbtn-default">编辑</button></a>'; 	                     			
 			        content += '  ';	                     			
 			        content += '<a onclick="fn();"><button  class="sbtn sbtn-blue">删除</button></a>'; 	                     			
 			        return content;                    			
 			    }		
      	}
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
</script>				
</body>
</html>