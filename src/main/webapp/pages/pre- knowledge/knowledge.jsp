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
<a href="#">知识库管理</a>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
    <!-- <div class="col-md-3" style="width: 17%">
       <div class="portlet blue-hoki box" >
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>知识库管理								
								</div>
							</div>
							<div class="portlet-body">
								<div id="dptree" class="tree-demo"></div>
							</div>
    	</div>
    </div> -->
<!--     航空器空中遇险应急处置预案 -->
   <div  class="col-md-9"  id="content_1" style="width:100%; " >
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>人员管理
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 						
<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                资料名称：<input type="text" class="form-control" id="projectName" placeholder="请输入资料名称">
            </div>
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
             种类：<input type="text" class="form-control" id="projectName" placeholder="请输入种类名称">
            </div>
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
             部门：<input type="text" class="form-control" id="projectName" placeholder="请输入部门名称">
            </div>
            <button type="button" id="searchBtn" onclick="window.location.reload()" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            <button type="button" id="resetBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            删除</button>
            <%-- <a href="<%=path %>/pages/pre- knowledge/updateKnowledge.jsp"> --%><button type="button" id="updates" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            编辑</button></a>
             <a href="<%=path %>/pages/pre- knowledge/addKnowledge.jsp"><button type="button" id="updatess" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px " 
            >
            新增</button></a>
        </form>
      
   	
</form>
</div>
							
<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div>
					
 <div  class="col-md-9"  id="content_2" style="width:82%;display: none">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>人员管理
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                事件名称：<input type="text" class="form-control" id="projectName" placeholder="请输入事件名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px">
            新增事件</button>
            
        </form>
      
   	
</form>
</div>
							
<div id="policehold_311" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_311" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div>					
				</div>
				</div>
				</div>
		
				<div class="modal fade" id="addHuman" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 
</div>
<script type="text/javascript" src="<%=path %>/businessJs/knowledge.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	var datas = [
{  "ids":"1","id":"001" , "name":"基础知识教材-救援员1","time":"基础教材","status":"救援员基础人员入门教材","level":"救援部","ooo":"下载"},
{  "ids":"2","id":"002" , "name":"基础知识教材-救援员2","time":"基础教材","status":"救援员基础人员入门教材","level":"救援部","ooo":"下载"},
{  "ids":"3","id":"003" , "name":"基础知识教材-救援员3","time":"基础教材","status":"救援员基础人员入门教材","level":"救援部","ooo":"无"},
{  "ids":"4","id":"004" , "name":"基础知识教材-救援员4","time":"基础教材","status":"救援员基础人员入门教材","level":"救援部","ooo":"无"},
{  "ids":"5","id":"005" , "name":"基础知识教材-救援员5","time":"基础教材","status":"救援员基础人员入门教材","level":"救援部","ooo":"无"},
{  "ids":"6","id":"006" , "name":"基础知识教材-救援员6","time":"基础教材","status":"救援员基础人员入门教材","level":"救援部","ooo":"无"},
{  "ids":"7","id":"007" , "name":"基础知识教材-救援员7","time":"基础教材","status":"救援员基础人员入门教材","level":"救援部","ooo":"无"},

];
	var gridColumns_2_1_1 = [
							{id:'ids', title:'序号', type:'number', columnClass:'text-center'},
	                     	{id:'name', title:'资料名称', type:'string', columnClass:'text-center',
	                     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
	                		        var content = ''; 	                     			                     			
	                		        content += '<a href="<%=path %>/pages/pre- knowledge/lookKnowledge.jsp">'+value+'</a>'; 
	                		        return content;                     			
	                		    }},
	                     	{id:'time', title:'种类', type:'string', columnClass:'text-center'},
	                     	{id:'status', title:'简介', type:'string', columnClass:'text-center'},
	                     	{id:'level', title:'部门', type:'string', columnClass:'text-center'},
	                     	/* {id:'ooo', title:'附件', type:'string', columnClass:'text-center',
	                     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
	                		        var content = ''; 	                     			                     			
	                		        content += '<a href="#">'+value+'</a>'; 
	                		        return content;                     			
	                		    }} */
 	                     	 {id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
 	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
                  			        var content = ''; 	                     			
                  			        content += '<a href="#"><button class="sbtn sbtn sbtn-blue">下载</button></a>'; 	                     			
                  			        /* content += '  ';	                     			
                  			        content += '<a onclick="fn();"><button  class="sbtn sbtn-blue">删除</button></a>';  */
                  			        return content;                     			
                  			    }		
 	                     	} 
	                     ];
	                     var gridOption_2_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	check : true,
	                     	columns : gridColumns_2_1_1,
	                     	gridContainer : 'policehold_211',
	                     	toolbarContainer : 'police_211',
	                     	tools : 'refresh',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_2_1_1 = $.fn.dlshouwen.grid.init(gridOption_2_1_1);
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
     	                 			window.location.href = "<%=path %>/pages/pre- knowledge/updateKnowledge.jsp";
     	                 			<%-- <a href="<%=path %>/pages/pre-plancultivate/updateCultivate.jsp"><a/> --%>
     	                 		 }
     	                 	})
 });
  function fn(){
	  confirm("是否删除？");
  }
  
  
  $(document).ready(function() {
		
		var datas = [
	{ "id":"A001" , "name":"航空器丢失1","time":"2018年1月","status":"进行","level":"中"},
	{ "id":"A002" , "name":"航空遇险1","time":"2018年1月","status":"进行","level":"中"},
	{ "id":"A003" , "name":"地面事故1","time":"2018年1月","status":"进行","level":"高"},
	{ "id":"A004" , "name":"火警处理1","time":"2018年1月","status":"进行","level":"中"},
	{ "id":"A005" , "name":"航空器丢失二1","time":"2018年1月","status":"进行","level":"中"},
	{ "id":"A006" , "name":"航空遇险二1","time":"2018年1月","status":"进行","level":"高"},
	{ "id":"A007" , "name":"地面事故二1","time":"2018年1月","status":"进行","level":"低"},

	];
		var gridColumns_3_1_1 = [
		                     	{id:'id', title:'事件编号', type:'number', columnClass:'text-center'},
		                     	{id:'name', title:'事件名称', type:'string', columnClass:'text-center'},
		                     	{id:'time', title:'制作时间', type:'string', columnClass:'text-center'},
		                     	{id:'status', title:'修订状态', type:'string', columnClass:'text-center'},
		                     	{id:'level', title:'级别', type:'string', columnClass:'text-center',
		                     		resolution : function(value, record,
		                  					column, grid, dataNo, columnNo) {
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
	 	                     	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
	 	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
	                  			        var content = ''; 	                     			
	                  			        content += '<a href="#"><button class="sbtn sbtn-default">编辑</button></a>'; 	                     			
	                  			        content += '  ';	                     			
	                  			        content += '<a onclick="fn();"><button  class="sbtn sbtn-blue">删除</button></a>'; 
	                  			          
	                  			        return content;                     			
	                  			    }		
	 	                     	}
		                     ];
		                     var gridOption_3_1_1 = {
		                     	lang : 'zh-cn',
		                     	ajaxLoad : false,
		                     	exportFileName : '用户列表',
		                     	datas : datas,
		                     	columns : gridColumns_3_1_1,
		                     	gridContainer : 'policehold_311',
		                     	toolbarContainer : 'police_311',
		                     	tools : 'refresh',
		                     	pageSize : 10,
		                     	pageSizeLimit : [10, 20, 50]
		                     };
	 	                     var grid_3_1_1 = $.fn.dlshouwen.grid.init(gridOption_3_1_1);
	    	                     $(function(){
	    	                     	grid_3_1_1.load();
	    	                     });
		                  
	 }); 
</script>		
		
</body>
</html>