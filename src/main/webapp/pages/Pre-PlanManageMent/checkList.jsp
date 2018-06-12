<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>检查单管理列表</title>
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
<a href="#">检查单管理</a> 
<i class="fa fa-angle-right"></i>
<a href="#">检查单管理</a> 

</ul> 
</div>
<div class="page-container" style="width:100%;">
<div class="page-content-wrapper">
<div class="page-content">
<div class="row"> 
<div id="content_1">
<div class="portlet box blue-hoki">			
		<div class="portlet-title">
			<div class="caption"  id="title">
				检查单管理列表
			</div>
			
		</div>			
		<div class="portlet-body form"> 
			<form action="roleManagement.jsp" id="equId" class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">
				<input type="hidden" name="equipment" id="eq" class="equip" value=""/>		
				<div class="form-group">
					   <span>预案分类：</span>
					   <select class="form-control" id="planName" >
					   		<option>综合预案</option>
					   		<option>专项预案</option>
					   </select>
				  </div>
			
				<div class="form-group"  style="margin-left:30px;">
					<span>检查单名称：</span>
						<input type="text" class="form-control" id="name" placeholder="请输入检查单名称">
				</div>	   
				<div class="form-group" style="margin-left:30px;">
				    <button type="button" onclick="window.location.reload()" class="sbtn sbtn-blue">查询</button>
				</div>
				<!-- <div class="form-group" style="margin-left:228px;">
				    <button type="button" id="issue" class="sbtn sbtn-blue">发布</button>
				</div> -->
				<!-- <div style="margin-left:92%;padding-top:4px;">
				<button type="button" class="sbtn sbtn-default" style="margin-left: -10px;margin-top: 1px" onclick="window.location.href='customTemplate.jsp'">检查单制定</button>
			</div> -->
				<button type="button" id="resetBtn" class="sbtn sbtn-blue"  style="float: right ;margin-right: 15px;margin-top:0px ">
				   删除</button>
				<button type="button" id="updates" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:0px ">
				     编辑</button>
				<button type="button" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:0px " onclick="window.location.href='addEvolve.jsp'">
				制定检查单</button>
				
			
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
<div class="modal fade bs-example-modal-sm" id="ApplySuc" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
			<div class="col-md-6" style="margin-left: 85px;width: 374px;margin-top: 26px">
					<div class="form-group">
						<span for="outerLeader" class="col-sm-6 control-label" style="width:455px; margin-top: 15px;font-weight: bolder;font-size: 18px;margin-left: 113px" >发布成功！</span>
						</div>					
					</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 125px">
							<button style="margin-left: -152px; margin-top: -45px" type="button" id="okk" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class='fa fa-trash-o'></i> 确定</button>
							<button style="margin-left: 15px; margin-top: -45px" type="button" id="no" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
						</div>
				</div>
			</div>
					
			
		</div>
	</div>
</div>
<div class="modal fade bs-example-modal-sm" id="release" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
			<div class="col-md-6" style="margin-left: 85px;width: 374px;margin-top: 26px">
					<div class="form-group">
						<span for="outerLeader" class="col-sm-6 control-label" style="width:455px; margin-top: 15px;font-weight: bolder;font-size: 18px;margin-left: 73px" >是否确定发布该项目？</span>
						</div>					
					</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 125px">
							<button style="margin-left: -152px; margin-top: -45px" type="button" id="okks" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class='fa fa-trash-o'></i> 确定</button>
							<button style="margin-left: 15px; margin-top: -45px" type="button" id="no" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
						</div>
				</div>
			</div>
					
			
		</div>
	</div>
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
	<div class="modal fade bs-example-modal-sm" id="addChilds" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 1300px; height: 500px;">
		<div class="modal-content">
		 <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">检查单</h4>
		        </div>
		<div class="form-body" style="border: 1px solid red;width: 1108px;margin-left: 105px">
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-6" style="margin-left:182px">
											<input type="checkbox"/>&nbsp;<span >《航空器场外失事处置预案》，时间：<input type="text" placeholder="请输入时间"></span>&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-6" style="margin-left:372px">
											<input type="checkbox"  style="margin-left:-190px"/>&nbsp;<span >通知塔台</span>&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										
									</div>
								
									<div class="row" style="margin-top: 20px;width:940px;margin-left:165px">
									
							</div>	
							<div class="form-group" style="margin-top:-24px;margin-left: -163px">
									
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-6" style="margin-left:182px;width:745px">
											<input type="text" style="border: none;border-bottom: black 1px solid;" >航班已场外失事，<input type="text" style="border: none;border-bottom: black 1px solid;" >(机型)
											<input type="text" style="border: none;border-bottom: black 1px solid;" >（机号）<br>
											现启动《航空器场外失事处置预案》，立即紧急出动，前往<input type="text" style="border: none;border-bottom: black 1px solid;" >（事件地点）。<br>
											请各部门收到后按顺序回复，完毕。
										</div>
										
									</div>
							<div class="row" style="margin-top: 20px;width:940px;margin-left:165px">
									<div class="col-md-12">
										<table class="table table-bordered" style="text-align: center">
											<thead>
											<tr><td class="hidden" style="text-align: center;font-size: 16px;"  colspan="13">专任教师校验</td></tr>
											<tr>
												<th style="width:350px;font-weight:500;">&nbsp;&nbsp;电话通知
												</th>
												<th style="font-weight:500;width:135px;">姓&nbsp;名</th>
												<th style="font-weight:500;">通知时间（启动）</th>
												<th style="font-weight:500;">通知时间（结束）</th>
											</tr>
											</thead>
												<tr> 
													<td style="text-align:left">航空公司：接报人<input type="text" style="border: none;border-bottom: black 1px solid;" >；<br>
														电话：<input type="text" style="border: none;border-bottom: black 1px solid;" >；
													</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
												<tr> 
													<td style="text-align:left">生产运营总值班</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
												<tr> 
													<td style="text-align:left">股份一号值班</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
												<tr> 
													<td style="text-align:left">应急管理模块业务经理（牵头人）和主管</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
										</table>
								</div>
							</div>
						</div>
		
						<hr style="margin-left:0px;width: 100%">
			 <div class="form-group">
				<div style="" >
					<div style="">
							
							<button style="margin-left: 46%; margin-top: 2%" type="button" id="oksss" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i>关闭</button>
						</div>
				</div>
			</div> 
			
		</div>
	</div>
</div>
<script type="text/javascript" src="<%=path %>/js/deviceJstreeManage.js"></script>
<script type="text/javascript">
function fn(){
	  confirm("是否删除？");
}
$(document).ready(function() {	
	var datas = [
{ "id":"1","checkCode":"A0001" ,"status":"0", "checkName":"检查单A0001","eventSort":"预案类别1","planName":"事件类别1","rescueSection":"预案名称1","rescueSections":"张三","updateTime":"2018年1月22日"},
{ "id":"2", "checkCode":"A0002" , "status":"1","checkName":"检查单A0002","eventSort":"预案类别2","planName":"事件类别2","rescueSection":"预案名称2","rescueSections":"李四","updateTime":"2018年1月22日"},
];    	
	var gridColumns_2_1_1 = [ 
		{id:'id', title:'序号', type:'string', columnClass:'text-center'}, 
     	{id:'checkCode', title:'检查单编号', type:'string', columnClass:'text-center'},    	
     	{id:'checkName', title:'检查单名称', type:'string',  columnClass:'text-center',
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content = '';
					content += '<a onclick="check()"">' + record.checkName + '</a>';
				return content;
			}
     	},
     	{id:'status', title:'发布状态', type:'string',  columnClass:'text-center',
     		resolution : function(value, record,
  					column, grid, dataNo, columnNo) {
     			if(value == '0'){
					var content = '<span style="color: #FF0000;">' +'未发布'+ '</span>';
				}else if(value == '1'){
	   				var content = '<span style="color: #2D9900;">'+'已发布'+'</span>';
	   			}
	          	return content;
  			}		
     	
     	},
     	{id:'eventSort', title:'预案类别', type:'string',  columnClass:'text-center'},
     	{id:'planName', title:'事件类别', type:'string',  columnClass:'text-center'},
     	{id:'rescueSection', title:'预案名称', type:'string',  columnClass:'text-center'},
     	{id:'rescueSections', title:'创建人', type:'string',  columnClass:'text-center'},
     	{id:'updateTime', title:'修改时间', type:'string',  columnClass:'text-center'},
     	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
			        var content = ''; 
			        if(record.status=='0'){
			        	content += "<button class='sbtn sbtn-blue btn-sm'  id='issueBtn' "
		                    + "onclick=issueApp('"
		                    + record.id
		                    + "');>发布</button>"; 
			       		}
			        else if(record.status == '1'){
			        	content += "<button class='sbtn sbtn-blue btn-sm'  id='deletesOneBtn' "
	                        + "onclick=unissueApp('"
	                        + record.id
	                        + "');>取消发布</button>";
		   			}
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
     	check:true,
     	gridContainer : 'policehold_211',
     	toolbarContainer : 'police_211',
     	tools : '',
     	pageSize : 10,
     	pageSizeLimit : [10, 20, 50]
     };
     var grid_2_1_1 = $.fn.dlshouwen.grid.init(gridOption_2_1_1);
     $(function(){
     	grid_2_1_1.load();
     })	  
     			/**
                  * 删除方法
                  */
                  $("#resetBtn").click(function(){
               		//alert("111");
               		var recordCount =grid_2_1_1.getCheckedRecords().length;
               		 if (recordCount == 0) {
               			 showMsg('请至少选择一条数据操作！',3);
						}else {
							// 获取所有复选框选中的数据
						  		 var records = grid_2_1_1.getCheckedRecords();
						     var ids = [];
						   	 var msg = "您确定要删除该数据吗？";
						   	 // 确定删除数据
						   	 if (confirm(msg)==true){
						   		 
							     for(var i = 0 ;i < records.length; i++ ){
							     // 所有要删除的id存入集合
						   		 ids.push(records[i].id);
						    	 	for (var j = 0; j < datas.length; j++) {
						    	 		// datas中的数据id与要输出的数据id比较
										if(datas[j].id === records[i].id){
											// 在datas数据中删除到选中删除id的数据
											datas.splice(j, 1);
											j -= 1;
										}
									}
						                		 	}
							     // 整理datas数据序号
							     for (var i = 0; i < datas.length; i++) {
									datas[i].ids = i+1;
								}
							     // 刷新列表
						    	 grid_2_1_1.load();
						   	 }else{
						   	 	return false;
						   	 }
						}
               	})
               	$("#updates").click(function(){
     	                 		var recordCounts =grid_2_1_1.getCheckedRecords().length;
     	                 		 if (recordCounts != 1) {
     	                 			 showMsg('请选择一条数据操作！',3);
     	                 		 } else {
     	                 			window.location.href = "<%=path %>/pages/Pre-PlanManageMent/editEvolve.jsp";
     	                 			<%-- <a href="<%=path %>/pages/pre-plancultivate/updateCultivate.jsp"><a/> --%>
     	                 		 }
     	                 	})
     	         	$("#issue").click(function(){
     	                 		var recordCounts =grid_2_1_1.getCheckedRecords().length;
     	                 		 if (recordCounts != 1) {
     	                 			 showMsg('请选择一条数据操作！',3);
     	                 		 } else {
     	                 			$("#release").modal();
     	                 		 }
     	                 	})
     	                 	$("#okCeshi").click(function(){
    	                    		 var id = $("#fds").val();
	    	                    	console.log(datas);
								     for(var i = 0 ;i < datas.length; i++ ){
											if(datas[i].id == id){
												datas[i].status = 1;
											}
								     }
								     grid_2_1_1.load();

							})
							 $("#noOkCeshi").click(function(){
    	                    		 var id = $("#qwe").val();
	    	                    	console.log(datas);
								     for(var i = 0 ;i < datas.length; i++ ){
											if(datas[i].id == id){
												datas[i].status = 0;
											}
								     }
								     grid_2_1_1.load();

							})
     
 
})
function deletapp(){
	$("#deleteApply").modal();
}
$("#okks").click(function(){
	$("#ApplySuc").modal();
})
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
  function check(){
	  $("#addChilds").modal();
}
</script>				
</body>
</html>