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
<a href="#">应急培训管理</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">培训机构管理</a></li>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
   <!--  <div class="col-md-3" style="width: 18%">
       <div class="portlet blue-hoki box">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>部门树分类							
								</div>
							</div>
							<div class="portlet-body">
								<div id="dptree" class="tree-demo" ></div>
							</div>
    	</div>
    </div> -->
		
<!-- 培训管理 -->
<div  class="col-md-9"  id="content_1" style="width:100%; " >
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>机构管理
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 
<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                机构名称：<input type="text" class="form-control" id="projectName" placeholder="请输入机构名称">
            </div>
            <button type="submit" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
             <button type="button"  id="resetBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            删除</button>
            <button type="button" id="updates" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            编辑</button></a>
             <a href="<%=path %>/pages/pre-plancultivate/addOrganization.jsp"><button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px " 
            >
            新增</button></a>
        </form>
      </div>
							
<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div>
					
<div  class="col-md-9"  id="content_2" style="width:81%;display: none">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>应急培训管理
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                 机构名称：<input type="text" class="form-control" id="projectName" placeholder="请输入方案名称">
            </div>
            <button type="submit" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px">
            新增</button>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:4px ">
            删除</button>
           <!--  <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:4px ">
            编辑</button> -->
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
<script type="text/javascript" src="<%=path %>/businessJs/cultivate.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	
	var datas = [
		{ "id":"1" , "ids":"ABC",  "name":"01培训营", "time":"2018年1月", "place":"张三","number":"15000000000",  "name1":"A培训公司",    "name3":"北京市海淀区"},
		{ "id":"2" , "ids":"FBI",  "name":"01培训营", "time":"2018年1月", "place":"李四","number":"15000000000",  "name1":"A培训公司",  "name3":"北京市海淀区"},
		{ "id":"3" , "ids":"JKS",  "name":"01培训营", "time":"2018年1月", "place":"王五","number":"15000000000",  "name1":"A培训公司",   "name3":"北京市海淀区"},
		{ "id":"4" , "ids":"KLS",  "name":"01培训营", "time":"2018年1月", "place":"张三","number":"15000000000",  "name1":"A培训公司",  "name3":"北京市海淀区"},
		{ "id":"5" , "ids":"JGU",  "name":"01培训营", "time":"2018年1月", "place":"李四","number":"15000000000",  "name1":"A培训公司",  "name3":"北京市海淀区"},
		{ "id":"6" , "ids":"ASD",  "name":"01培训营", "time":"2018年1月", "place":"王五","number":"15000000000",  "name1":"A培训公司",   "name3":"北京市海淀区"},
		{ "id":"7" , "ids":"GFD",  "name":"01培训营", "time":"2018年1月", "place":"张三","number":"15000000000",  "name1":"A培训公司",  "name3":"北京市海淀区"},


];
	var gridColumns_2_1_1 = [
		{id:'id', title:'序号', type:'number', columnClass:'text-center'},
		{id:'ids', title:'机构编码', type:'number', columnClass:'text-center'},
     	{id:'name', title:'机构名称', type:'string', columnClass:'text-center',
     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = ''; 	                     			                     			
		        content += '<a href="<%=path %>/pages/pre-plancultivate/upOrganization.jsp">'+value+'</a>'; 
		        return content;                     			
		    }
     	},
     	{id:'name1', title:'所在单位', type:'string', columnClass:'text-center'},
     	{id:'time', title:'创建时间', type:'string', columnClass:'text-center'},
     	{id:'place', title:'联系人', type:'string', columnClass:'text-center'},
     	
     	
     	{id:'number', title:'联系电话', type:'string', columnClass:'text-center'},
     	
     	{id:'name3', title:'地址', type:'string', columnClass:'text-center'}
      <%-- 	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center',width:'200'
      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
			        var content = ''; 	                     			
			        content += '<a href="<a href="<%=path %>/pages/pre-plancultivate/updateCultivate.jsp"><button class="sbtn sbtn-blue" >修改</button></a>'; 	                     			
			        content += '  ';	                     			
			        content += '<a onclick="fn();"><button  class="sbtn sbtn-blue">删除</button></a>'; 
			          
			        return content;                     			
			    }		
      	} --%> 
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
     	                 			window.location.href = "updateOrganization.jsp";
     	                 		 }
     	                 	})
	                  
 });
  function fn(){
	  confirm("是否删除？");
  }
  function trees(){
	 
  }  
  $(document).ready(function() {
		
		var datas = [
			{ "id":"1" , "ids":"A001",  "name":"民航局培训营", "time":"2018年1月", "place":"张三"},
			{ "id":"2" , "ids":"A002",  "name":"民航局培训营", "time":"2018年1月", "place":"李四"},
			{ "id":"3" , "ids":"A003",  "name":"民航局培训营", "time":"2018年1月", "place":"王五"},
			{ "id":"4" , "ids":"A004",  "name":"民航局培训营", "time":"2018年1月", "place":"张三"},
			{ "id":"5" , "ids":"A005",  "name":"民航局培训营", "time":"2018年1月", "place":"李四"},
			{ "id":"6" , "ids":"A006",  "name":"民航局培训营", "time":"2018年1月", "place":"王五"},
			{ "id":"7" , "ids":"A007",  "name":"民航局培训营", "time":"2018年1月", "place":"张三"},
	

	];
		var gridColumns_3_1_1 = [
			{id:'id', title:'序号', type:'number', columnClass:'text-center'},
			{id:'ids', title:'机构编码', type:'number', columnClass:'text-center'},
	     	{id:'name', title:'机构名称', type:'string', columnClass:'text-center'},
	     	{id:'time', title:'创建时间', type:'string', columnClass:'text-center'},
	     	{id:'place', title:'联系人', type:'string', columnClass:'text-center'},
	      	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center',width:'200'
	      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
				        var content = ''; 	                     			
				        content += '<a href="<a href="<%=path %>/pages/pre-plancultivate/updateCultivate.jsp"><button class="sbtn sbtn-default" >修改</button></a>'; 	                     			
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
		                     	check : true,
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