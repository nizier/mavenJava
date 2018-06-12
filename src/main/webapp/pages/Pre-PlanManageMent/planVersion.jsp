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
<li><a href="#">应急救援预案版本管理</a></li>
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
				应急救援预案版本管理
			</div>
		</div>			
		<div class="portlet-body form"> 
			<form action="roleManagement.jsp" id="equId" class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">
				<input type="hidden" name="equipment" id="eq" class="equip" value=""/>		
				<div class="form-group" >
					<span>版本号：</span>
						<input type="text" class="form-control" id="name" placeholder="请输入版本号进行查询">
				</div>	   
				<div class="form-group" style="margin-left:30px;">
				    <button type="button"  onclick="window.location.reload()" class="sbtn sbtn-blue">查询</button>
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
{ "planVersion":"V1.0" ,"status":"1", "planName":"航空器失事应急处置预案","updataName":"管理员","updataTime":"2018年1月22日"},
{ "planVersion":"V1.1" , "status":"1","planName":"航空器失事应急处置预案","updataName":"陈磊","updataTime":"2018年2月22日"},
{ "planVersion":"V1.2" ,"status":"1", "planName":"航空器失事应急处置预案","updataName":"陈磊","updataTime":"2018年3月22日"},
{ "planVersion":"V1.3" , "status":"1","planName":"航空器失事应急处置预案","updataName":"陈磊","updataTime":"2018年4月22日"},
{ "planVersion":"V1.4" ,"status":"1", "planName":"航空器失事应急处置预案","updataName":"管理员","updataTime":"2018年5月22日"},
{ "planVersion":"V1.5" , "status":"1","planName":"航空器失事应急处置预案","updataName":"姚伟贤","updataTime":"2018年6月22日"},
{ "planVersion":"V1.6" ,"status":"1", "planName":"航空器失事应急处置预案","updataName":"姚伟贤","updataTime":"2018年7月22日"},
{ "planVersion":"V1.7" , "status":"1","planName":"航空器失事应急处置预案","updataName":"姚伟贤","updataTime":"2018年8月22日"},
{ "planVersion":"V1.8" ,"status":"1", "planName":"航空器失事应急处置预案","updataName":"李自钊","updataTime":"2018年9月22日"},
{ "planVersion":"V1.9" , "status":"0","planName":"航空器失事应急处置预案","updataName":"侯家林","updataTime":"2018年10月22日"},

];    	
	var gridColumns_2_1_1 = [    	
     	{id:'planVersion', title:'版本号', type:'string', columnClass:'text-center'},    	
     	{id:'planName', title:'预案名称', type:'string',  columnClass:'text-center',
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content = '';
					content += '<a href="checkPlanVersion.jsp">' + record.planName + '</a>';
				return content;
     		}	
     	},
     	{id:'status', title:'发布状态', type:'string',  columnClass:'text-center',
     		resolution : function(value, record, column, grid, dataNo, columnNo) {			
     			var content = '';
				if(record.status == '1'){
					content += '<span style="color: green;font-family: Microsoft Yahei;">' +'已发布'+ '</span>';
				}
				else if (record.status == '0'){
					content += '<span style="color: #a1a1a1;font-family: Microsoft Yahei;">' +'未发布'+ '</span>';
				}
                return content
     		}		
     	
     	},
     	{id:'updataName', title:'修订人姓名', type:'string',  columnClass:'text-center'},
     	{id:'updataTime', title:'修订时间', type:'string',  columnClass:'text-center'},
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
     	                 			window.location.href = "<%=path %>/pages/Pre-PlanManageMent/editEvolve.jsp";
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
$("#okks").click(function(){
	$("#ApplySuc").modal();
})

</script>				
</body>
</html>