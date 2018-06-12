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
<a href="#">检查单管理</a> 
<i class="fa fa-angle-right"></i>
<a href="#">检查单维护</a> 

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
		</div>			
		<div class="portlet-body form"> 
			<form action="roleManagement.jsp" id="equId" class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">
				<input type="hidden" name="equipment" id="eq" class="equip" value=""/>		
				<div class="form-group" >
					<span>检查单模板名称：</span>
						<input type="text" class="form-control" id="name" placeholder="请输入检查单名称">
				</div>	   
				<div class="form-group" style="margin-left:30px;">
				    <button type="button" onclick="window.location.reload()" class="sbtn sbtn-blue">查询</button>
				</div>
				<div class="form-group" style="margin-left: 53%">
				    <button type="button" id="addCustom"  onclick="window.location.href='customTemplate.jsp'" class="sbtn sbtn-blue">新增</button>
				</div>
				<div class="form-group">
				     <button type="button" id="updates" class="sbtn sbtn-blue">编辑</button>
				</div>
				<div class="form-group" >
				   <button type="button" id="resetBtn" class="sbtn sbtn-blue">删除</button>
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
{ "checkCode":"A0001" , "checkName":"检查单模板A0001","rescueSection":"张三","updateTime":"2018年1月22日"},
{ "checkCode":"A0002" , "checkName":"检查单模板A0002","rescueSection":"王五","updateTime":"2018年1月22日"},
];    	
	var gridColumns_2_1_1 = [    	
     	{id:'checkCode', title:'检查单模板编号', type:'string', columnClass:'text-center'},    	
     	{id:'checkName', title:'检查单模板名称', type:'string',  columnClass:'text-center'},
     	{id:'rescueSection', title:'创建人', type:'string',  columnClass:'text-center'},
     	{id:'updateTime', title:'创建时间', type:'string',  columnClass:'text-center'},
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
     			/**
                  * 删除方法
                  */
                  $("#resetBtn").click(function(){
               		//alert("111");
               		var recordCount =grid_2_1_1.getCheckedRecords().length;
               		 if (recordCount == 0) {
               			 showMsg('请至少选择一条数据操作！',3);
						}else {
							// 获取所有复选框选中的数据
						  		 var records = grid_2_1_1.getCheckedRecords();
						     var ids = [];
						   	 var msg = "您确定要删除该数据吗？";
						   	 // 确定删除数据
						   	 if (confirm(msg)==true){
						   		 
							     for(var i = 0 ;i < records.length; i++ ){
							     // 所有要删除的id存入集合
						   		 ids.push(records[i].id);
						    	 	for (var j = 0; j < datas.length; j++) {
						    	 		// datas中的数据id与要输出的数据id比较
										if(datas[j].id === records[i].id){
											// 在datas数据中删除到选中删除id的数据
											datas.splice(j, 1);
											j -= 1;
										}
									}
						                		 	}
							     // 整理datas数据序号
							     for (var i = 0; i < datas.length; i++) {
									datas[i].ids = i+1;
								}
							     // 刷新列表
						    	 grid_2_1_1.load();
						   	 }else{
						   	 	return false;
						   	 }
						}
               	})
               	$("#updates").click(function(){
     	                 		var recordCounts =grid_2_1_1.getCheckedRecords().length;
     	                 		 if (recordCounts != 1) {
     	                 			 showMsg('请选择一条数据操作！',3);
     	                 		 } else {
     	                 			window.location.href = "<%=path %>/pages/Pre-PlanManageMent/customTemplate.jsp";
     	                 			<%-- <a href="<%=path %>/pages/pre-plancultivate/updateCultivate.jsp"><a/> --%>
     	                 		 }
     	                 	})
     	         	$("#issue").click(function(){
     	                 		var recordCounts =grid_2_1_1.getCheckedRecords().length;
     	                 		 if (recordCounts != 1) {
     	                 			 showMsg('请选择一条数据操作！',3);
     	                 		 } else {
     	                 			$("#release").modal();
     	                 		 }
     	                 	})
     
 
})
function deletapp(){
	$("#deleteApply").modal();
}

</script>				
</body>
</html>