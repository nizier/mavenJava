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
<style>
	
</style>
</head>
<body>
<!-- <div class="sodb-page-home"> -->
<!-- <ul class="sodb-page-ul"> -->
<!-- <li> -->
<!-- <i class="fa fa-home"></i>  -->
<!-- <a href="#">青岛机场安全管理</a>  -->
<!-- <i class="fa fa-angle-right"></i> -->
<!-- </li> -->
<!-- <li> -->
<!-- <a href="#">业务资源可视化</a> -->
<!-- <i class="fa fa-angle-right"></i> -->
<!-- </li> -->
<!-- <li><a href="#">业务资源管理列表</a></li> -->
<!-- </ul>  -->
<!-- </div> -->
<div class="page-container">
 <ul class="nav nav-tabs" id="myTab">
  <li class="active"><a href="securitySectorResourceManagement.jsp">GIS展示</a></li>
   <li class="active"><a href="resourceManagementList.jsp">信息列表展示</a></li>
</ul>
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
    <div class="col-md-3">
       <div class="portlet blue-hoki box">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>业务资源树								
								</div>
							</div>
							<div class="portlet-body">
								<div id="retree" class="tree-demo"></div>
							</div>
    	</div>
    </div>
   <div class="col-md-9" id="content_1">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>全部分类信息
								</div>
								<div style="margin-left:92%;padding-top:4px;">
								    <button type="button" onclick="javascript:window.location.href='addDevice.jsp'" class="sbtn sbtn-default">新增</button>
								</div>
							</div>
							<div class="portlet-body form"> 
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	<div class="form-group">
	    <span>资源名称：</span>
	    <input type="text" class="form-control" id="name" placeholder="资源名称">
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
				<script type="text/javascript" src="<%=path %>/businessJs/resourceManagementJstree.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	var datas = [
{ "id":"A001" , "name":"网络高清摄像机","num":"A001","location":"T1航站楼值机口上方","description":"直接输出IP封装的视频流，还有很多带有红外补光灯附件"},
{ "id":"A002" , "name":"室内枪机","num":"A002","location":"T2航站楼值机口上方","description":"固定摄像机，通常可另配镜头"},
{ "id":"A003" , "name":"室外枪机","num":"A003","location":"T3航站楼值机口上方","description":"固定摄像机，通常可另配镜头"},
{ "id":"A004" , "name":"室内球机","num":"A004","location":"T4航站楼值机口上方","description":"动点摄像机，可远程控制旋转、俯仰、拉近/推远（简称PTZ）"},
{ "id":"A005" , "name":"室外球机","num":"A005","location":"T4航站楼值机口上方","description":"动点摄像机，可远程控制旋转、俯仰、拉近/推远（简称PTZ）"},
{ "id":"A006" , "name":"半球","num":"A006","location":"T1出发大厅值机口上方","description":"固定摄像机，固定镜头；多用于室内"},
{ "id":"A007" , "name":"视频管理服务器","num":"A007","location":"T2航站楼值机口上方","description":"配置、认证、授权、指令集中接受/发布"},
{ "id":"A008" , "name":"视频流媒体服务器","num":"A008","location":"T3航站楼值机口上方","description":"视频流媒体的转发"},
{ "id":"A009" , "name":"视频存储服务器","num":"A009","location":"T4航站楼值机口上方","description":"1）视频存储前置机  2）集数字视频存储、管理、转发服务于一身的小型综合设备"},
{ "id":"A010" , "name":"视频存储设备","num":"A010","location":"T5航站楼值机口上方","description":"主要是San的磁盘阵列，现在开始引进云存储概念"},

];

//	Metronic.init(); // init metronic core components
//	Layout.init(); // init current layout
   
	var gridColumns_2_1_1 = [
	                     	{id:'name', title:'资源名称', type:'string', columnClass:'text-center'},
	                     	{id:'num', title:'资源编号', type:'string', columnClass:'text-center'},
	                     	{id:'location', title:'位置', type:'string',  columnClass:'text-center'},
	                     	{id:'description', title:'资源描述', type:'string',  columnClass:'text-center'},
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
	                     $('#retree').on('changed.jstree',function(e,data){
	                    	 //当前选中节点的文本值
	                            var value = data.instance.get_node(data.selected[0]).text;
	                    	    var html='';
	                    	    html+='<i class="fa fa-th-list"></i>'+value;	                    	    	
                    	    	$('#title').html(html);

	                        });
 });
  function fn(){
	  confirm("是否删除？");
  }
</script>		
		
</body>
</html>