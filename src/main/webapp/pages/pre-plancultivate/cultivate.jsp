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
<li><a href="#">培训方案管理</a></li>
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
									<i class="fa fa-th-list"></i>应急培训方案管理
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 
<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                方案名称：<input type="text" class="form-control" id="projectName" placeholder="请输入方案名称">
            </div>
            <button type="submit" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
           
             <button type="button" id="resetBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            删除</button>
            <button type="button" id="updates" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            编辑</button>
             <a href="<%=path %>/pages/pre-plancultivate/addCultivate.jsp"><button type="button" id="updates" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px " 
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
                 方案名称：<input type="text" class="form-control" id="projectName" placeholder="请输入方案名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px">
            新增</button>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:4px ">
            删除</button>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:4px ">
            编辑</button>
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
		{ "id":"1" , "ids":"01培训营", "name1":"32时","idso":"A001", "name":"常识培训","plan":"2018/11/1","name2":"日常常识培训"},
		{ "id":"2" , "ids":"01培训营","name1":"32时","idso":"A001",  "name":"场务培训","plan":"2018/11/1","name2":"日常常识培训"},
		{ "id":"3" , "ids":"01培训营","name1":"32时", "idso":"A001", "name":"礼仪培训","plan":"2018/11/1","name2":"日常常识培训"},
		{ "id":"4" , "ids":"01培训营","name1":"32时", "idso":"A001", "name":"应急措施培训","plan":"2018/11/1","name2":"日常常识培训"},
		{ "id":"5" , "ids":"01培训营","name1":"32时","idso":"A001",  "name":"岗位业务培训","plan":"2018/11/1","name2":"日常常识培训"},
		{ "id":"6" , "ids":"01培训营","name1":"32时" ,"idso":"A001", "name":"安全教育培训","plan":"2018/11/1","name2":"日常常识培训"},
		{ "id":"7" , "ids":"01培训营","name1":"32时", "idso":"A001", "name":"团队协作培训","plan":"2018/11/1","name2":"日常常识培训"},
];
	var gridColumns_2_1_1 = [
		{id:'id', title:'序号', type:'number', columnClass:'text-center',width:'100'},
		{id:'ids', title:'机构名称', type:'number', columnClass:'text-center'},
		{id:'idso', title:'培训课程编号', type:'number', columnClass:'text-center'},
		{id:'name', title:'培训课程名称', type:'string', columnClass:'text-center',
     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = ''; 	                     			                     			
		        content += '<a href="<%=path %>/pages/pre-plancultivate/lookCultivate.jsp">'+value+'</a>'; 
		        return content;                     			
		    }},
		{id:'name2', title:'培训类别', type:'string', columnClass:'text-center'},
		{id:'name1', title:'学时', type:'string', columnClass:'text-center'},
     	{id:'plan', title:'更新时间', type:'string', columnClass:'text-center'}
      	<%-- {id:'caozuo', title:'操作', type:'string', columnClass:'text-center',width:'200'
      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
			        var content = ''; 	                     			
			        content += '<a href="<%=path %>/pages/pre-plancultivate/updateCultivate.jsp"><button class="sbtn sbtn-default" >修改</button></a>'; 	                     			
			        content += '  ';	                     			
			        content += '<a onclick="fn();"><button  class="sbtn sbtn-blue">删除</button></a>'; 
			          
			        return content;                     			
			    }		
      	}  --%>
     ];
	                     var gridOption_2_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	check : true,width:'100',
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
    	                 			window.location.href = "updateCultivate.jsp";
    	                 			<%-- <a href="<%=path %>/pages/pre-plancultivate/updateCultivate.jsp"><a/> --%>
    	                 		 }
    	                 	})
	                  
 });
  function fn(){
	  confirm("是否删除？");
  }
  function fns(){
	  confirm("报名成功");
  }
  function trees(){
	 
  }  
  $(document).ready(function() {
		
		var datas = [
	{ "id":"1" ,"ids":"A001", "name":"常识培训","time":"2018年1月","place":"北京","number":"55"},
	{ "id":"2" ,"ids":"A002", "name":"场务培训","time":"2018年1月","place":"上海","number":"40"},
	{ "id":"3" , "ids":"A003","name":"礼仪培训","time":"2018年1月","place":"广州","number":"20"},
	{ "id":"4" , "ids":"A004","name":"应急措施培训","time":"2018年1月","place":"深圳","number":"44"},
	{ "id":"5" , "ids":"A005","name":"岗位业务培训","time":"2018年1月","place":"长安","number":"5"},
	{ "id":"6" , "ids":"A006","name":"安全教育培训","time":"2018年1月","place":"贵阳","number":"11"},
	{ "id":"7" , "ids":"A007","name":"团队协作培训","time":"2018年1月","place":"洛阳","number":"111"},
	

	];
		var gridColumns_3_1_1 = [
			{id:'id', title:'序号', type:'number', columnClass:'text-center'},
			{id:'ids', title:'培训编号', type:'number', columnClass:'text-center'},
	     	{id:'name', title:'方案名称', type:'string', columnClass:'text-center'},
	     	{id:'time', title:'学时', type:'string', columnClass:'text-center'},
	     	{id:'place', title:'地点', type:'string', columnClass:'text-center'},
	     	{id:'number', title:'人数', type:'string', columnClass:'text-center'},
	      	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
	      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
				        var content = ''; 	                     			
				        content += '<a href="<%=path %>/pages/pre-plancultivate/updateCultivate.jsp"><button class="sbtn sbtn-default" >修改</button></a>'; 	                     			
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