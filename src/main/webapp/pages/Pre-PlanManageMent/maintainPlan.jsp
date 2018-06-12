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
<a href="#">应急救援预案管理</a>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
    <div class="col-md-3" style="width: 26%">
       <div class="portlet blue-hoki box" >
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-cogs"></i>应急救援预案管理							
				</div>
			</div>
				<div class="portlet-body">
					<div id="maintaindptree" class="tree-demo"></div>
				</div>
			</div>
    	</div>
<!-- 新增预案分类 -->
<form name="addPlan" class="form-horizontal" id="addPlan" action="#" method="post" enctype="multipart/form-data">
	<div class="modal fade bs-example-modal-sm" id="addChild" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 550px; height: 500px;">
			<div class="modal-content">
				<div class="col-md-6" style="margin-left: 70px;width: 374px;margin-top: 10px">
					<input type="hidden" name="projectId" id="id" >
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">预案分类编号：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<input type="text" class="form-control input-radius"
										id="projectCode" name="projectCode"
										aria-describedby="sizing-addon2" required="required">
								</div>
							</div>
							<div class="form-group" >
								<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">预案分类名称：</span>
									<div class="col-md-6" style="margin-top: 30px">
										<input type="text" class="form-control input-radius"
											id="projectCode" name="projectCode"
											aria-describedby="sizing-addon2" required="required">
									</div>
							</div>
							<div class="form-group" >
								<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">预案分类简介：</span>
									<div class="col-md-6" style="margin-top: 30px">
										<textarea class="form-control input-radius"
											id="applyReason" name="applyReason" placeholder="请输入预案分类简介"
											aria-describedby="sizing-addon2"  style="margin-top: -6px;width: 290px;height: 80px"></textarea>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div style="margin-left: 35%;" >
									<div style="margin-left: 41%;margin-top: 245px">
										<button style="margin-left: -255px; margin-top:60px" type="button" id="ok" 
											onclick="submitStatus()"	class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
										<button style="margin-left: 10px; margin-top: 60px" type="button" id="oksss" 
											class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>  
<!-- 新增事件分类 -->
<form name="addEvent" class="form-horizontal" id="addEvent" action="#" method="post" enctype="multipart/form-data">
	<div class="modal fade bs-example-modal-sm" id="addEvents" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 550px; height: 500px;">
			<div class="modal-content">
				<div class="col-md-6" style="margin-left: 70px;width: 374px;margin-top: 10px">
					<input type="hidden" name="projectId" id="id" >
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">事件分类编号：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<input type="text" class="form-control input-radius"
										id="projectCode" name="projectCode"
										aria-describedby="sizing-addon2" required="required">
								</div>
						</div>
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">事件分类名称：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<input type="text" class="form-control input-radius"
										id="projectCode" name="projectCode"
										aria-describedby="sizing-addon2" required="required">
								</div>
							</div>
							<div class="form-group" >
								<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">事件分类简介：</span>
									<div class="col-md-6" style="margin-top: 30px">
										<textarea class="form-control input-radius"
											id="applyReason" name="applyReason" placeholder="请输入事件分类简介"
											aria-describedby="sizing-addon2"  style="margin-top: -6px;width: 290px;height: 80px"></textarea>
									</div>
							</div>
						</div>
						<div class="form-group">
							<div style="margin-left: 35%;" >
								<div style="margin-left: 41%;margin-top: 245px">
									<button style="margin-left: -255px; margin-top:60px" type="button" id="ok" 
										onclick="submitStatus()"	class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
									<button style="margin-left: 10px; margin-top: 60px" type="button" id="oksss" 
										class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>  
<!--应急救援预案分类管理编辑 -->
<form name="editPlan" class="form-horizontal" id="editPlan" action="#" method="post" enctype="multipart/form-data">
	<div class="modal fade bs-example-modal-sm" id="editChild" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 550px; height: 500px;">
			<div class="modal-content">
				<div class="col-md-6" style="margin-left: 65px;width: 374px;margin-top: 10px">
					<input type="hidden" name="projectId" id="id" >
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-4 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">预案编号：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<input type="text" class="form-control input-radius"
										id="projectCode" name="projectCode"
										aria-describedby="sizing-addon2" value="A001" required="required">
								</div>
						</div>
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-4 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">预案名称：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<input type="text" class="form-control input-radius"
										id="projectCode" name="projectCode"
										aria-describedby="sizing-addon2" value="航空器紧急事件" required="required" style="width: 220px">
								</div>
						</div>
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-4 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">预案简介：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<textarea class="form-control input-radius"
										id="applyReason" name="applyReason" placeholder="请输入预案简介"
										aria-describedby="sizing-addon2" style="margin-top: -6px;width: 290px;height: 80px">可以通过应急救援预案管理实现</textarea>
								</div>
						</div>
					</div>
					<div class="form-group">
						<div style="margin-left: 35%;" >
							<div style="margin-left: 41%;margin-top: 245px">
								<button style="margin-left: -255px; margin-top:60px" type="button" id="ok" 
									onclick="submitStatus()"	class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
								<button style="margin-left: 10px; margin-top: 60px" type="button" id="oksss" 
									class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form> 
<!--选择预案类型 -->
<form name="editPlan" class="form-horizontal" id="selectPlan" action="#" method="post" enctype="multipart/form-data">
	<div class="modal fade bs-example-modal-sm" id="selectPlans" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" >
			<div class="modal-content" style="height: 220px">
				<div class="col-md-6" style="margin-left: 22%;width: 374px;margin-top: 10%">
					<input type="hidden" name="projectId" id="id" >
					<button type="button" id="addPlanBtn"  onclick="window.location.href='addPlan.jsp'" class="sbtn sbtn-blue" style="margin-left: 0px;margin-top:0px">
           				 上传预案文件</button>
					<button type="button" id="addPlanBtn"  onclick="window.location.href='addNewPlan.jsp'" class="sbtn sbtn-blue" style="margin-left: 15%;margin-top:0px">
           				 自定义预案信息</button>
				</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: -50%;margin-top: 245px">
							<button style="margin-left: 41%; margin-top: -17%" type="button" id="oksss" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
						</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>

<!--应急救援预案事件分类管理编辑 --> 
<form name="editPlan" class="form-horizontal" id="editPlan" action="#" method="post" enctype="multipart/form-data">
	<div class="modal fade bs-example-modal-sm" id="editEvent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 550px; height: 500px;">
			<div class="modal-content">
				<div class="col-md-6" style="margin-left: 65px;width: 374px;margin-top: 10px">
					<input type="hidden" name="projectId" id="id" >
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">事件分类编号：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<input type="text" class="form-control input-radius"
										id="projectCode" name="projectCode"
										aria-describedby="sizing-addon2" value="A001" required="required">
								</div>
						</div>
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">事件分类名称：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<input type="text" class="form-control input-radius"
										id="projectCode" name="projectCode"
										aria-describedby="sizing-addon2" value="航空器紧急事件" required="required" style="width: 220px">
								</div>
						</div>
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">事件分类简介：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<textarea class="form-control input-radius"
										id="applyReason" name="applyReason" placeholder="请输入预案简介"
										aria-describedby="sizing-addon2" style="margin-top: -6px;width: 290px;height: 80px">可以通过应急救援预案管理实现</textarea>
								</div>
						</div>
					</div>
					<div class="form-group">
						<div style="margin-left: 35%;" >
							<div style="margin-left: 41%;margin-top: 245px">
								<button style="margin-left: -255px; margin-top:60px" type="button" id="ok" 
									onclick="submitStatus()"	class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
								<button style="margin-left: 10px; margin-top: 60px" type="button" id="oksss" 
									class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form> 
<!--应急救援预案分类维护-->
	<div  class="col-md-9"  id="content_1" style="width:73%;margin-top: -13pxl;display: none;margin-top: -13px " >
		<div class="portlet box blue-hoki">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>应急救援预案分类管理
				</div>
			</div>
			<div class="portlet-body form" style="width:100%;"> 						
				<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
           			 <div class="form-group" style="line-height: 50px;margin-top:-8px">
              			  预案名称：<input type="text" class="form-control" id="projectName" placeholder="请输入预案名称">
           			 </div>
            		<button type="button" id="searchBtnn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            		查询</button>
            		<button type="button" id="addPlanBtn"  onclick="addPlanApp()" class="sbtn sbtn-blue" style="margin-left: 40.5%;margin-top:-5px">
          			新增</button>
            		<button type="button" id="addPlanBtn"  onclick="editapp()" class="sbtn sbtn-blue" style="margin-top:-5px">
           			编辑</button>
           			<button type="button" id="resetBtn"   class="sbtn sbtn-blue" style="margin-top:-5px">
           			删除</button>
        		</form>
			</div>						
				<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
				<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
		</div>
	</div>	
<!-- 应急救援预案维护		 -->			
	<div  class="col-md-9"  id="content_3" style="width:73%;margin-top: -13px " >
		<div class="portlet box blue-hoki">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>应急救援预案维护
				</div>
			</div>
			<div class="portlet-body form" style="width:100%;"> 						
				<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
           			 <div class="form-group" style="line-height: 50px;margin-top:-8px">
              			  预案名称：<input type="text" class="form-control" id="projectName" placeholder="请输入预案名称">
            		</div>
            		<div class="form-group" style="line-height: 50px;margin-top:-8px">
							发布状态：
							<select id="fontFamily" class="form-control">
								<option>请选择</option>
								<option>已发布</option>
								<option>未发布</option>
							</select>
            		</div>
            		<button type="button" id="searchBtn" class="sbtn sbtn-blue"  onclick="window.location.reload()" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
           			 查询</button>
            		<button type="button" id="addPlanBtn"  onclick="window.location.href='addPlanII.jsp'" class="sbtn sbtn-blue" style="margin-left: 15%;margin-top:-5px">
           			新增</button>
            		<button type="button" id="editPlanBtn"     class="sbtn sbtn-blue" style="margin-top:-5px">
           			编辑</button>
           			<button type="button" id="copyPlanBtn"    class="sbtn sbtn-blue" style="margin-top:-5px">
           			复制</button>
           			<button type="button" id="resetBtnnn" class="sbtn sbtn-blue" style="margin-top:-5px">
           			删除</button>
       			 </form>
			</div>
			<div id="policehold_411" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
			<div id="police_411" class="dlshouwen-grid-toolbar-container"></div>
			
		</div>
	</div>		
<!--应急救援预案事件分类-->				
	<div  class="col-md-9"  id="content_2" style="width:73%; display: none;margin-top: -13px" >
		<div class="portlet box blue-hoki">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>应急救援事件分类管理
				</div>
			</div>
			<div class="portlet-body form" style="width:100%;"> 						
				<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
           			 <div class="form-group" style="line-height: 50px;margin-top:-8px">
              		  预案名称：<input type="text" class="form-control" id="projectName" placeholder="请输入预案名称">
           			 </div>
						<button type="button" id="searchBtn" class="sbtn sbtn-blue"  onclick="window.location.reload()" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
						 查询</button>
            			<button type="button" id="addEventBtn"  onclick="addEventApp()" class="sbtn sbtn-blue" style="margin-left: 40.5%;margin-top:-5px">
          				  新增</button>
   						<button type="button" id="addPlanBtn"  onclick="editEventapp()" class="sbtn sbtn-blue" style="margin-top:-5px">
  						编辑</button>
  						<button type="button" id="resetBtnn" class="sbtn sbtn-blue" style="margin-top:-5px">
  						删除</button>
        		</form>
			</div>
						<div id="policehold_311" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
						<div id="police_311" class="dlshouwen-grid-toolbar-container"></div>
					</div>
				</div>			
			</div>
		</div>
	</div>
</div>
<!-- 预案复制模态框 -->
<div class="modal fade bs-example-modal-sm" id="copyPlan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
			<div class="col-md-6" style="margin-left: 85px;width: 374px;margin-top: 26px">
					<div class="form-group">
						<span for="outerLeader" class="col-sm-6 control-label" style="width:400px; margin-top: 15px;font-weight: bolder;font-size: 18px;margin-left: 16%" >是否选择该预案进行复制？</span>
						</div>					
					</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 125px">
							<button style="margin-left: -70%; margin-top: -40px" type="button" id="okCopy" 
								class="sbtn sbtn-blue" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 8%; margin-top: -40px" type="button" 
							class="sbtn sbtn-default" onclick="window.location.reload()" data-dismiss="modal"><i class="fa fa-send-o"></i>取消</button>
								
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
						<span for="outerLeader" class="col-sm-6 control-label" style="width:400px; margin-top: 15px;font-weight: bolder;font-size: 18px;margin-left: 26%" >是否发布该预案？</span>
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
						<span for="outerLeader" class="col-sm-6 control-label" style="width:400px; margin-top: 15px;font-weight: bolder;font-size: 18px;margin-left: 30%" >是否取消发布？</span>
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
<script type="text/javascript" src="<%=path %>/businessJs/mainrainPlantree.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	var datas = [
{ "id":"A001" , "name":"综合预案","time":"2018年1月","session":"可以通过应急救援预案管理实现"},
{ "id":"A002" , "name":"一级专项预案","time":"2018年1月","session":"可以通过应急救援预案管理实现"},
{ "id":"A002" , "name":"二级专项预案","time":"2018年1月","session":"可以通过应急救援预案管理实现"},

];
	var gridColumns_2_1_1 = [
	                     	{id:'id', title:'预案编号', type:'number', columnClass:'text-center'},
	                     	{id:'name', title:'预案名称', type:'string', columnClass:'text-center'},
	                     	{id:'time', title:'修改时间', type:'string', columnClass:'text-center'},
	                     	{id:'session', title:'预案简介', type:'string', columnClass:'text-center'},
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
	                     	tools : 'refresh',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_2_1_1 = $.fn.dlshouwen.grid.init(gridOption_2_1_1);
    	                     $(function(){
    	                     	grid_2_1_1.load();
    	                     });
    	                     
    	                     $("#resetBtn").click(function(){
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
	                  
 });
$(document).ready(function() {
	
	var datas = [
		{ "id":"A001" , "name":"航空器失事应急处置预案","time":"2018年1月","edition":"V1.0","issuestaus":"1"},
		{ "id":"A002" , "name":"航空器空中遇险应急处置预案","time":"2018年1月","edition":"V1.0","issuestaus":"1"},
		{ "id":"A003" , "name":"航空器地面事故救援应急处置预案","time":"2018年1月","edition":"V1.0","issuestaus":"1"},
		{ "id":"A004" , "name":"航空器跑道事件应急处置预案","time":"2018年1月","edition":"V1.0","issuestaus":"0"},
		{ "id":"A005" , "name":"航空器火警应急处置预案","time":"2018年1月","edition":"V1.0","issuestaus":"0"},
		{ "id":"A006" , "name":"航空器滑行道突发事件应急处置预案","time":"2018年1月","edition":"V1.0","issuestaus":"0"},
		{ "id":"A007" , "name":"低能见度航空器突发事件应急处置预案","time":"2018年1月","edition":"V1.0","issuestaus":"0"},

		];;
	var gridColumns_4_1_1 = [
							{id:'id', title:'预案编号', type:'number', columnClass:'text-center'},
					     	{id:'name', title:'预案名称', type:'string', columnClass:'text-center',
					     		resolution : function(value, record, column, grid, dataNo, columnNo) {
									var content = '';
										content += '<a href="checkPlan.jsp">' + record.name + '</a>';
									return content;
								}
					     	},
					     	{id:'time', title:'上传时间', type:'string', columnClass:'text-center'},
					     	{id:'edition', title:'版本', type:'string', columnClass:'text-center',
					     		resolution : function(value, record, column, grid, dataNo, columnNo) {
									var content = '';
										content += '<a href="planVersion.jsp">' + record.edition + '</a>';
									return content;
					     		}
					     	},
					     	{id:'issuestaus', title:'发布状态', type:'string', columnClass:'text-center',
					     		resolution : function(value, record, column, grid, dataNo, columnNo) {			
					     			var content = '';
									if(record.issuestaus == '1'){
										content += '<span style="color: green;font-family: Microsoft Yahei;">' +'已发布'+ '</span>';
									}
									else if (record.issuestaus == '0'){
										content += '<span style="color: #a1a1a1;font-family: Microsoft Yahei;">' +'未发布'+ '</span>';
									}
					                return content
					     		}
					     	},
					     	{id:'operation', title:'操作', type:'string', columnClass:'text-center',
					     		resolution : function(value, record, column, grid, dataNo, columnNo) {	
									var content = '';
									if(record.issuestaus == '0'){
					                	content += "<button class='sbtn sbtn-blue btn-sm'  id='issueBtn' "
					                    + "onclick=issueApp('"
					                    + record.id
					                    + "');>发布</button>";
					                	return content;
					                }else if(record.issuestaus == '1'){
					                	content += "<button class='sbtn sbtn-blue btn-sm'  id='deletesOneBtn' "
					                        + "onclick=unissueApp('"
					                        + record.id
					                        + "');>取消发布</button>";
					                	return content;
					                }
									
					     		}
					     	},
	                     ];
	                     var gridOption_4_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	columns : gridColumns_4_1_1,
	                     	check:true,
	                     	gridContainer : 'policehold_411',
	                     	toolbarContainer : 'police_411',
	                     	tools : 'refresh',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_4_1_1 = $.fn.dlshouwen.grid.init(gridOption_4_1_1);
    	                     $(function(){
    	                     	grid_4_1_1.load();
    	                  	  console.log(datas[0].issuestaus);
    	                     });
    	                     $("#resetBtnnn").click(function(){
    	                    		var recordCount =grid_4_1_1.getCheckedRecords().length;
    	                    		 if (recordCount == 0) {
    	                    			 showMsg('请至少选择一条数据操作！',3);
    	     						}else {
    	     							// 获取所有复选框选中的数据
    	     						  		 var records = grid_4_1_1.getCheckedRecords();
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
    	     						    	grid_4_1_1.load();
    	     						   	 }else{
    	     						   	 	return false;
    	     						   	 }
    	     						}
    	                    	})
    	                    	$("#copyPlanBtn").click(function(){

    	                    		var recordCount =grid_4_1_1.getCheckedRecords().length;
    	                    		 if (recordCount == 0) {
    	                    			 showMsg('请选择一条相似预案！',1);
    	     						}else if( recordCount >1 ){
    	     							showMsg('只能选择一条预案！',1);
    	     						}else if (recordCount == 1){
    	     							// 获取所有复选框选中的数据
    	     						  	 var records = grid_4_1_1.getCheckedRecords();
    	     						     var ids = [];
    	     						   	 $("#copyPlan").modal();
    	     						   	
    	     						}
    	                    	})
    	                    	
    	                    	$("#editPlanBtn").click(function(){
    	                    		var recordCount =grid_4_1_1.getCheckedRecords().length;
    	                    		 if (recordCount == 0) {
    	                    			 showMsg('请选择一条预案！',1);
    	     						}else if( recordCount >1 ){
    	     							showMsg('只能选择一条预案！',1);
    	     						}else if (recordCount == 1){
    	     							// 获取所有复选框选中的数据
    	     						  	 var records = grid_4_1_1.getCheckedRecords();
    	     						     var ids = [];
    	     						     window.location.href='editPlanII.jsp'
    	     						   	
    	     						}
    	                    	})
    	                    	 $("#okCeshi").click(function(){
    	                    		 var id = $("#fds").val();
	    	                    	console.log(datas);
								     for(var i = 0 ;i < datas.length; i++ ){
											if(datas[i].id == id){
												datas[i].issuestaus = 1;
											}
								     }
								     grid_4_1_1.load();

							})
							 $("#noOkCeshi").click(function(){
    	                    		 var id = $("#qwe").val();
	    	                    	console.log(datas);
								     for(var i = 0 ;i < datas.length; i++ ){
											if(datas[i].id == id){
												datas[i].issuestaus = 0;
											}
								     }
								     grid_4_1_1.load();

							})
	                    		
 });
 
$(document).ready(function() {
	
	var datas = [
{ "id":"A001" , "name":"航空器紧急事件","time":"2018年1月","session":"可以通过应急救援预案管理实现"},
{ "id":"A002" , "name":"非航空器紧急事件","time":"2018年1月","session":"可以通过应急救援预案管理实现"},

];
	var gridColumns_3_1_1 = [
	                     	{id:'id', title:'事件编号', type:'number', columnClass:'text-center'},
	                     	{id:'name', title:'事件名称', type:'string', columnClass:'text-center'},
	                     	{id:'time', title:'修改时间', type:'string', columnClass:'text-center'},
	                     	{id:'session', title:'事件简介', type:'string', columnClass:'text-center'},
/*  	                     	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
 	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
                  			        var content = ''; 	                     			
                  			      content += "<button class='sbtn  sbtn-default btn-sm' id='editBtns' "
           	                         + "onclick=editapps('"
           	                         + "'); >编辑</button>";	   	                     			
                  			        content += '<a onclick="fn();"><button  class="sbtn sbtn-blue">删除</button></a>'; 
                  			          
                  			        return content;                     			
                  			    }		
 	                     	} */
	                     ];
	                     var gridOption_3_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	columns : gridColumns_3_1_1,
	                     	gridContainer : 'policehold_311',
	                     	toolbarContainer : 'police_311',
	                     	check:true,
	                     	tools : 'refresh',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_3_1_1 = $.fn.dlshouwen.grid.init(gridOption_3_1_1);
    	                     $(function(){
    	                     	grid_3_1_1.load();
    	                     });
    	                     $("#resetBtnn").click(function(){
 	                    		var recordCount =grid_3_1_1.getCheckedRecords().length;
 	                    		 if (recordCount == 0) {
 	                    			 showMsg('请至少选择一条数据操作！',3);
 	     						}else {
 	     							// 获取所有复选框选中的数据
 	     						  		 var records = grid_3_1_1.getCheckedRecords();
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
 	     						    	grid_3_1_1.load();
 	     						   	 }else{
 	     						   	 	return false;
 	     						   	 }
 	     						}
 	                    	})
	                  
 });
 

  function addPlanApp(){
	  $("#addChild").modal();
  }
  function editapp(){
	  $("#editChild").modal();
  }
  function editapps(){
	 $("#editChilds").modal(); 
  }
  function addEventApp(){
	  $("#addEvents").modal();
  }
  function editEventapp(){
	  $("#editEvent").modal();
  }
  function selectPlans(){
	  $("#selectPlans").modal();
  }
 /*  发布预案 */
  function issueApp(id){
	$("#fds").val(id);
	$("#ceshi").modal();
	 


  }
/* 取消发布预案 */
  function unissueApp(id){
	  $("#qwe").val(id);
	  $("#ceshiII").modal();
  }
  
 function searchEventApp(){
	 alert("11");
 }
 $("#okCopy").click(function(){
	 window.location.href='editPlanII.jsp'
 })
 
 
 
 

</script>		
		
</body>
</html>