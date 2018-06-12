<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>Insert title here</title>
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
<a href="#">设备可视化</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">设备资源分类树管理</a></li>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
    <div class="col-md-3">
       <div class="portlet blue-hoki box">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>设备分类树																
								</div>
								
							</div>
							<div class="portlet-body">
								<div id="tree_2" class="tree-demo"></div>
							</div>
    	</div>
    </div>
   <div class="col-md-9" id="content_1">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>二级目录信息
								</div>
<!-- 							    <div style="margin-left:79%;margin-top:4px;width:250px;"> -->
<!-- 								    <button type="button" data-toggle="modal" data-target="#addChild" class="sbtn sbtn-default">添加子节点</button> -->
<!-- 								     <a href="treeManage.jsp" style="padding-left:5px;"><button class="sbtn sbtn-default">返回上级目录</button></a> -->
<!-- 								</div> -->
                                    <div  style="float: right;padding: 3px 0px;margin-left: 5px;">
				<a href="treeManage.jsp"><button type="button"  onclick="javascript:window.location.href='#'"
					class="sbtn sbtn-default">返回上级目录</button></a>
			</div>

			<div  style="float: right;padding: 3px 0px;">
				<button type="button"  data-toggle="modal" data-target="#addChild"
					class="sbtn sbtn-default">添加子节点</button>
			</div>
							</div>
							<div class="portlet-body form"> 
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	<div class="form-group">
	    <span>目录名称：</span>
	    <input type="text" class="form-control" id="name" placeholder="目录名称">
  	</div>
	<div class="form-group" style="margin-left:30px;">
    	<button type="submit" class="sbtn sbtn-blue">查询</button>
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
<!-- 				添加子节点 -->
			<div class="modal fade bs-example-modal-sm" id="addChild" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:500px;height:500px;">
        <div class="modal-content">
            <div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>添加子节点
								</div>
								
							</div>
							<div class="portlet-body form" style="margin-top:30px;"> 
						          <form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="firstname" class="col-sm-4 control-label">目录名称</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="firstname" placeholder="请输入目录名称">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-4 control-label">目录编号</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="lastname" placeholder="请输入目录编号">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-4 control-label">目录级别</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="lastname" placeholder="请输入目录级别">
    </div>
  </div>
</form>
                            </div>
							
						</div>
           <div class="form-group">
      <div style="margin-left:35%;">
            <button type="button" class="sbtn sbtn-blue">保存</button>
            <button style="margin-left:45px;" type="button" class="sbtn sbtn-default" data-dismiss="modal">取消</button>
      </div>
  </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- 编辑 -->
	<div class="modal fade bs-example-modal-sm" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:500px;height:500px;">
        <div class="modal-content">
            <div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>编辑节点信息
								</div>
							</div>
							<div class="portlet-body form" style="margin-top:30px;"> 
						          <form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="firstname" class="col-sm-4 control-label">目录名称</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="firstname" placeholder="车辆存放点">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-4 control-label">目录编号</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="lastname" placeholder="01">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-4 control-label">目录级别</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="lastname" placeholder="二级">
    </div>
  </div>
</form>
                            </div>
							
						</div>
           <div class="form-group">
      <div style="margin-left:35%;">
            <button type="button" class="sbtn sbtn-blue">保存</button>
            <button style="margin-left:45px;" type="button" class="sbtn sbtn-default" data-dismiss="modal">取消</button>
      </div>
  </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
				<script type="text/javascript" src="<%=path %>/js/deviceJstreeManage.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	var datas = [
{ "id":"1" , "name":"车辆存放点","level":"二级目录","pre":"根目录"},
{ "id":"2" , "name":"安防系统","level":"二级目录","pre":"根目录"},
{ "id":"3" , "name":"物资存放点","level":"二级目录","pre":"根目录"},
{ "id":"4" , "name":"安全资源","level":"二级目录","pre":"根目录"},
];

    var tree = $('#tree_1').jstree({
		"core" : {
			"themes" : {
				"responsive" : false
			},
			"check_callback" : true,
            'data' : [
                      {
                    	'id':'0',
                      	'text' : '设备资源分类树', 
                          //'url' : ,
                          'dataType': 'JSON',
                          'data' : function (node) {
                          	return { 'id' : node.id};
                          },
                          'state' : {
                	           'opened' : true,
                	           'selected' : false
                	         },
                	         
                          'children' : [
                                                   
            {
            	'id':'1',
            	'text' : '车辆存放点', 
                //'url' : ,
                'dataType': 'JSON',
                'data' : function (node) {
                	return { 'id' : node.id};
                },
                'state' : {
      	           'opened' : true,
      	           'selected' : false
      	         },
      	         
                'children' : null
            },
            {
            	'id':'2',
            	'text' : '安防系统', 
                //'url' : ,
                'dataType': 'JSON',
                'data' : function (node) {
                	return { 'id' : node.id};
                },
                'state' : {
      	           'opened' : true,
      	           'selected' :false
      	         },
      	         
                'children' :[
                             
                             {
                            	 'id':'1',
                            	 'text' : '视频监控系统' ,
                            	 'children' :null	
                             
                             },
                             {    'id':'2',
                            	 'text' : '门禁系统',
                            	 'children' :null	
                             },
                             {   'id':'3',
                            	 'text' :'围界系统',
                               'children' :null	
                             },
                             {    'id':'4',
                            	 'text' :'道口系统',
                               'children' :null	
                             }
                         ]
            },
            {
            	'id':'3',
            	'text' : '物资存放点', 
                //'url' : ,
                'dataType': 'JSON',
                'data' : function (node) {
                	return { 'id' : node.id};
                },
                'state' : {
      	           'opened' : true,
      	           'selected' : false
      	         },
      	         
                'children' : null
            },
            {
            	'id':'4',
            	'text' : '安全资源', 
                //'url' : ,
                'dataType': 'JSON',
                'data' : function (node) {
                	return { 'id' : node.id};
                },
                'state' : {
      	           'opened' : true,
      	           'selected' :false
      	         },
      	         
                'children' :[
                            {   'id':'1',
                            	'text' : '灭火器' ,
                            	'children' :null           	
                            }
                            ]
            }]
                      }
            ]
		},
		"types" : {
			"default" : {
				"icon" : "fa fa-folder icon-state-warning icon-lg"
			},
			"file" : {
				"icon" : "fa fa-file icon-state-warning icon-lg"
			}
		},
		"plugins" : ["types" ] 
	});
	
	var ref = $('#tree_1').jstree(true);
	
	// 树加载完毕后设置节点状态
	$('#tree_1').on('ready.jstree', function(e, data) {
		var openNodeId = "${param.node}";
		if(openNodeId == ""){
			openNodeId = "0";
		}
		var sel = ref.get_node(openNodeId);
		ref.select_node(sel);
		ref.open_node(sel);	
	});
	
	var gridColumns_2_1_1 = [
	                     	{id:'id', title:'编号', type:'number', columnClass:'text-center'},
	                     	{id:'name', title:'名称', type:'string', columnClass:'text-center'},
	                     	{id:'level', title:'级别', type:'string', columnClass:'text-center'},
	                     	{id:'pre', title:'上级目录', type:'string', columnClass:'text-center'},
	                     	{id:'next', title:'下级目录', type:'string',  columnClass:'text-center'
	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
                  			        var content = ''; 	                     			
                  			      content +='<a href="subordinateDirectory.jsp"><button class="sbtn sbtn-default" id="next">进入下级目录</button></a>'; 	                     			                			  
                  			        return content;                     			
                  			    }			
	                     	
	                     	},
 	                     	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
 	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
                  			        var content = ''; 	                     			
                  			        content += '<button class="sbtn sbtn-default" data-toggle="modal" data-target="#edit">编辑</button>'; 	                     			  
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
</script>		
		
</body>
</html>