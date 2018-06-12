<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>新增救援人员</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet" href="<%=path %>/css/pilotcockpit.css" />
<link rel="stylesheet" href="<%=path %>/css/pagebar.css" />
<style>
.portlet.box.blue-hoki > .portlet-title {
    background-color: #67809f;
}
</style>
</head>
<body>
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">应急救援管理系统</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">应急救援队伍管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">新增救援人员信息</a></li>
		</ul>
	</div>
	<div class="page-container" style="padding-left: 0px;">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<div id="content_1">
					<div class="portlet box blue-hoki">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-th-list"></i>新增救援人员
							</div>
						</div>
						<div class="portlet-body form">
							<div class="form-body">
								<div class="form-group">
									<span class="col-md-6 control-label" style="margin-left: 35%; font-size: 25px; padding-top: 5px;  ">
									所属救援队伍 : <input type="text" class="form-control" value="消防救援队伍" readonly="readonly" style="font-size: 25px; width: 260px; height: 50px; display:inline;">
									</span>
									<!-- <div class="col-md-2">
										
									</div> -->
									<div style="margin-top: 30px">
								<!-- <span style="margin-left: -882px;margin-top:35px;font-size: 27px">添加救援队伍人员明细</span> -->
									</div>
								</div>
							</div>
						</div>		
								<!-- 以上是横线 -->
								
								<!-- 替换部分开始 -->
							<div class="row" style="margin-top: 5%;">
								<div class="col-md-3" style="width: 17%; margin-left: 2%;" >
									<div class="portlet blue-hoki box" >
										<div class="portlet-title">
											<div class="caption">
												<i class="fa fa-cogs"></i>人员所属单位管理								
											</div>
										</div>
										<div class="portlet-body">
											<div id="dptree" class="tree-demo"></div>
										</div>
							    	</div>
							    </div>
								<!--     航空器空中遇险应急处置预案 -->
								<div  class="col-md-9"  id="content_1" style="width:80%;padding-left: 4px; " >
									<div class="portlet box blue-hoki">
										<div class="portlet-title">
											<div class="caption"  id="title">
												<i class="fa fa-th-list"></i>应急救援队伍管理
											</div>
										</div>
										<div class="portlet-body form" style="width:100%;"> 						
											<form class="form-inline" style="margin:10px 0px 10px 10px;"  name="" method="post">	
									            <div class="form-group" style="line-height: 50px;margin-top:-8px">人员名称：
									            	<input type="text" class="form-control" id="projectName" placeholder="请输入人员名称" >
									            </div>
									            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i>  查询
									            </button>
											</form>
										</div>
											
										<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
										<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
									</div>
								</div>
								<!-- <div class="modal fade" id="addHuman" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div> -->
							</div>
					</div>
				</div>
			<!--start modal-->
			<!--end modal-->
			</div>
		</div>
	</div>
	<!-- <span style="margin-left: 8%; font-size: 35px;">添加救援队伍人员表</span> -->
	<!-- <div class="col-md-12" style="background-color:#234377; height:2px;"></div> -->
	<div  class="col-md-3"></div>
	<div  class="col-md-9" style="margin-left: 19%; width: 80%;">
		<div class="portlet box blue-hoki">
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-th-list"></i>添加救援队伍人员表								
				</div>
			</div>
			<div id="rescuetable" class="dlshouwen-grid-container" style="margin-top:5px; "></div>
			<div id="rescue" class="dlshouwen-grid-toolbar-container" style="margin-bottom: 2%;"></div>
		</div>
	</div>
	<div class="col-md-12">
		<button id="return" class="sbtn sbtn-blue" style="margin-left: 55%; display: block; width: 100px; margin-bottom: 2%;" onclick="jumpPage()" >返回</button>
		<button id="save" class="sbtn sbtn-blue" style="margin-left: 50%; display: none; width: 100px; margin-bottom: 2%;" onclick="jumpPage()" >保存</button>
		<button id="cancel" class="sbtn sbtn-blue" style="margin-left: 8%; display: none; width: 100px; margin-bottom: 2%;" onclick="jumpPage()">取消</button>
	</div>
	<script  type="text/javascript" src="<%=path %>/businessJs/knowledge.js"></script>
	
	<script type="text/javascript">
	
	var datas = [
		{  "ids":"1","id":"001" , "name":"张三","phone":"15000000000","status":"2018/11/11","level":"安检","ooo":"暂无"},
		{  "ids":"2","id":"002" , "name":"李四","phone":"15000000000","status":"2018/11/11","level":"护卫","ooo":"暂无"},
		{  "ids":"3","id":"003" , "name":"周五","phone":"15000000000","status":"2018/11/11","level":"安检","ooo":"暂无"},
		{  "ids":"4","id":"004" , "name":"马六","phone":"15000000000","status":"2018/11/11","level":"护卫","ooo":"暂无"},
		{  "ids":"5","id":"005" , "name":"宋七","phone":"15000000000","status":"2018/11/11","level":"安检","ooo":"暂无"},
		{  "ids":"6","id":"006" , "name":"晁八","phone":"15000000000","status":"2018/11/11","level":"护卫","ooo":"暂无"}
	];
	var gridColumns_2_1_1 = [
							{id:'ids', title:'序号', type:'number', columnClass:'text-center'},
	                     	{id:'id', title:'人员编号', type:'number', columnClass:'text-center'},
	                     	{id:'name', title:'姓名', type:'string', columnClass:'text-center',
	                     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
	                		        var content = ''; 	                     			                     			
	                		        content += '<a href="<%=path %>/pages/pre-personnel/lookUpdatePerxonnel.jsp">'+value+'</a>'; 
	                		        return content;                     			
	                		    }},
	                     	{id:'phone', title:'电话', type:'string', columnClass:'text-center'},
	                     	{id:'level', title:'部门', type:'string', columnClass:'text-center'},
	                     	{id:'status', title:'操作', type:'string', columnClass:'text-center', 
	                     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
	            		        var content = ''; 	                     			
	            		        content += '<button class="sbtn sbtn-blue" id=""  onclick=addPerson("'
	            		        	+ record.ids+'","'+ record.id+'","'+record.name+'","'+record.phone+'","'+record.level
	                                + '");>添加至救援队伍</button>'; 	
	            		        return content;                     			
	            	      		}
	                     	}
	                     ];
	                     var gridOption_2_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	check : false,
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

/**
 * 选择添加救援人员列表
 */
	var shujv = [];
	var params = [];
	
	var rescueGridColumns = [
							{id:'ids', title:'序号', type:'number', columnClass:'text-center'},
	                     	{id:'id', title:'人员编号', type:'number', columnClass:'text-center'},
	                     	{id:'name', title:'姓名', type:'string', columnClass:'text-center',
	                     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
	                		        var content = ''; 	                     			                     			
	                		        content += '<a href="<%=path %>/pages/pre-personnel/lookUpdatePerxonnel.jsp">'+value+'</a>'; 
	                		        return content;                     			
	                		    }},
	                     	{id:'phone', title:'电话', type:'string', columnClass:'text-center'},
	                     	{id:'level', title:'部门', type:'string', columnClass:'text-center'},
	                     	{id:'status', title:'操作', type:'string', columnClass:'text-center', 
	                     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
	            		        var content = ''; 	                     			
	            		        content += '<button class="sbtn sbtn-blue" id=""  onclick=cancelPerson("'
	            		        	+ record.id+'","'+record.name+'","'+record.phone+'","'+record.level
	                                + '");>取消</button>'; 	
	            		        return content;                     			
	            	      		}
	                     	}
	                     ];
	                     var rescueGridOption = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : shujv,
	                     	check : false,
	                     	columns : rescueGridColumns,
	                     	gridContainer : 'rescuetable',
	                     	toolbarContainer : 'rescue',
	                     	tools : null,
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
	                     var grid = $.fn.dlshouwen.grid.init(rescueGridOption);
    	                     $(function(){
    	                    	 grid.load();
    	                     });
    	                     /**
    	                      * 添加人员列表  添加方法
    	                      */
    	                     function addPerson(ids,id,name,phone,level){
    	                    	/* alert(ids+"--"+id+"--"+name+"--"+phone+"--"+level); */
    	                    	// 添加人员(救援队伍)列表
    	                 		var params = {};
    	                 		params.ids = shujv.length+1;
    	                 		params.id = id;
    	                 		params.name = name;
    	                 		params.phone = phone;
    	                 		params.level = level;
    	                 		shujv.push(params)
    	                 		$("#return").hide();
    	                 		
    	                 		$("#save").show();
    	                 		$("#cancel").show();
    	                 		grid.load();
    	                 		console.log(shujv);
    	                 		// 删除人员列表
    	                 		for (var i = 0; i < datas.length; i++) {
    	                 			datas[i].ids = i+1;
    	                    		if(datas[i].id === id){
    	                    			datas.splice(i, 1);
        	                    		i -= 1;
    	                    		}
								}
    	                 		grid_2_1_1.load();
    	                 	 }
    	                     /**
    	                      * 添加人员列表  删除方法
    	                      */
    	                    function cancelPerson(id,name,phone,level){
    	                    	 // 删除添加人员（救援队伍）列表数据
    	                    	for (var i = 0; i < shujv.length; i++) {
    	                    		shujv[i].ids = i+1;
    	                    		if(shujv[i].id === id){
    	                    			shujv.splice(i, 1);
        	                    		i -= 1;
    	                    		}
								}
    	                    	if (shujv.length === 0) {
    	                    		$("#return").show();
    	                    		$("#save").hide();
        	                 		$("#cancel").hide();
								}
    	                    	grid.load();
    	                    	
    	                    	// 添加人员列表数据
    	                    	// 添加人员列表
    	                    	var flag  = true;
    	                    	for (var i = 0; i < datas.length; i++) {
									if(datas[i].id === id){
										flag = false;
									}
								}
    	                    	if (flag) {
    	                    		var params = {};
        	                 		params.ids = datas.length+1;
        	                 		params.id = id;
        	                 		params.name = name;
        	                 		params.phone = phone;
        	                 		params.level = level;
        	                 		datas.push(params)
        	                 		grid_2_1_1.load();
								}
    	                    }
    	                    /**
   	                      	* 跳转返回上一个页面
   	                      	*/
    	                    function jumpPage(){
    	                    	window.history.back(-1); 
    	                    }
</script>	
	
</body>
</html>