<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
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
<a href="#">北京新机场应急救援管理</a> 
<i class="fa fa-angle-right"></i>
</li>
<li>
<a href="#">应急救援培训管理</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">培训人员列表</a></li>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
   <!--  <div class="col-md-3" style="width: 18%">
       <div class="portlet blue-hoki box">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>部门树分类							
								</div>
							</div>
							<div class="portlet-body">
								<div id="dptree" class="tree-demo" ></div>
							</div>
    	</div>
    </div> -->
		<form name="addPlan" class="form-horizontal" id="addPlan" action="#" method="post" enctype="multipart/form-data">
	<div class="modal fade bs-example-modal-sm" id="addChild" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
		 <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">培训总结</h4>
		        </div>
		<div class="col-md-6" style="margin-left: 70px;width: 374px;margin-top: 10px">
		
				<input type="hidden" name="projectId" id="id" >
					
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">总结人：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<input type="text" class="form-control input-radius"
							id="projectCode" name="projectCode" placeholder="请输入创建人"
							aria-describedby="sizing-addon2" required="required" disabled="true" value="管理员1">
					</div>
				</div>
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 28px;margin-left: -62px;font-weight: bolder;">上传附件：</span>
					
						<input id="lefile" type="file" style="display:none">
							<div class="col-md-4">
								<input id="enclosure" class="form-control" type="text" placeholder="附件" style="margin-top: 25px;margin-left: 0px;font-weight: bolder;width: 176px">
							</div>
							<div class="col-md-4">
								<div class="sbtn sbtn-blue" onclick="$('input[id=lefile]').click();" style="margin-top: -34px;margin-left: 323px;font-weight: bolder;">选择附件</div>
							</div>
					
				</div>
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">培训总结：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<textarea class="form-control input-radius"
							id="applyReason" name="applyReason" placeholder="请输入培训总结"
							aria-describedby="sizing-addon2"  style="margin-top: -6px;width: 290px;height: 80px" ></textarea>
					</div>
				</div>
				</div>
				<hr style="margin-left:0px;width: 100%">
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 245px">
							<button style="margin-left: -266px; margin-top:28%" type="button" id="ok" 
							onclick="submitStatus()"	class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 36px; margin-top: 28%" type="button" id="oksss" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
						</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
</form>
<form name="addPlan" class="form-horizontal" id="addPlans" action="#" method="post" enctype="multipart/form-data">
	<div class="modal fade bs-example-modal-sm" id="addChilds" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
		 <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">培训总结</h4>
		        </div>
		<div class="col-md-6" style="margin-left: 70px;width: 374px;margin-top: 10px">
		
				<input type="hidden" name="projectId" id="id" >
					
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">总结人：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<input type="text" class="form-control input-radius"
							id="projectCode" name="projectCode" placeholder="请输入创建人"
							aria-describedby="sizing-addon2" required="required" disabled="true" value="管理员1">
					</div>
				</div>
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 28px;margin-left: -62px;font-weight: bolder;">上传附件：</span>
					
						<input id="lefile" type="file" style="display:none">
							<div class="col-md-4">
								<input id="enclosure" class="form-control" type="text" placeholder="附件" style="margin-top: 25px;margin-left: 0px;font-weight: bolder;width: 176px" value="应急救援管理.pdm">
							</div>
							<div class="col-md-4">
								<div class="sbtn sbtn-blue" onclick="$('input[id=lefile]').click();" style="margin-top: -34px;margin-left: 323px;font-weight: bolder;">选择附件</div>
							</div>
					
				</div>
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">培训总结：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<textarea class="form-control input-radius"
							id="applyReason" name="applyReason" placeholder="请输入培训总结"
							aria-describedby="sizing-addon2"  style="margin-top: -6px;width: 290px;height: 80px" >打算打是的撒大大发生了国家的法律根据</textarea>
					</div>
				</div>
				</div>
				<hr style="margin-left:0px;width: 100%">
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 245px">
							<button style="margin-left: -266px; margin-top:28%" type="button" id="ok" 
							onclick="submitStatus()"	class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 36px; margin-top: 28%" type="button" id="oksss" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
						</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
</form>
<!-- 培训管理 -->
<div  class="col-md-9"  id="content_1" style="width:100%; " >
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>培训人员列表
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 
<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                姓名：<input type="text" class="form-control" id="projectName" placeholder="请输入姓名">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            <a href="<%=path %>/pages/pre-plancultivate/planCheck.jsp"><button type="button" id="us" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            返回</button> </a>
            <button type="button" id="updates"  class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            导出</button>
            <!--  <button type="button" id="resetBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px " 
            >
            填写培训总结</button> -->
        </form>
      </div>
							
<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div>
					
<div  class="col-md-9"  id="content_2" style="width:81%;display: none">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>应急培训管理
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                 计划名称：<input type="text" class="form-control" id="projectName" placeholder="请输入计划名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:4px ">
            删除</button>
     </form>
   	
</form>
            
            
</div>
							
<div id="policehold_311" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_311" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div>					
				</div>
				</div>
				</div>
		
<div class="modal fade" id="addHuman" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 
</div>

<script type="text/javascript" src="<%=path %>/businessJs/cultivate.js"></script>
<script type="text/javascript">



$(document).ready(function() {

	var datas = [
		{ "id":"1" , "name":"张三","place":"1500000000000","number":"男","cultivate":"办公室","submitter":"15700000000","numbers":"否"},
		{ "id":"2" , "name":"李四","place":"1500000000000","number":"男","cultivate":"财务部","submitter":"15700000000","numbers":"是"},
		{ "id":"3" , "name":"王五","place":"1500000000000","number":"男","cultivate":"人力资源部","submitter":"15700000000","numbers":"否"},
		{ "id":"4" , "name":"易烊千玺","place":"1500000000000","number":"男","cultivate":"安检","submitter":"15700000000","numbers":"否"},
		{ "id":"5" , "name":"王子珩","place":"1500000000000","number":"男","cultivate":"护卫","submitter":"15700000000","numbers":"是"},
		{ "id":"6" , "name":"邓超","place":"1500000000000","number":"男","cultivate":"物流","submitter":"15700000000","numbers":"否"},
		{ "id":"7" , "name":"董傻","place":"1500000000000","number":"男","cultivate":"信息中心","submitter":"15700000000","numbers":"是"},

];
	var gridColumns_2_1_1 = [
		{id:'id', title:'培训编号', type:'number', columnClass:'text-center'},
     	{id:'name', title:'姓名', type:'string', columnClass:'text-center'},
     	/* {id:'time1', title:'起始时间', type:'string', columnClass:'text-center'},
     	{id:'time2', title:'结束时间', type:'string', columnClass:'text-center'}, */
     	{id:'place', title:'身份证号', type:'string', columnClass:'text-center'},
     	{id:'number', title:'性别', type:'string', columnClass:'text-center'},
     	{id:'cultivate', title:'部门', type:'string', columnClass:'text-center'},
     	{id:'submitter', title:'电话', type:'string', columnClass:'text-center'},
     	{id:'numbers', title:'是否总结', type:'string', columnClass:'text-center'},
     	/* {id:'number', title:'附件', type:'string', columnClass:'text-center'} */
     	
      	 {id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
			        var content = ''; 
			       if(record.numbers=='否'){
			    	   content += '<a onclick="addPlanApp();"><button class="sbtn sbtn-blue" >培训总结</button></a>'; 	  
			       }else if(record.numbers=='是'){
			    	   content += '<a onclick="addPlanApps();"><button class="sbtn sbtn-blue" >培训总结</button></a>'; 	  
			       }
			        	
			       
			                           			
			       <%--  content += '  ';
			        content += '<a href ="<%= basePath %>/pages/pre-personnel/培训总结.xlsx" ><button  class="sbtn sbtn-blue">导出</button></a>';  --%>
			        return content;                     			
			    }		
      	}  
     ];
	                     var gridOption_2_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	check : true,width:'100',
	                     	columns : gridColumns_2_1_1,
	                     	gridContainer : 'policehold_211',
	                     	toolbarContainer : 'police_211',
	                     	tools : 'refresh',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_2_1_1 = $.fn.dlshouwen.grid.init(gridOption_2_1_1);
    	                     $(function(){
    	                     	grid_2_1_1.load();
    	                     });
    	                     $("#resetBtn").click(function(){
       	                 		//alert("111");
       	                 		var recordCount =grid_2_1_1.getCheckedRecords().length;
       	                 		 if (recordCount == 0) {
       	                 			 showMsg('请至少选择一条数据操作！',3);
       	                 		 }  else {
       	                 			$("#addChild").modal();
       	                 		 }
       	                 	})
							    $("#updates").click(function(){
		       	                 	 var records = grid_2_1_1.getCheckedRecords();
								     var ids = [];
								     var i = 0;
									    var str;
									    for( i =0 ; i<records.length;i++){
											   if(records[i].numbers=='否'){
												  showMsg('未总结无法导出！');
												  str = 0;
												  break;
											   }
									    }
									    for( k =0 ; k<records.length;i++){
										    if(str == 0){
										    	break;
										    }else if(records[k].numbers=='是'){
										    		window.location.href = "<%= basePath %>pages/pre-personnel/pxzj.xlsx";
												  break;
											   }
									    }
		       	                 	})	
							   
	                  
 });
  function fn(){
	  confirm("是否删除？");
  }
  function addPlanApp(){
	  $("#addChild").modal();
}
  function addPlanApps(){
	  $("#addChilds").modal();
}
//Excel导出
  function exportExcel() {
  	$.post('<c:url value="/reportStatistics/checkIsExistData"/>', function(data){
  		data = $.parseJSON(data);
  		if(data.success==true){
  			top.window.location = '<c:url value="/reportStatistics/exportExcel"/>' ;
  		}else {
  			showMsg(data.msg);
  		}
  	});
  }
  function trees(){
	 
  }  
  $(document).ready(function() {
		
		var datas = [
			{ "id":"1" , "name":"张三","place":"1500000000000","number":"男","cultivate":"办公室","submitter":"15700000000"},
			{ "id":"2" , "name":"李四","place":"1500000000000","number":"男","cultivate":"财务部","submitter":"15700000000"},
			{ "id":"3" , "name":"王五","place":"1500000000000","number":"男","cultivate":"人力资源部","submitter":"15700000000"},
			{ "id":"4" , "name":"易烊千玺","place":"1500000000000","number":"男","cultivate":"安检","submitter":"15700000000"},
			{ "id":"5" , "name":"王子珩","place":"1500000000000","number":"男","cultivate":"护卫","submitter":"15700000000"},
			{ "id":"6" , "name":"邓超","place":"1500000000000","number":"男","cultivate":"物流","submitter":"15700000000"},
			{ "id":"7" , "name":"董傻","place":"1500000000000","number":"男","cultivate":"信息中心","submitter":"15700000000"},
	

	];
		var gridColumns_3_1_1 = [
			{id:'id', title:'培训编号', type:'number', columnClass:'text-center'},
	     	{id:'name', title:'姓名', type:'string', columnClass:'text-center'},
	     	/* {id:'time1', title:'起始时间', type:'string', columnClass:'text-center'},
	     	{id:'time2', title:'结束时间', type:'string', columnClass:'text-center'}, */
	     	{id:'place', title:'身份证号', type:'string', columnClass:'text-center'},
	     	{id:'number', title:'性别', type:'string', columnClass:'text-center'},
	     	{id:'cultivate', title:'部门', type:'string', columnClass:'text-center'},
	     	{id:'submitter', title:'电话', type:'string', columnClass:'text-center'}
	      <%-- 	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
	      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
				        var content = ''; 	
				        
				        content += '<a href="<a href="<%=path %>/pages/pre-plancultivate/cultivateSummary.jsp"><button class="sbtn sbtn-blue" >修改</button></a>'; 	                     			
				        return content;                     			
				    }		
	      	} --%>
	     ];
		                     var gridOption_3_1_1 = {
		                     	lang : 'zh-cn',
		                     	ajaxLoad : false,
		                     	exportFileName : '用户列表',
		                     	datas : datas,
		                     	check : true,
		                     	columns : gridColumns_3_1_1,
		                     	gridContainer : 'policehold_311',
		                     	toolbarContainer : 'police_311',
		                     	tools : 'refresh',
		                     	pageSize : 10,
		                     	pageSizeLimit : [10, 20, 50]
		                     };
	 	                     var grid_3_1_1 = $.fn.dlshouwen.grid.init(gridOption_3_1_1);
	    	                     $(function(){
	    	                     	grid_3_1_1.load();
	    	                     });
	 }); 
  
</script>		
		
</body>
</html>