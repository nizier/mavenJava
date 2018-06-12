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
<a href="#">青岛机场安全管理</a> 
<i class="fa fa-angle-right"></i>
</li>
<li>
<a href="#">业务资源可视化</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">值班管理</a></li>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<ul id="myTab" class="nav nav-tabs">
    <li class="active"><a href="dutyPeopleList.jsp" >
            人员管理</a>
    </li>
    <li class="active"><a href="sectorManagement.jsp"  data-toggle="tab">部门管理</a></li>
     <li class="active"><a href="rota.jsp">
            排班管理</a>
    </li>
    <li class="active"><a href="changeShifts.jsp">交接班管理</a></li>
</ul>
<div class="row">
    <div class="col-md-3">
       <div class="portlet blue-hoki box">
                            
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>共10个部门								
								</div>
							</div>
							
							<div class="portlet-body">
							
								<div id="setree" class="tree-demo"></div>
							</div>
    	</div>
    </div>
   <div class="col-md-9" id="content_1">
       <ul id="myTab" class="nav nav-tabs">
    <li class="active"><a href="#info" data-toggle="tab">
            部门信息</a>
    </li>
    <li><a href="#allpeople" data-toggle="tab">部门人员信息</a></li>
    <li class="dropdown">
        <a href="#" id="myTabDrop1" class="dropdown-toggle"
           data-toggle="dropdown">操作<b class="caret"></b>
        </a>
        <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
            <li><a href="#add" tabindex="-1" data-toggle="tab">
                    新增部门</a>
            </li>
        </ul>
    </li>
</ul>
<div id="myTabContent" class="tab-content">
    <div class="tab-pane fade in active" id="info">
           <div id="policehold_210" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_210" class="dlshouwen-grid-toolbar-container"></div>
    </div>
    <div class="tab-pane fade" id="allpeople">
        <div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
        <div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
        
        
       
</div>
      
  
    <div class="tab-pane fade" id="add">
        <div  id="content_1">
						<div class="portlet box blue-hoki">
						
<div class="portlet-body form">
                    <form id="form1" class="form-horizontal" role="form" action="#" enctype="multipart/form-data"  method="post">
									<div class="form-body">
										<div class="form-group">
											<label class="col-md-3 control-label">部门名字<span class="required">* </span></label>
											<div class="col-md-6">
												<input  type="text" class="form-control" placeholder="部门名字">
											</div>
											
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">电话<span class="required">* </span></label>
											<div class="col-md-6">
												<input  type="text" class="form-control" placeholder="电话">
											</div>
											
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">传真<span class="required">* </span></label>
											<div class="col-md-6">
												<input  type="text" class="form-control" placeholder="传真">
											</div>
										
										</div>
										
									
										<div class="form-group">
											<label class="col-md-3 control-label">负责人<span class="required">* </span></label>
											<div class="col-md-6">
												<input  class="form-control" placeholder="负责人"/>
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-3 control-label">是否分公司<span class="required">* </span></label>
											<div class="col-md-6">
													<input  type="radio" name="r" value="是" checked>是
												<input  type="radio" name="r" value="不是">不是
											</div>
											
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">分公司负责人</label>
											<div class="col-md-6">
												<input  class="form-control" placeholder="分公司负责人"/>
											</div>
										</div>	
										</div>																			
										<div>
										<div class="row">
											<div class="col-md-offset-5 col-md-9">
												<button type="submit" class="sbtn sbtn-blue sbtn30">
												保存
												</button>
												
											</div>
										</div>
									</div>
									
								</form>
								</div>
								
						</div>
					</div>
    </div>
       </div>
</div>
<script>
    $(function () {
        $('#myTab li:eq(0) a').tab('show');
    });
</script>
       
	</div>
					
				</div>
				</div>
				</div>
		
		
<script type="text/javascript" src="<%=path %>/businessJs/sectormanagementJstree.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	var datas = [
{ "id":"A001" , "name":"张三","part":"人力资源部"},
{ "id":"A002" , "name":"李四","part":"人力资源部"},
{ "id":"A003" , "name":"张三","part":"人力资源部"},
{ "id":"A004" , "name":"李四","part":"人力资源部"},
{ "id":"A005" , "name":"张三","part":"人力资源部"},
{ "id":"A006" , "name":"李四","part":"人力资源部"},
{ "id":"A007" , "name":"张三","part":"人力资源部"},
{ "id":"A008" , "name":"张三","part":"人力资源部"},
{ "id":"A009" , "name":"李四","part":"人力资源部"},
{ "id":"A010" , "name":"李四","part":"人力资源部"},

];
	var gridColumns_2_1_1 = [
                            {id:'photo', title:'照片', type:'string', columnClass:'text-center'
                            	, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
                  			        var content = ''; 	                     			
                  			        content += '<a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a>'; 	                     			
                  			        	   
                  			        return content;                     			
                  			    }			
                             },
	                     	{id:'id', title:'员工编号', type:'number', columnClass:'text-center'},
	                     	{id:'name', title:'员工名称', type:'string', columnClass:'text-center'},
	                     	{id:'part', title:'员工部门', type:'string', columnClass:'text-center'},
 	                     	
	                     ];
	                     var gridOption_2_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
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
	                  
 
var datainfo = [
{ "id":"A001" , "name":"人力资源部","people":"张三","phone":"0537-11223"},
{ "id":"A002" , "name":"行政部","people":"李四","phone":"0537-11223"},
{ "id":"A003" , "name":"质量技术部","people":"张三","phone":"0537-11223"},
{ "id":"A004" , "name":"财务部","people":"李四","phone":"0537-11223"},
{ "id":"A005" , "name":"客服部","people":"张三","phone":"0537-11223"},

];
	var gridColumns_2_1_0 = [
                            {id:'name', title:'部门名称', type:'string', columnClass:'text-center'},
	                     	{id:'phone', title:'电话', type:'number', columnClass:'text-center'},
	                     	{id:'cz', title:'传真', type:'string', columnClass:'text-center'},
	                     	{id:'people', title:'负责人', type:'string', columnClass:'text-center'},
	                     	{id:'part', title:'是否分公司', type:'string', columnClass:'text-center'
	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
                  			        var content = ''; 	                     			
                  			        content += '<a href="#">不是</a>'; 	                     			
                  			      
                  			          
                  			        return content;      
	                     		}	
	                     	},
	                     	{id:'partpeople', title:'分公司负责人', type:'string', columnClass:'text-center'
	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
                  			        var content = ''; 	                     			
                  			                       			          
                  			        return content;      
	                     		}	
	                     	},
	                     	{id:'czuo', title:'操作', type:'string', columnClass:'text-center'
	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
                  			        var content = ''; 	                     			
                  			        content += '<a href="#"><button class="sbtn sbtn-default" data-toggle="modal" data-target="#myModal">编辑</button></a>'; 	                     			
                  			        content += '  ';	                     			
                  			        content += '<a onclick="fn();"><button  class="sbtn sbtn-blue">删除</button></a>'; 
                  			          
                  			        return content;      
	                     		}
	                     	},
	                     ];
	                     var gridOption_2_1_0 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datainfo,
	                     	columns : gridColumns_2_1_0,
	                     	gridContainer : 'policehold_210',
	                     	toolbarContainer : 'police_210',
	                     	tools : '',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_2_1_0 = $.fn.dlshouwen.grid.init(gridOption_2_1_0);
    	                     $(function(){
    	                     	grid_2_1_0.load();
    	                     });
	                  
 });
 $(document).ready(function(){
	
 });
 
</script>		
		
	
	
</body>
</html>