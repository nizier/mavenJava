<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>Insert title here</title>
<style>
/* .right-blank { */
/*     padding-right: 10px; */
/* } */
/* .clear { */
/*     padding: 0; */
/*     margin: 0; */
/* } */
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
<a href="#">配置管理</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">预案管理</a></li>
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
			<i class="fa fa-cogs"></i>预案组织树														
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
					<div style="margin-left:88%;padding-top:4px;">
						<button type="button" class="sbtn sbtn-default" onclick="sub()">新增预案</button>
<!-- <a href="addDevice.jsp" class="btn yellow-crusta btn-sm add"> <i class="fa fa-plus"></i> 新增</a> -->
<!-- <a href="#" class="btn yellow-crusta btn-sm syn">同步摄像头 </a> -->
					</div>
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
	
	/**
		{id:'id', title:'序号', type:'number', columnClass:'text-center'},
     	{id:'name', title:'预案名称', type:'string', columnClass:'text-center'},
     	{id:'type', title:'预案类型', type:'string',style:'width:10px;', columnClass:'text-center'},
     	{id:'versions', title:'版本', type:'string',  columnClass:'text-center'},
     	{id:'time', title:'上传时间', type:'string',  columnClass:'text-center'},
      	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
      		, resolution:function(value, record, column, grid, dataNo, columnNo)
	**/
	
	
	var datas = [
{ "id":"1" , "name":"综合技能预案","type":"部门总体预案","versions":"1.0","time":"2017-08-02"},																			
{ "id":"2" , "name":"预案测试","type":"部门总体预案","versions":"2.0","time":"2017-08-03"},
{ "id":"3" , "name":"综合预案","type":"部门总体预案","versions":"1.2","time":"2017-07-31"},
{ "id":"4" , "name":"综合演练预案","type":"部门总体预案","versions":"2.0","time":"2017-07-24"},
{ "id":"5" , "name":"综合测试预案","type":"部门总体预案","versions":"1.0","time":"2017-07-30"},

];
	 var tree = $('#tree_2').jstree({
			"core" : {
				"themes" : {
					"responsive" : false
				},
				"check_callback" : true,
	            'data' : [
	                      {
	                    	'id':'0',
	                      	'text' : '机场公安', 
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
	                                                   
//	            {
//	            	'id':'1',
//	            	'text' : '车辆存放点', 
//	                //'url' : ,
//	                'dataType': 'JSON',
//	                'data' : function (node) {
//	                	return { 'id' : node.id};
//	                },
//	                'state' : {
//	      	           'opened' : true,
//	      	           'selected' : false
//	      	         },
//	      	         
//	                'children' : null
//	            },
	            {
	            	'id':'1',
	            	'text' : '部门总体预案', 
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
	            	'text' : '分项预案', 
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
	            	'text' : '专项预案', 
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
	            	'text' : '岗位预案', 
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
	            	'id':'5',
	            	'text' : '保障方案', 
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
			ref.open_node(sel);	
		});
	
	var gridColumns_2_1_1 = [
     	{id:'id', title:'序号', type:'number', columnClass:'text-center'},
     	{id:'name', title:'预案名称', type:'string', columnClass:'text-center'},
     	{id:'type', title:'预案类型', type:'string',style:'width:10px;', columnClass:'text-center'},
     	{id:'versions', title:'版本', type:'string',  columnClass:'text-center'},
     	{id:'time', title:'上传时间', type:'string',  columnClass:'text-center'},
      	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
 			        var content = ''; 	                     			
 			        content += '<a href="editYuAn.jsp"><button class="sbtn sbtn-default">编辑</button></a>'; 	                     			
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

     
 	//给树绑定事件
     $('#tree_2').on('changed.jstree',function(e,data){
    	 //当前选中节点的文本值
            var value = data.instance.get_node(data.selected[0]).text;
    	 	$("#eq").val(value);
    	    var html='';
    	    if(value=="机场公安"){
                html+='<i class="fa fa-th-list"></i>全部分类信息';	                    	    	
    	    	$('#title').html(html);
    	    }
    	    else if(value=="部门总体预案"){
    	    	html+='<i class="fa fa-th-list"></i>部门总体预案';	                    	    	
    	    	$('#title').html(html);
            }
            else if(value=="分项预案"){
            	html+='<i class="fa fa-th-list"></i>分项预案';	                            
    	    	$('#title').html(html);
            }else if(value=="专项预案"){	                            	 
            	html+='<i class="fa fa-th-list"></i>专项预案';	                            
    	    	$('#title').html(html);
            }else if(value=="岗位预案"){
            	html+='<i class="fa fa-th-list"></i>岗位预案';	            
    	    	$('#title').html(html);
    	    	 
            } else if(value=="保障方案"){	                    	  
    	    	html+='<i class="fa fa-th-list"></i>保障方案';	                    	    	
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
	location.href="addYuAn.jsp";
}

</script>				
</body>
</html>