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
<a href="#">预案管理</a>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
    <div class="col-md-3" style="width: 32%">
       <div class="portlet blue-hoki box" >
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>预案管理								
								</div>
							</div>
							<div class="portlet-body">
								<div id="dptree" class="tree-demo"></div>
							</div>
    	</div>
    </div>
   <div  class="col-md-9"  id="content_1" style="width:67%; display: none" >
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>非空器紧急事件
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                预案名称：<input type="text" class="form-control" id="projectName" placeholder="请输入事件名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            <button type="button" id="addPlanBtn"  onclick="window.location.href='addPlan.jsp'" class="sbtn sbtn-blue" style="margin-left: 270px;margin-top:-5px">
            新增预案</button>
             <button type="button" id="editBtn"   onclick="window.location.href='addPlan.jsp'" class="sbtn sbtn-blue" style="margin-top:-5px">
           编辑</button>
           <button type="button" id="deleteBtn" class="sbtn sbtn-blue" style="margin-top:-5px">
           删除</button>
            
        </form>
      
   	
</form> 
</div>
							
<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div>
					
 <div  class="col-md-9"  id="content_2" style="width:67%;">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>航空器紧急事件
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
               预案名称：<input type="text" class="form-control" id="projectName" placeholder="请输入事件名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            <button type="button" id="addPlanBtn"  onclick="window.location.href='addPlan.jsp'" class="sbtn sbtn-blue" style="margin-left: 270px;margin-top:-5px">
            新增预案</button>
              <button type="button" id="editBtn"   onclick="window.location.href='addPlan.jsp'"  class="sbtn sbtn-blue" style="margin-top:-5px">
           编辑</button>
           <button type="button" id="deleteBtn" class="sbtn sbtn-blue" style="margin-top:-5px">
           删除</button>
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
<script type="text/javascript" src="<%=path %>/businessJs/dutyPeopleJstree.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	var datas = [
		{ "id":"A001" , "name":"机场设施失火应急处置预案","time":"2018年1月","edition":"A/0"},
		{ "id":"A002" , "name":"危险品泄露应急处置预案","time":"2018年1月","edition":"A/0"},
		{ "id":"A003" , "name":"航站楼紧急疏散应急处置预案","time":"2018年1月","edition":"A/0"},
		{ "id":"A004" , "name":"航空油料库失火应急处置预案","time":"2018年1月","edition":"A/0"},
		{ "id":"A005" , "name":"机场大面积航班延误应急处置预案","time":"2018年1月","edition":"A/0"},
		{ "id":"A006" , "name":"冰雪、冬雨天气突发事件应急处置预案","time":"2018年1月","edition":"A/0"},
		{ "id":"A007" , "name":"大风、沙尘暴天气突发事件应急处置预案","time":"2018年1月","edition":"A/0"},

];
	var gridColumns_2_1_1 = [
		{id:'id', title:'预案编号', type:'number', columnClass:'text-center'},
     	{id:'name', title:'预案名称', type:'string', columnClass:'text-center',
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content = '';
					content += '<a href="checkPlan.jsp">' + record.name + '</a>';
				return content;
			}
		},
     	{id:'time', title:'上传时间', type:'string', columnClass:'text-center'},
     	{id:'edition', title:'版本', type:'string', columnClass:'text-center'},

	                     ];
	                     var gridOption_2_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	columns : gridColumns_2_1_1,
	                     	gridContainer : 'policehold_211',
	                     	toolbarContainer : 'police_211',
	                     	check:true,
	                     	tools : '',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_2_1_1 = $.fn.dlshouwen.grid.init(gridOption_2_1_1);
    	                     $(function(){
    	                     	grid_2_1_1.load();
    	                     });
	                  
 });
  function fn(){
	  confirm("是否删除？");
  }
  
  
  $(document).ready(function() {
		
		var datas = [
	{ "id":"A001" , "name":"航空器失事应急处置预案","time":"2018年1月","edition":"A/0"},
	{ "id":"A002" , "name":"航空器空中遇险应急处置预案","time":"2018年1月","edition":"A/0"},
	{ "id":"A003" , "name":"航空器地面事故救援应急处置预案","time":"2018年1月","edition":"A/0"},
	{ "id":"A004" , "name":"航空器跑道事件应急处置预案","time":"2018年1月","edition":"A/0"},
	{ "id":"A005" , "name":"航空器火警应急处置预案","time":"2018年1月","edition":"A/0"},
	{ "id":"A006" , "name":"航空器滑行道突发事件应急处置预案","time":"2018年1月","edition":"A/0"},
	{ "id":"A007" , "name":"低能见度航空器突发事件应急处置预案","time":"2018年1月","edition":"A/0"},

	];
		var gridColumns_3_1_1 = [
		                     	{id:'id', title:'预案编号', type:'number', columnClass:'text-center'},
		                     	{id:'name', title:'预案名称', type:'string', columnClass:'text-center',
		                     		resolution : function(value, record, column, grid, dataNo, columnNo) {
		                				var content = '';
		                					content += '<a href="checkPlan.jsp">' + record.name + '</a>';
		                				return content;
		                			}
		                     	},
		                     	{id:'time', title:'上传时间', type:'string', columnClass:'text-center'},
		                     	{id:'edition', title:'版本', type:'string', columnClass:'text-center'},
/* 	 	                     	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
	 	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
	                  			        var content = ''; 	                     			
	                  			    	content += "<button class='sbtn  sbtn-default btn-sm' id='editBtn' "
	            	                         + "onclick=editapp('"
	            	                         + "'); >编辑</button>";	                     			
	                  			        content += '  ';	                     			
	                  			        content += '<a onclick="fn();"><button  class="sbtn sbtn-blue">删除</button></a>'; 
	                  			          
	                  			        return content;                     			
	                  			    }		
	 	                     	} */
		                     ];
		                     var gridOption_3_1_1 = {
		                     	lang : 'zh-cn',
		                     	ajaxLoad : false,
		                     	exportFileName : '用户列表',
		                     	datas : datas,
		                     	columns : gridColumns_3_1_1,
		                     	check:true,
		                     	gridContainer : 'policehold_311',
		                     	toolbarContainer : 'police_311',
		                     	tools : '',
		                     	pageSize : 10,
		                     	pageSizeLimit : [10, 20, 50]
		                     };
	 	                     var grid_3_1_1 = $.fn.dlshouwen.grid.init(gridOption_3_1_1);
	    	                     $(function(){
	    	                     	grid_3_1_1.load();
	    	                     });
		                  
	 }); 
/*   
  function addPlanApp(){
	  $("#addChild").modal();
  }
  function editapp(){
	  $("#editChild").modal();
  } */
</script>		
		
</body>
</html>