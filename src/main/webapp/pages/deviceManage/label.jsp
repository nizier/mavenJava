<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header_jstree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>${title }</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet" href="<%=path %>/css/pilotcockpit.css" />
<link rel="stylesheet" href="<%=path %>/css/pagebar.css" />
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
<a href="#">安全事件处置</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">安全事件接警</a></li>
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
								<div id="tree_1" class="tree-demo"></div>
							</div>
    	</div>
    </div>
   <div class="col-md-9" id="content_1">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-th-list"></i>全部分类信息
								</div>
								<div class="actions">
									<a href="addLabel.jsp" class="btn yellow-crusta btn-sm add"> <i class="fa fa-plus"></i> 新增
									</a>
								</div>
							</div>
							<div class="portlet-body form">
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	<div class="form-group">
	    <span>专题编号：</span>
	    <input type="text" class="form-control" id="num" placeholder="专题编号">
  	</div>
	<div class="form-group" style="margin-left:30px;">
		<span>专题名：</span>
	    <input type="text" class="form-control" id="num" placeholder="专题名">
	</div>
	<div class="form-group" style="margin-left:30px;">
    	<button type="submit" class="btn btn-info">查询</button>
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
<script type="text/javascript">
$(document).ready(function() {
	

//	Metronic.init(); // init metronic core components
//	Layout.init(); // init current layout
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
            	'id':'2',
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
            	'id':'3',
            	'text' : '安防设备', 
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
                             
                             { 'text' : '摄像头' ,
                            	 'children' :null	
                             
                             },
                             { 'text' : '门禁',
                            	 'children' :null	
                             },
                             { 'text' :'围界',
                               'children' :null	
                             },
                             { 'text' :'道口',
                               'children' :null	
                             }
                         ]
            },
            {
            	'id':'4',
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
            	'id':'5',
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
                            { 'text' : '灭火器' ,
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
	//给树绑定事件
// 	$('#tree_1').on('select_node.jstree', function(e,data) { 
//     	var parentAirCorpId = data.instance.get_node(data.selected).id;	 
//     	//获得节点
// 		var sel = ref.get_node(parentAirCorpId);
// 		var parentId = ref.get_parent(sel.id);
// 		if(parentId == "#" || parentId == "0"){
// 			$.ajax({
// 				type: "get",
// 				url: "",
// 				data:{parentAirCorpId:parentAirCorpId},
// 				success: function(data, textStatus){
// 					if(data.status>0){
// 						var datas = data.datas;	
// 						var html = '';
// 						for(var i in datas) {
// 							html += '<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">';
// 							if(parentId=="#"){
// 								html += '<a href="${context}/air/index?node='+datas[i].airCorpId+'">';
// 							}else{
// 								html += '<a href="${context}/air/list?node='+datas[i].airCorpId+'">';	
// 							}
							
// 							html += '<div class="dashboard-stat blue-madison">';
// 							html += '<div class="visual"><i class="fa fa-plane"></i></div>';
// 							html += '<div class="details"><div class="number">'+datas[i].airCorpName+'</div></div>';
// 							html += '</div></a></div>';
// 						}
						
// 						$("#content_1").html(html);
						
// 						// 点击某个节点后展开这个节点
// 						ref.open_node(sel);
						
// 					}else{
// 						var html = '';
// 						html += '<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">';
// 						html += '<div class="dashboard-stat blue-madison">';
// 						html += '<div class="visual"><i class="fa fa-plane"></i></div>';
// 						html += '<div class="details"><div class="number">没有数据</div></div>';
// 						html += '</div></div>';
// 						$("#content_1").html(html);
// 					}
// 				},
// 				error: function(){
// 					alert("获取数据异常");
// 				}
// 			});
// 		}else{
// 			var link = $('#' + data.selected).find('a');
//         	if (link.attr("href") != "#" && link.attr("href") != "javascript:;" && link.attr("href") != "") {
//         		document.location.href = link.attr("href")+"?node="+parentAirCorpId;
// 	            return false;	
//         	}
// 		}
// 	});
	
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
	var datas = [
{ "id":"1" , "name":"应急集合点","value":"yjjhd", "description":"应急集合点"},
{ "id":"2" , "name":"物资存放点","value":"wzcfd", "description":"物资存放点"},
{ "id":"3" , "name":"安防设备","value":"afsb", "description":"安防设备"},
{ "id":"4" , "name":"车辆存放点","value":"clcfd", "description":"车辆存放点"},
{ "id":"5" , "name":"安全资源","value":"aqzy", "description":"安全资源"},
{ "id":"6" , "name":"围界","value":"wj", "description":"围界"},
{ "id":"7" , "name":"摄像头","value":"sxt", "description":"摄像头"},
{ "id":"8" , "name":"应急APP","value":"yjAPP", "description":"应急APP"},
{ "id":"9" , "name":"门禁","value":"mj", "description":"门禁"},
{ "id":"10" , "name":"道口","value":"dk", "description":"道口"},
{ "id":"11" , "name":"移动APP","value":"ydapp", "description":"移动APP"},
{ "id":"12" , "name":"应急集合点","value":"yjjhd", "description":"应急集合点"},
{ "id":"13" , "name":"物资存放点","value":"wzcfd", "description":"物资存放点"},
{ "id":"14" , "name":"安防设备","value":"afsb", "description":"安防设备"},
{ "id":"15" , "name":"车辆存放点","value":"clcfd", "description":"车辆存放点"},
{ "id":"16" , "name":"安全资源","value":"aqzy", "description":"安全资源"},
{ "id":"17" , "name":"围界","value":"wj", "description":"围界"},
{ "id":"18" , "name":"摄像头","value":"sxt", "description":"摄像头"},
];

	
	var gridColumns_2_1_1 = [
	                     	{id:'id', title:'编号', type:'number', columnClass:'text-center'},
	                     	{id:'name', title:'专题名', type:'string', columnClass:'text-center'},
	                     	{id:'value', title:'专题值', type:'string',  columnClass:'text-center'},
	                     	{id:'description', title:'专题描述', type:'string',  columnClass:'text-center'},
 	                     	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
 	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
 	                     			        var content = ''; 	                     			
 	                     			        content += '<a href="addLabel.jsp"><button class="btn btn-xs btn-default"><i class="fa fa-edit"></i>  编辑</button></a>'; 	                     			
 	                     			        content += '  ';	                     			
 	                     			        content += '<button class="btn btn-xs btn-danger"><i class="fa fa-trash-o"></i>  删除</button>'; 	                     			
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


</script>		
		
</body>
</html>