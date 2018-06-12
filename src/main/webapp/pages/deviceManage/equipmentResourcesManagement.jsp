<%@page  pageEncoding="UTF-8"%>
<%-- <%@include file="/pages/inc/header_jstree.jsp" %> --%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>${title }</title>
<!-- <link rel="shortcut icon" href="favicon.ico" /> -->
<%-- <link rel="stylesheet" href="<%=path %>/css/pilotcockpit.css" /> --%>
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
<li><a href="#">设备资源分类管理</a></li>
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
						<i class="fa fa-th-list"></i>全部分类信息
					</div>
<!-- class="actions" -->
					<div style="margin-left:92%;padding-top:4px;">
						<button type="button" class="sbtn sbtn-default" onclick="sub()">新增</button>
<!-- <a href="addDevice.jsp" class="btn yellow-crusta btn-sm add"> <i class="fa fa-plus"></i> 新增</a> -->
<!-- <a href="#" class="btn yellow-crusta btn-sm syn">同步摄像头 </a> -->
					</div>
				</div>			
<div class="portlet-body form"> 
	<form action="newAdd.jsp" id="equId" class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">
		<input type="hidden" name="equipment" id="eq" class="equip" value=""/>		
		<div class="form-group">
			   <span>设备名称：</span>
			   <input type="text" class="form-control" id="name" placeholder="设备名称">
		  </div>
		<div class="form-group" style="margin-left:30px;">
			<span>安装地址：</span>
				<input type="text" class="form-control" id="name" placeholder="安装地址">
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
<script type="text/javascript" src="<%=path %>/js/deviceJstreeManage.js"></script>
<script type="text/javascript">
$(document).ready(function() {	
	var datas = [
{ "id":"1" , "name":"网络高清摄像机","num":"A001","location":"T1航站楼值机口上方","description":"直接输出IP封装的视频流，还有很多带有红外补光灯附件"},																			
{ "id":"2" , "name":"室内枪机","num":"A002","location":"T2航站楼值机口上方","description":"固定摄像机，通常可另配镜头"},
{ "id":"3" , "name":"室外枪机","num":"A003","location":"T3航站楼值机口上方","description":"固定摄像机，通常可另配镜头"},
{ "id":"4" , "name":"室内球机","num":"A004","location":"T4航站楼值机口上方","description":"动点摄像机，可远程控制旋转、俯仰、拉近/推远（简称PTZ）"},
{ "id":"5" , "name":"室外球机","num":"A005","location":"T4航站楼值机口上方","description":"动点摄像机，可远程控制旋转、俯仰、拉近/推远（简称PTZ）"},
{ "id":"6" , "name":"半球","num":"A006","location":"T1出发大厅值机口上方","description":"固定摄像机，固定镜头；多用于室内"},
{ "id":"7" , "name":"视频管理服务器","num":"A007","location":"T2航站楼值机口上方","description":"配置、认证、授权、指令集中接受/发布"},
{ "id":"8" , "name":"视频流媒体服务器","num":"A008","location":"T3航站楼值机口上方","description":"视频流媒体的转发"},
{ "id":"9" , "name":"视频存储服务器","num":"A009","location":"T4航站楼值机口上方","description":"1）视频存储前置机  2）集数字视频存储、管理、转发服务于一身的小型综合设备"},
{ "id":"10" , "name":"视频存储设备","num":"A010","location":"T5航站楼值机口上方","description":"主要是San的磁盘阵列，现在开始引进云存储概念"},
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
                             
                             { 'id':'5','text' : '视频监控系统' ,
                            	 'children' :null	
                             
                             },
                             { 'id':'6','text' : '门禁系统',
                            	 'children' :null	
                             },
                             { 'id':'7','text' :'围界系统',
                               'children' :null	
                             },
                             { 'id':'8','text' :'道口系统',
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
                            { 'id':'9','text' : '灭火器' ,
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
     	{id:'id',width:30, title:'序号', type:'number', columnClass:'text-center'},
     	{id:'name', title:'设备名称', type:'string', columnClass:'text-center'},
     	{id:'num', title:'设备编号', type:'string',style:'width:10px;', columnClass:'text-center'},
     	{id:'location', title:'安装地址', type:'string',  columnClass:'text-center'},	                     	
     	{id:'description', title:'设备描述', type:'string',  columnClass:'text-center',
     		resolution:function(value, record, column, grid, dataNo, columnNo){
     			var len = value.length;
     			if(len > 12){
     				return  "<span title='" + value + "'>" + value.substring(0,12) + "&nbsp;...<span>";
     			}else{
     				return "<span title='" + value + "'>" + value + "<span>";
     			}
     		}
     	},
      	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
 			        var content = ''; 	                     			
 			        content += '<a href="editDevice.jsp"><button class="sbtn sbtn-default">编辑</button></a>'; 	                     			
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
	                    	    if(value=="设备资源分类树"){
                                    html+='<i class="fa fa-th-list"></i>全部分类信息';	                    	    	
	                    	    	$('#title').html(html);
	                    	    }
	                    	    else if(value=="车辆存放点"){
	                    	    	html+='<i class="fa fa-th-list"></i>车辆存放点';	                    	    	
	                    	    	$('#title').html(html);
	                            }
	                            else if(value=="安防系统"){
	                            	html+='<i class="fa fa-th-list"></i>安防系统';	                            
	                    	    	$('#title').html(html);
	                            }else if(value=="物资存放点"){	                            	 
	                            	html+='<i class="fa fa-th-list"></i>物资存放点';	                            
	                    	    	$('#title').html(html);
	                            }else if(value=="安全资源"){
	                            	html+='<i class="fa fa-th-list"></i>安全资源';	            
	                    	    	$('#title').html(html);
	                    	    	 
	                            } else if(value=="视频监控系统"){	                    	  
	                    	    	html+='<i class="fa fa-th-list"></i>视频监控系统';	                    	    	
	                    	    	$('#title').html(html); 
	                            }
	                            else if(value=="门禁系统"){
	                            	html+='<i class="fa fa-th-list"></i>门禁系统';	                            
	                    	    	$('#title').html(html);	
	                            }else if(value=="围界系统"){	                            	 
	                            	html+='<i class="fa fa-th-list"></i>围界系统';	                            
	                    	    	$('#title').html(html);
	                            }else if(value=="道口系统"){
	                            	html+='<i class="fa fa-th-list"></i>道口系统';	            
	                    	    	$('#title').html(html);
	                            }else if(value=="灭火器"){
	                            	html+='<i class="fa fa-th-list"></i> 灭火器';	            
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
	$("#equId").submit();
}

</script>				
</body>
</html>