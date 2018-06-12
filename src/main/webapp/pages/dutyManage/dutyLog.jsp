<%@page  pageEncoding="UTF-8"%>
<%-- <%@include file="/pages/inc/header_jstree.jsp" %> --%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>值班日志管理</title>
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
<li><a href="#">值班日志管理</a></li>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
   <div class="col-md-12" id="content_1">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>值班日志管理
								</div>
								<div style="margin-left:92%;padding-top:4px;">
								    <button type="button" onclick="javascript:window.location.href='addDutyLog.jsp'" class="sbtn sbtn-default">新增</button>
								</div>
							</div>
							<div class="portlet-body form"> 
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	<div class="form-group">
	    <span>值班员名字：</span>
	    <input type="text" class="form-control" id="name" placeholder="请输入值班员名字">
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
<script type="text/javascript">
$(document).ready(function() {
	
	var datas = [
{ "id":"1" , "name":"欧阳文","unit":"机场","content":"一切正常"},
{ "id":"2" , "name":"李志钊","unit":"安保","content":"一切正常"},
{ "id":"3" , "name":"杨傲云","unit":"安保","content":"一切正常"},
{ "id":"4" , "name":"谢青青","unit":"后勤","content":"一切正常"},
{ "id":"5" , "name":"刘宇","unit":"后勤","content":"一切正常"},

];

//	Metronic.init(); // init metronic core components
//	Layout.init(); // init current layout
	var gridColumns_2_1_1 = [
	                     	{id:'id', title:'序号', type:'number', columnClass:'text-center'},
	                     	{id:'name', title:'值班员名称', type:'string', columnClass:'text-center'},
	                     	{id:'unit', title:'所属单位', type:'string', columnClass:'text-center'},
	                     	{id:'content', title:'值班内容', type:'string',  columnClass:'text-center'},
 	                     	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
 	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
                  			        var content = ''; 	                     			
                  			        content += '<a href="addDutyLog.jsp"><button class="sbtn sbtn-default">编辑</button></a>'; 	                     			
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