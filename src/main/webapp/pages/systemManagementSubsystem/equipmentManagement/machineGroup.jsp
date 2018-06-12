<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>设备分组授权</title>
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
<a href="#">设备管理</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">设备分组授权</a></li>
</ul> 
</div>
<div class="page-container">
<div class="page-content-wrapper">
<div class="page-content">
<div class="row">
    <div class="col-md-3">
       <div class="portlet blue-hoki box">
			<div class="portlet-title">
			<div class="caption">
			<i class="fa fa-cogs"></i>角色组织树														
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
			<div class="caption" id="title">
				<i class="fa fa-th-list"></i>全部分类信息
			</div>
<!-- class="actions" -->					
		</div>								
	<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top: 0px"></div>
	<div id="police_211" class="dlshouwen-grid-toolbar-container" ></div>
</div>
</div>
</div>
</div>
</div>
</div>
<%-- <script type="text/javascript" src="<%=path %>/js/deviceJstreeManage.js"></script>  --%>
<script type="text/javascript">
$(document).ready(function() {	
	var datas = [
{ "id":"1" , "name":"超级管理员","function":"视频监控调用，查看实时图像，系统配置的更改"},																			
{ "id":"2" , "name":"管理员","function":"视频监控调用"},
{ "id":"3" , "name":"测试员","function":"视频监控调用"},
{ "id":"4" , "name":"安保员","function":"查看实时图像"},];
	 var tree = $('#tree_2').jstree({
			"core" : {
				"themes" : {
					"responsive" : false
				},
				"check_callback" : true,
	            'data' : [
	                      {
	                    	'id':'0',
	                      	'text' : '角色分类', 
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
	            	'text' : '超级管理员', 
	                //'url' : ,
	                'dataType': 'JSON',
	                'data' : function (node) {
	                	return { 'id' : node.id};
	                },
	                'state' : {
	      	           'opened' : true,
	      	           'selected' :false
	      	         },
	                'children' :null
	            },
	            {
	            	'id':'2',
	            	'text' : '管理员 ', 
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
	            	'id':'3',
	            	'text' : '测试员', 
	                //'url' : ,
	                'dataType': 'JSON',
	                'data' : function (node) {
	                	return { 'id' : node.id};
	                },
	                'state' : {
	      	           'opened' : true,
	      	           'selected' :false
	      	         },	      	         
	                'children' :null
	            },
	            {
	            	'id':'4',
	            	'text' : '安保员', 
	                //'url' : ,
	                'dataType': 'JSON',
	                'data' : function (node) {
	                	return { 'id' : node.id};
	                },
	                'state' : {
	      	           'opened' : true,
	      	           'selected' :false
	      	         },	      	         
	                'children' :null
	            }	           	      	                                
	            ]
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
	 var ref = $('#tree_2').jstree(true);		
		// 树加载完毕后设置节点状态
		$('#tree_2').on('ready.jstree', function(e, data) {
			var openNodeId = "${param.node}";
			if(openNodeId == ""){
				openNodeId = "0";
			}
			var sel = ref.get_node(openNodeId);
			ref.select_node(sel);
			ref.open_node(sel);});	
	var gridColumns_2_1_1 = [
     	{id:'id', title:'序号', type:'number', columnClass:'text-center'},
     	{id:'name', title:'角色名称', type:'string', columnClass:'text-center'},
     	{id:'function', title:'功能', type:'string',style:'width:10px;', columnClass:'text-center'},   	                     	
      	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
 			        var content = ''; 	                     			
 			        content += '<a href="#"><button class="sbtn sbtn-default">授权</button></a>'; 	                     			
 			        content += '  ';	                     			
 			        content += '<a onclick="fn();"><button  class="sbtn sbtn-blue">删除</button></a>'; 	                     			
 			        return content;                     			
 			    }}];
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
 	//给树绑定事件
     $('#tree_2').on('changed.jstree',function(e,data){
    	 //当前选中节点的文本值
            var value = data.instance.get_node(data.selected[0]).text;   	 
    	    var html='';
    	    if(value=="角色分类"){
                html+='<i class="fa fa-th-list"></i>全部分类信息';	                    	    	
    	    	$('#title').html(html);
    	    }
    	    else if(value=="超级管理员"){
    	    	html+='<i class="fa fa-th-list"></i>超级管理员';	                    	    	
    	    	$('#title').html(html);
            }
            else if(value=="管理员"){
            	html+='<i class="fa fa-th-list"></i>管理员';	                            
    	    	$('#title').html(html);
            }else if(value=="测试员"){	                            	 
            	html+='<i class="fa fa-th-list"></i>测试员';	                            
    	    	$('#title').html(html);
            }else if(value=="安保员"){
            	html+='<i class="fa fa-th-list"></i>安保员';	            
    	    	$('#title').html(html);   	    	 
            } 
        });
 });
$(".syn").click(function(){
	confirm("是否同步摄像头？");
});
function fn(){
	  confirm("是否删除？");
}
function sub(){
	location.href="#";
}

</script>				
</body>
</html>