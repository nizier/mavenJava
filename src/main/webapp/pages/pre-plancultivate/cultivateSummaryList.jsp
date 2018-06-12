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
<a href="#">北京新机场应急救援管理</a> 
<i class="fa fa-angle-right"></i>
</li>
<li>
<a href="#">应急培训管理</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">年度培训计划管理</a></li>
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
		
<!-- 培训管理 -->
<div  class="col-md-9"  id="content_1" style="width:100%; " >
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>年度计划
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 
<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                年度计划：<input type="text" class="form-control" id="projectName" placeholder="请输入年度计划名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
             <button type="button" id="resetBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            删除</button>
            <button type="button" id="updates" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px "
            >
            编辑</button>
             <a href="<%=path %>/pages/pre-plancultivate/addSummary.jsp"><button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px " 
            >
            新增</button></a>
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
<!-- 发布 -->
<div class="modal fade bs-example-modal-sm" id="ceshi" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<input type="text" id="fds" style="display: none;">
	
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
			<div class="col-md-6" style="margin-left: 85px;width: 374px;margin-top: 26px">
					<div class="form-group">
						<span for="outerLeader" class="col-sm-6 control-label" style="width:400px; margin-top: 15px;font-weight: bolder;font-size: 18px;margin-left: 26%" >是否发布？</span>
						</div>					
					</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 125px">
							<button style="margin-left: -70%; margin-top: -40px" type="button" id="okCeshi" 
								class="sbtn sbtn-blue" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 8%; margin-top: -40px" type="button" 
							class="sbtn sbtn-default"  data-dismiss="modal"><i class="fa fa-send-o"></i>取消</button>
								
						</div>
				</div>
			</div>
					
			
		</div>
	</div>
</div>
<!-- 取消发布 -->
<div class="modal fade bs-example-modal-sm" id="ceshiII" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<input type="text" id="qwe" style="display: none;">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
			<div class="col-md-6" style="margin-left: 85px;width: 374px;margin-top: 26px">
					<div class="form-group">
						<span for="outerLeader" class="col-sm-6 control-label" style="width:400px; margin-top: 15px;font-weight: bolder;font-size: 18px;margin-left: 30%" >是否撤销发布？</span>
						</div>					
					</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 125px">
							<button style="margin-left: -70%; margin-top: -40px" type="button" id="noOkCeshi" 
								class="sbtn sbtn-blue" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 8%; margin-top: -40px" type="button" 
							class="sbtn sbtn-default"  data-dismiss="modal"><i class="fa fa-send-o"></i>取消</button>
								
						</div>
				</div>
			</div>
					
			
		</div>
	</div>
</div>
<script type="text/javascript" src="<%=path %>/businessJs/cultivate.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	
	var datas = [
		{ "id":"1" ,"ids":"A001" , "name":"年度计划1","name1":"张三","time1":"单位1","time2":"2019年1月","state":"0"},
		{ "id":"2" ,"ids":"A002" , "name":"年度计划2","name1":"李四","time1":"单位2","time2":"2019年1月","state":"1"},
		{ "id":"3" ,"ids":"A003" , "name":"年度计划3","name1":"王五","time1":"单位3","time2":"2019年1月","state":"0"},
		{ "id":"4" ,"ids":"A004" , "name":"年度计划4","name1":"赵四","time1":"单位4","time2":"2019年1月","state":"1"},
		{ "id":"5" ,"ids":"A005" , "name":"年度计划5","name1":"张三","time1":"单位5","time2":"2019年1月","state":"0"},
		{ "id":"6" ,"ids":"A006" , "name":"年度计划6","name1":"张伟","time1":"单位6","time2":"2019年1月","state":"1"},
		{ "id":"7" ,"ids":"A007" , "name":"年度计划7","name1":"赵培","time1":"单位7","time2":"2019年1月","state":"0"},


];
	var gridColumns_2_1_1 = [
     	{id:'id', title:'序号', type:'number', columnClass:'text-center',width:'10%'},
     	{id:'ids', title:'年度计划编号', type:'number', columnClass:'text-center',width:'20%'},
    	{id:'name', title:'年度计划名称', type:'string', columnClass:'text-center',width:'45%',
     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = ''; 	                     			                     			
		        content += '<a href="<%=path %>/pages/pre-plancultivate/NDplan.jsp">'+value+'</a>'; 
		        return content;                     			
		    }
    	},
    	
    	{id:'time1', title:'所属单位', type:'string', columnClass:'text-center',width:'20%'},
    	/* {id:'time2', title:'结束时间', type:'string', columnClass:'text-center'}, */
    	/* {id:'state', title:'发布状态', type:'string', columnClass:'text-center',
			resolution : function(value, record,column, grid, dataNo, columnNo) {
				if(value == '0'){
					var content = '<span style="color: #FF0000;">' +'未发布'+ '</span>';
				}else if(value == '1'){
	   				var content = '<span style="color: #2D9900;">'+'已发布'+'</span>';
	   			}
	          	return content;
	     	}}, */
	     	/* {id:'name1', title:'发布人', type:'string', columnClass:'text-center'},
	     	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
	      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
				        var content = ''; 
				        if(record.state=='0'){
				        	content += "<button class='sbtn sbtn-blue btn-sm'  id='issueBtn' "
			                    + "onclick=issueApp('"
			                    + record.id
			                    + "');>发布</button>"; 
				       		}
				        else if(record.state == '1'){
				        	content += "<button class='sbtn sbtn-blue btn-sm'  id='deletesOneBtn' "
		                        + "onclick=unissueApp('"
		                        + record.id
		                        + "');>取消发布</button>";
			   			}
				        return content;                     			
				    }		
	      	} */
      	
     ];
	                     var gridOption_2_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	check :true,
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
       	                 		 } else {
       	                 			alert("删除成功");
       	                 			 
       	                 		 }
       	                 	})
       	                 	$("#updates").click(function(){
       	                 		var recordCounts =grid_2_1_1.getCheckedRecords().length;
       	                 		 if (recordCounts != 1) {
       	                 			 showMsg('请选择一条数据操作！',3);
       	                 		 } else {
       	                 			window.location.href = "updateSummary.jsp";
       	                 		 }
       	                 	})
       	                 	$("#okCeshi").click(function(){
    	                    		 var id = $("#fds").val();
	    	                    	console.log(datas);
								     for(var i = 0 ;i < datas.length; i++ ){
											if(datas[i].id == id){
												datas[i].state = 1;
											}
								     }
								     grid_2_1_1.load();

							})
							 $("#noOkCeshi").click(function(){
    	                    		 var id = $("#qwe").val();
	    	                    	console.log(datas);
								     for(var i = 0 ;i < datas.length; i++ ){
											if(datas[i].id == id){
												datas[i].state = 0;
											}
								     }
								     grid_2_1_1.load();

							})
	                  
 });
  function fn(){
	  confirm("是否删除？");
  }
  function trees(){
	 
  } 
  /*  发布*/
  function issueApp(id){
  	$("#fds").val(id);
  	$("#ceshi").modal();
  	 


  }
  /* 取消发布 */
  function unissueApp(id){
  	  $("#qwe").val(id);
  	  $("#ceshiII").modal();
  }
  $(document).ready(function() {
		
		var datas = [
			{ "id":"1" , "name":"常识培训","time1":"2018年1月","time2":"2018年1月","place":"北京","number":"55","cultivate":"办公室","submitter":"张三"},
			{ "id":"2" , "name":"场务培训","time1":"2018年1月","time2":"2018年1月","place":"上海","number":"40","cultivate":"财务部","submitter":"李四"},
			{ "id":"3" , "name":"礼仪培训","time1":"2018年1月","time2":"2018年1月","place":"广州","number":"20","cultivate":"人力资源部","submitter":"王五"},
			{ "id":"4" , "name":"应急措施培训","time1":"2018年1月","time2":"2018年1月","place":"深圳","number":"44","cultivate":"安检","submitter":"赵六"},
			{ "id":"5" , "name":"岗位业务培训","time1":"2018年1月","time2":"2018年1月","place":"长安","number":"5","cultivate":"护卫","submitter":"李阳"},
			{ "id":"6" , "name":"安全教育培训","time1":"2018年1月","time2":"2018年1月","place":"贵阳","number":"11","cultivate":"物流","submitter":"王潇"},
			{ "id":"7" , "name":"团队协作培训","time1":"2018年1月","time2":"2018年1月","place":"洛阳","number":"111","cultivate":"信息中心","submitter":"张三丰"},
	

	];
		var gridColumns_3_1_1 = [
			{id:'id', title:'培训编号', type:'number', columnClass:'text-center'},
	     	{id:'name', title:'课程名称', type:'string', columnClass:'text-center'},
	     	{id:'time1', title:'起始时间', type:'string', columnClass:'text-center'},
	     	{id:'time2', title:'结束时间', type:'string', columnClass:'text-center'},
	     	{id:'place', title:'地点', type:'string', columnClass:'text-center'},
	     	{id:'number', title:'人数', type:'string', columnClass:'text-center'},
	     	{id:'cultivate', title:'部门', type:'string', columnClass:'text-center'},
	     	{id:'submitter', title:'提交人', type:'string', columnClass:'text-center'}
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
		                     	tools : '',
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