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
    <li class="active"><a href="dutyPeopleList.jsp" data-toggle="tab">
            人员管理</a>
    </li>
    <li class="active"><a href="sectorManagement.jsp">部门管理</a></li>
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
									<i class="fa fa-cogs"></i>值班人员树								
								</div>
							</div>
							<div class="portlet-body">
								<div id="dptree" class="tree-demo"></div>
							</div>
    	</div>
    </div>
   <div class="col-md-9" id="content_1">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>值班人员列表
								</div>
								<div style="margin-left:92%;padding-top:4px;">
								    <button type="button" data-toggle="modal" data-target="#addHuman" class="sbtn sbtn-default">新增</button>
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	<div class="form-group">
	    <span>当前值班人员:</span>
	    <span>100</span>
  	</div>
	<div class="form-group" style="margin-left:50px;">
    	 <span>本月</span>
	     <span  style="margin-left:30px;">入职:12</span>
	     <span  style="margin-left:30px;">离职:0</span>
	</div>	
	<div class="form-group" style="margin-left:500px;">
	    <span>员工名称：</span>
	    <input type="text" class="form-control" id="name" placeholder="员工名称">
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
		
				<div class="modal fade" id="addHuman" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">添加值班人员信息</h4>
            </div>
            <div class="modal-body">
                <form id="form1" class="form-horizontal" role="form" action="#" enctype="multipart/form-data"  method="post">
									<div class="form-body">
										<div class="form-group">
										    <div class="col-md-9">
										     <div class="form-group">
											    <label class="col-md-3 control-label">姓名<span class="required">* </span></label>
											    <div class="col-md-3">
												<input type="text" class="form-control" placeholder="请输入姓名">
											    </div>
											   <label class="col-md-2 control-label">性别<span class="required">* </span></label>
											   <div class="col-md-4">
												<input type="radio" name="sex" >男
											    <input type="radio" name="sex" >女											
											   </div>
											</div>
											 <div class="form-group">
											    <label class="col-md-3 control-label">出生年月<span class="required">* </span></label>
											    <div class="col-md-9">
												<input type="text" class="form-control" placeholder="请输入出生年月">
											    </div>
											
											</div>
											 <div class="form-group">
											    <label class="col-md-3 control-label">家庭住址<span class="required">* </span></label>
											    <div class="col-md-9">
												<input type="text" class="form-control" placeholder="请输入家庭住址">
											    </div>
											</div>
										   </div>
										    <div class="col-md-3">
										     <div class="form-group">
											    <div class="col-md-2">
												<img style="width:120px;height:130px;" src="/sodb/img/sdhDutyManage/human.jpg">
											    </div>
											</div>
										   </div>		
										</div>
										
										
										
										
										<div class="form-group">
											<label class="col-md-2 control-label">入职时间<span class="required">* </span></label>
											<div class="col-md-6">
												<input type="text" class="form-control" placeholder="请输入入职时间">
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">聘用形式<span class="required">* </span></label>
											<div class="col-md-6">
											    <select class="form-control">
											        <option value="0">请选择 </option>
											        <option value="1">正式</option>
											        <option value="2">非正式</option>
											       
											    </select>
												
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">个人简历<span class="required">* </span></label>
											<div class="col-md-6">
												<textarea class="form-control"></textarea>
											</div>
										</div>											
									</div>
								 
								</form>
            
            
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>             
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<script type="text/javascript" src="<%=path %>/businessJs/dutyPeopleJstree.js"></script>
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
 	                     	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
 	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
                  			        var content = ''; 	                     			
                  			        content += '<a href="#"><button class="sbtn sbtn-default">设置</button></a>'; 	                     			
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