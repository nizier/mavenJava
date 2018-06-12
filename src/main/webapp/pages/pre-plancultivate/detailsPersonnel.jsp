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
<a href="#">培训计划</a>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
  <!--   <div class="col-md-3" style="width: 18%">
       <div class="portlet blue-hoki box" >
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>部门树分类								
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
									<i class="fa fa-th-list"></i>应急培训计划管理
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 						
<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                计划名称：<input type="text" class="form-control" id="projectName" placeholder="请输入计划名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
          <!--   <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:4px ">
            批量删除</button> -->
             <%-- <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:20px ">
            删除</button>
            <a href="<%=path %>/pages/pre-plancultivate/updateCultivate.jsp"><button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:20px ">
            编辑</button></a>
             <a href="<%=path %>/pages/pre-plancultivate/addPlan.jsp"><button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right;margin-right: 15px;margin-top:20px" 
            >
            新增</button></a> --%>
        </form>
      
   	
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
									<i class="fa fa-th-list"></i>管理岗
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                计划名称：<input type="text" class="form-control" id="projectName" placeholder="请输入计划名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
           
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
		{ "id":"1" , "name":"常识培训","time1":"张三","time":"32", "place":"北京","number":"55","number1":"40"},
		{ "id":"2" , "name":"常识培训","time1":"李四","time":"32","place":"上海","number":"40","number1":"40"},
		{ "id":"3" , "name":"常识培训","time1":"王五","time":"32","place":"广州","number":"20","number1":"10"},
		{ "id":"4" , "name":"常识培训","time1":"赵六","time":"32","place":"深圳","number":"44","number1":"40"},
		{ "id":"5" , "name":"常识培训","time1":"张三","time":"32","place":"长安","number":"5","number1":"4"},
		{ "id":"6" , "name":"常识培训","time1":"李素","time":"32","place":"贵阳","number":"11","number1":"10"},
		{ "id":"7" , "name":"常识培训","time1":"万物","time":"32","place":"洛阳","number":"111","number1":"40"},


];
	var gridColumns_2_1_1 = [
     	{id:'id', title:'培训编号', type:'number', columnClass:'text-center'},
     	{id:'name', title:'培训课程名称', type:'string', columnClass:'text-center'},
     	{id:'time1', title:'培训人员', type:'string', columnClass:'text-center'},
     	{id:'time', title:'培训学时', type:'string', columnClass:'text-center'},
     	{id:'place', title:'培训地点', type:'string', columnClass:'text-center'},
     	{id:'number', title:'人数', type:'string', columnClass:'text-center'},
    	{id:'number1', title:'已报名人数', type:'string', columnClass:'text-center'}
      	
     ];
	                     var gridOption_2_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	//check : true,
	                     	columns : gridColumns_2_1_1,
	                     	gridContainer : 'policehold_211',
	                     	toolbarContainer : 'police_211',
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
  function trees(){
	 
  }  
  $(document).ready(function() {
		
		var datas = [
			{ "id":"1" , "name":"常识培训","time1":"张三","place":"北京","number":"55","number1":"40"},
			{ "id":"2" , "name":"场务培训","time1":"李四","place":"上海","number":"40","number1":"40"},
			{ "id":"3" , "name":"礼仪培训","time1":"王五","place":"广州","number":"20","number1":"10"},
			{ "id":"4" , "name":"应急措施培训","time1":"赵六","place":"深圳","number":"44","number1":"40"},
			{ "id":"5" , "name":"岗位业务培训","time1":"张三","place":"长安","number":"5","number1":"4"},
			{ "id":"6" , "name":"安全教育培训","time1":"李素","place":"贵阳","number":"11","number1":"10"},
			{ "id":"7" , "name":"团队协作培训","time1":"万物","place":"洛阳","number":"111","number1":"40"},
	

	];
		var gridColumns_3_1_1 = [
			{id:'id', title:'培训编号', type:'number', columnClass:'text-center'},
	     	{id:'name', title:'培训课程名称', type:'string', columnClass:'text-center'},
	     	{id:'time1', title:'培训人员', type:'string', columnClass:'text-center'},
	     	{id:'time', title:'培训学时', type:'string', columnClass:'text-center'},
	     	{id:'place', title:'培训地点', type:'string', columnClass:'text-center'},
	     	{id:'number', title:'人数', type:'string', columnClass:'text-center'},
	    	{id:'number1', title:'已报名人数', type:'string', columnClass:'text-center'}
	     ];
		                     var gridOption_3_1_1 = {
		                     	lang : 'zh-cn',
		                     	ajaxLoad : false,
		                     	exportFileName : '用户列表',
		                     	datas : datas,
		                     	//check : true,
		                     	columns : gridColumns_3_1_1,
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
 
</script>		
		
</body>
</html>