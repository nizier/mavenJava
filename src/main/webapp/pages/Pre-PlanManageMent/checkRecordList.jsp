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
<li>
<a href="#">检查单管理</a> 
<i class="fa fa-angle-right"></i>
<a href="#">检查单记录</a> 
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
			<div style="margin-left:92%;padding-top:4px;">
			</div>
		</div>			
		<div class="portlet-body form"> 
			<form action="" id="equId" class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">
				<input type="hidden" name="equipment" id="eq" class="equip" value=""/>		
				<div class="form-group">
					   <span>预案分类：</span>
					   <select class="form-control" id="planName" >
					   		<option>综合预案</option>
					   		<option>专线预案</option>
					   </select>
				  </div>
				<!-- <div class="form-group"  style="margin-left:30px;">
					<span>救援部门：</span>
					<select class="form-control" id="planName" >
					   		<option>技术部</option>
					   		<option>开发部</option>
					 </select>
				</div> -->
				<div class="form-group"  style="margin-left:30px;">
					<span>检查单名称：</span>
						<input type="text" class="form-control" id="name" placeholder="请输入检查单名称">
				</div>	   
				<div class="form-group" style="margin-left:30px;">
				    <button type="button" onclick="window.location.reload()" class="sbtn sbtn-blue">查询</button>
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
<div class="modal fade bs-example-modal-sm" id="deleteApply" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
			<div class="col-md-6" style="margin-left: 85px;width: 374px;margin-top: 26px">
					<div class="form-group">
						<span for="outerLeader" class="col-sm-6 control-label" style="width:455px; margin-top: 15px;font-weight: bolder;font-size: 18px;margin-left: 40px" >您确定要撤销已发布的检查单吗？</span>
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
<form name="addPlan" class="form-horizontal" id="addPlans" action="#" method="post" enctype="multipart/form-data">
	<div class="modal fade bs-example-modal-sm" id="addChilds" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 1300px; height: 500px;">
		<div class="modal-content">
		 <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">已选择模板</h4>
		        </div>
		       <input type="checkbox" name="checkbox1" value="checkbox复选1" checked="checked" style="margin-left: 81px;margin-top: 20px"/>
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
						<input type="checkbox" name="checkbox1" value="checkbox复选1" checked="checked" style="margin-left: 81px;margin-top: 20px"/>
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
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 245px">
							<button style="margin-left: -266px; margin-top:-68%" type="button" id="ok" 
							onclick="submitStatus()"	class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 36px; margin-top: -68%" type="button" id="oksss" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
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
{ "id":"1" ,"checkCode":"A0001" ,"status":"已发布", "checkName":"检查单A0001","eventSort":"航空器紧急事件","planName":"事件类别1","rescueSection":"预案名称1","rescueSections":"张三","updateTime":"2018年1月22日"},
];    	
	var gridColumns_2_1_1 = [    	
		
		{id:'id', title:'序号', type:'string', columnClass:'text-center'},    	
     	{id:'checkCode', title:'检查单编号', type:'string', columnClass:'text-center'},    	
     	{id:'checkName', title:'检查单名称', type:'string',  columnClass:'text-center',
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content = '';
					content += '<a onclick="check()">' + record.checkName + '</a>';
				return content;
			}
     	},
     	{id:'eventSort', title:'预案类别', type:'string',  columnClass:'text-center'},
     	{id:'planName', title:'事件类别', type:'string',  columnClass:'text-center'},
     	{id:'rescueSection', title:'预案名称', type:'string',  columnClass:'text-center'},
     	{id:'rescueSections', title:'创建人', type:'string',  columnClass:'text-center'},
     	{id:'updateTime', title:'修改时间', type:'string',  columnClass:'text-center'},

     ];
     var gridOption_2_1_1 = {
     	lang : 'zh-cn',
     	ajaxLoad : false,
     	exportFileName : '用户列表',
     	datas : datas,
     	columns : gridColumns_2_1_1,
     	/* check:true, */
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
     
 
})
function deletapp(){
	$("#deleteApply").modal();
}
function releaseapp(){
	$("#release").modal();
}
function check(){
	  $("#addChilds").modal();
}
</script>				
</body>
</html>