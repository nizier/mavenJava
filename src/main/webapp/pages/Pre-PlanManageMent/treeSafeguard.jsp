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
<a href="#">目录树管理</a>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
    <div class="col-md-3" style="width: 24%">
       <div class="portlet blue-hoki box" >
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>目录树管理							
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
		<div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">新增目录</h4>
		        </div>
		<div class="col-md-6" style="margin-left: 70px;width: 374px;margin-top: 10px">
		
				<input type="hidden" name="projectId" id="id" >
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">目录分类：</span>
					<div class="col-md-6" style="margin-top: 30px" >
						<select  class="form-control"  disabled="true">
							<option>预案分类</option>
							
						</select>
					</div>
				</div> 
					<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">目录名称：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<input type="text" class="form-control input-radius"
							id="projectCode" name="projectCode"
							aria-describedby="sizing-addon2" required="required">
					</div>
				</div>
				
					<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">显示顺序：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<input type="text" class="form-control input-radius"
							id="projectCode" name="projectCode"
							aria-describedby="sizing-addon2" required="required">
					</div>
				</div>
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">目录描述：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<textarea class="form-control input-radius"
							id="applyReason" name="applyReason" placeholder="请输入目录描述"
							aria-describedby="sizing-addon2"  style="margin-top: -6px;width: 290px;height: 80px"></textarea>
					</div>
				</div>
				<hr style="margin-left:-84px;width: 159%">
				</div>
				
			<div class="form-group">
			
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 245px">
							<button style="margin-left: -255px; margin-top:150px" type="button" id="ok" 
							onclick="submitStatus()"	class="sbtn sbtn-blue" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 10px; margin-top: 150px" type="button" id="oksss" 
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
		<div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">新增目录</h4>
		        </div>
		<div class="col-md-6" style="margin-left: 70px;width: 374px;margin-top: 10px">
				<input type="hidden" name="projectId" id="id" >
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">目录分类：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<select  class="form-control"  >
							<option>预案分类</option>
							<option>资源分类</option>
							<option>应急救援队伍分类</option>
						</select>
					</div>
				</div> 
					<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">目录名称：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<input type="text" class="form-control input-radius"
							id="projectCode" name="projectCode"
							aria-describedby="sizing-addon2" required="required">
					</div>
				</div>
					<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">显示顺序：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<input type="text" class="form-control input-radius"
							id="projectCode" name="projectCode"
							aria-describedby="sizing-addon2" required="required">
					</div>
				</div>
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">目录描述：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<textarea class="form-control input-radius"
							id="applyReason" name="applyReason" placeholder="请输入目录描述"
							aria-describedby="sizing-addon2"  style="margin-top: -6px;width: 290px;height: 80px"></textarea>
					</div>
				</div>
					<hr style="margin-left:-84px;width: 159%">
				</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 245px">
							<button style="margin-left: -255px; margin-top:150px" type="button" id="ok" 
							onclick="submitStatus()"	class="sbtn sbtn-blue" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 10px; margin-top: 150px" type="button" id="oksss" 
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
		<div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">编辑目录</h4>
		        </div>
		<div class="col-md-6" style="margin-left: 65px;width: 374px;margin-top: 10px">
		
				<input type="hidden" name="projectId" id="id" >
					<div class="form-group" >
					<span for="outerLeader" class="col-sm-4 control-label" style="margin-top: 25px;margin-left: 9px;font-weight: bolder;">目录名称：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<input type="text" class="form-control input-radius"
							id="projectCode" name="projectCode"
							aria-describedby="sizing-addon2" value="A001" required="required">
					</div>
				</div>
					<div class="form-group" >
					<span for="outerLeader" class="col-sm-4 control-label" style="margin-top: 25px;margin-left: 9px;font-weight: bolder;">显示顺序：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<input type="text" class="form-control input-radius"
							id="projectCode" name="projectCode"
							aria-describedby="sizing-addon2" value="航空器紧急事件" required="required" style="width: 220px">
					</div>
				</div>
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-4 control-label" style="margin-top: 25px;margin-left: 9px;font-weight: bolder;">目录描述：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<textarea class="form-control input-radius"
							id="applyReason" name="applyReason" placeholder="请输入预案简介"
							aria-describedby="sizing-addon2" style="margin-top: -6px;width: 290px;height: 80px">可以通过应急救援预案管理实现</textarea>
					</div>
				</div>
					<hr style="margin-left:-80px;width: 159%">
				</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 245px">
							<button style="margin-left: -255px; margin-top:60px" type="button" id="ok" 
							onclick="submitStatus()"	class="sbtn sbtn-blue" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 10px; margin-top: 60px" type="button" id="oksss" 
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
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">目录名称：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<input type="text" class="form-control input-radius"
							id="projectCode" name="projectCode"
							aria-describedby="sizing-addon2" value="A001" required="required">
					</div>
				</div>
					<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">显示顺序：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<input type="text" class="form-control input-radius"
							id="projectCode" name="projectCode"
							aria-describedby="sizing-addon2" value="航空器紧急事件" required="required" style="width: 220px">
					</div>
				</div>
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">目录描述：</span>
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
   <div  class="col-md-9"  id="content_1" style="width:75%;margin-top: -13px" >
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list" ></i>目录树
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                目录名称：<input type="text" class="form-control" id="projectName" placeholder="请输入目录名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
           	<button type="button" id="resetBtn"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	删除</button>
           	<button type="button" id="updates"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	编辑</button>
             <button type="button" id="addPlanBtn"  onclick="addEventApp()" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            新增</button>
        </form>
</form>
</div>
							
<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div>	
<!-- 应急救援预案维护		 -->			
<div  class="col-md-9"  id="content_3" style="width:75%;margin-top: -13px;display: none " >
	<div class="portlet box blue-hoki">
		<div class="portlet-title">
			<div class="caption"  id="title" >
				<i class="fa fa-th-list" ></i>综合预案
			</div>
		</div>
		<div class="portlet-body form" style="width:100%;"> 						
		<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                预案名称：<input type="text" class="form-control" id="projectName" placeholder="请输入预案名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            	<button type="button" id="resetBtn4"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	删除</button>
           	<button type="button" id="updates4"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	编辑</button>
             <button type="button" id="addPlanBtn"  onclick="addPlanApp()" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            新增</button>
        </form>
</form>
</div>
							
<div id="policehold_411" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_411" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div>	
<!-- 资源维护		 -->			
 <div  class="col-md-9"  id="content_5" style="width:75%;margin-top: -13px;display: none " >
		<div class="portlet box blue-hoki" >
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list" ></i>资源分类
				</div>
			</div>
			<div class="portlet-body form" style="width:100%;"> 						
			<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline" >
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                资源名称：<input type="text" class="form-control" id="projectName" placeholder="请输入资源名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            	<button type="button" id="resetBtn5"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	删除</button>
           	<button type="button" id="updates5"  class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	编辑</button>
             <button type="button" id="addPlanBtn"  onclick="addPlanApp()" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            新增</button>
        </form>
</form>
</div>
							
<div id="policehold_511" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_511" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div> 
<!-- 急救		 -->			
 <div  class="col-md-9"  id="content_6" style="width:75%;margin-top: -13px;display: none " >
		<div class="portlet box blue-hoki" >
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list" ></i>急救
				</div>
			</div>
			<div class="portlet-body form" style="width:100%;"> 						
			<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline" >
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                资源名称：<input type="text" class="form-control" id="projectName" placeholder="请输入资源名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            	<button type="button" id="resetBtn6"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	删除</button>
           	<button type="button" id="updates6"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	编辑</button>
             <button type="button" id="addPlanBtn"  onclick="addPlanApp()" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            新增</button>
        </form>
</form>
</div>
							
<div id="policehold_611" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_611" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div> 
<!-- 应急救援队伍分类		 -->			
 <div  class="col-md-9"  id="content_7" style="width:75%;margin-top: -13px;display: none " >
		<div class="portlet box blue-hoki" >
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list" ></i>应急救援队伍分类
				</div>
			</div>
			<div class="portlet-body form" style="width:100%;"> 						
			<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline" >
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                队伍名称：<input type="text" class="form-control" id="projectName" placeholder="请输入队伍名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            	<button type="button" id="resetBtn7"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	删除</button>
           	<button type="button" id="updates7"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	编辑</button>
             <button type="button" id="addPlanBtn"  onclick="addPlanApp()" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            新增</button>
        </form>
</form>
</div>
							
<div id="policehold_711" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_711" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div> 
<!-- 设备救援		 -->			
 <div  class="col-md-9"  id="content_8" style="width:75%;margin-top: -13px;display: none " >
		<div class="portlet box blue-hoki" >
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list" ></i>设备救援
				</div>
			</div>
			<div class="portlet-body form" style="width:100%;"> 						
			<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline" >
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                队伍名称：<input type="text" class="form-control" id="projectName" placeholder="请输入队伍名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
            	<button type="button" id="resetBtn8"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	删除</button>
           	<button type="button" id="updates8"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	编辑</button>
             <button type="button" id="addPlanBtn"  onclick="addPlanApp()" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            新增</button>
        </form>
</form>
</div>
							
<div id="policehold_811" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_811" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div>
<!--应急救援预案事件分类-->				
	<div  class="col-md-9"  id="content_2" style="width:75%;margin-top: -13px;display: none "  >
	<div class="portlet box blue-hoki">
		<div class="portlet-title">
			<div class="caption"  id="title">
				<i class="fa fa-th-list"></i>预案分类
			</div>
		</div>
		<div class="portlet-body form" style="width:100%;"> 						
		<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post" >	
	  <form class="form-inline" >
            <div class="form-group" style="line-height: 50px;margin-top:-8px" >
                预案名称：<input type="text" class="form-control" id="projectName" placeholder="请输入预案名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
           	<button type="button" id="resetBtn3"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	删除</button>
           	<button type="button" id="updates3"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
           	编辑</button>
             <button type="button" id="addPlanBtn"  onclick="addPlanApp()" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            新增</button>
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
<script type="text/javascript" src="<%=path %>/businessJs/treeSafeTree.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	var datas = [
		{ "id":"A002" , "name":"综合预案","time":"2018年1月","edition":"1"},
		{ "id":"A002" , "name":"专项预案","time":"2018年1月","edition":"2"},
		{ "id":"A003" , "name":"部门预案","time":"2018年1月","edition":"2"},
		];;
	var gridColumns_3_1_1 = [
							{id:'id', title:'序号', type:'number', columnClass:'text-center'},
							/* {id:'ids', title:'父节点ID', type:'number', columnClass:'text-center'}, */
					     	{id:'name', title:'目录名称', type:'string', columnClass:'text-center',
					     		resolution : function(value, record, column, grid, dataNo, columnNo) {
									var content = '';
										content += '<a href="#">' + record.name + '</a>';
									return content;
								}
					     	},
					    	/* {id:'names', title:'描述', type:'number', columnClass:'text-center'}, */
					     	{id:'time', title:'创建时间', type:'string', columnClass:'text-center'},
					     	{id:'edition', title:'显示顺序', type:'string', columnClass:'text-center',
					     		resolution : function(value, record, column, grid, dataNo, columnNo) {
									var content='';
									content += "<input type='text' style='width:50px;	text-align: center;' name='edition' " 
				    					+ " value='"
				    					+ record.edition
				    					+ "';>";
									return content;
								}},
					/* 	 	                     	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
					      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
								        var content = ''; 	                     			
								    	content += "<button class='sbtn  sbtn-default btn-sm' id='editBtn' "
					                     + "onclick=editapp('"
					                     + "'); >编辑</button>";	                     			
								        content += '  ';	                     			
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
	                     	check:true,
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
    	                     $("#resetBtn3").click(function(){
        	                 		//alert("111");
        	                 		var recordCount =grid_3_1_1.getCheckedRecords().length;
        	                 		 if (recordCount == 0) {
        	                 			 showMsg('请至少选择一条数据操作！',3);
        	                 		 } else {
        	                 			alert("删除成功");
        	                 			 
        	                 		 }
        	                 	})
        	                 	$("#updates3").click(function(){
        	                 		var recordCounts =grid_3_1_1.getCheckedRecords().length;
        	                 		 if (recordCounts != 1) {
        	                 			 showMsg('请选择一条数据操作！',3);
        	                 		 } else {
        	                 			 $("#editChild").modal();
        	                 		 }
        	                 	})
	                  
 });
$(document).ready(function() {
	
	var datas = [
		{ "id":"A002" , "name":"航空器紧急事件","time":"2018年1月","edition":"1"},
		{ "id":"A002" , "name":"非航空器紧急事件","time":"2018年1月","edition":"2"},
		];;
	var gridColumns_4_1_1 = [
							{id:'id', title:'序号', type:'number', columnClass:'text-center'},
					     	{id:'name', title:'目录名称', type:'string', columnClass:'text-center',
					     		resolution : function(value, record, column, grid, dataNo, columnNo) {
									var content = '';
										content += '<a href="#">' + record.name + '</a>';
									return content;
								}
					     	},
					     	{id:'time', title:'创建时间', type:'string', columnClass:'text-center'},
					     	{id:'edition', title:'显示顺序', type:'string', columnClass:'text-center',
					     		resolution : function(value, record, column, grid, dataNo, columnNo) {
									var content='';
									content += "<input type='text' style='width:50px;	text-align: center;' name='edition' " 
				    					+ " value='"
				    					+ record.edition
				    					+ "';>";
									return content;
								}},
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
    	                     });
    	                     $("#resetBtn4").click(function(){
       	                 		//alert("111");
       	                 		var recordCount =grid_4_1_1.getCheckedRecords().length;
       	                 		 if (recordCount == 0) {
       	                 			 showMsg('请至少选择一条数据操作！',3);
       	                 		 } else {
       	                 			alert("删除成功");
       	                 			 
       	                 		 }
       	                 	})
       	                 	$("#updates4").click(function(){
       	                 		var recordCounts =grid_4_1_1.getCheckedRecords().length;
       	                 		 if (recordCounts != 1) {
       	                 			 showMsg('请选择一条数据操作！',3);
       	                 		 } else {
       	                 			 $("#editChild").modal();
       	                 		 }
       	                 	})
	                  
 });
$(document).ready(function() {
	
	var datas = [
		{ "id":"B001" , "name":"急救","time":"2018年1月","edition":"1"},
		{ "id":"B002" , "name":"消防","time":"2018年1月","edition":"2"},
	];
	var gridColumns_5_1_1 = [
		{id:'id', title:'序号', type:'number', columnClass:'text-center'},
		{id:'name', title:'目录名称', type:'string', columnClass:'text-center',
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content = '';
					content += '<a href="#">' + record.name + '</a>';
				return content;
			}},
		{id:'time', title:'创建时间', type:'string', columnClass:'text-center'},
		{id:'edition', title:'显示顺序', type:'string', columnClass:'text-center'
			,
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content='';
				content += "<input type='text' style='width:50px;	text-align: center;' name='edition' " 
					+ " value='"
					+ record.edition
					+ "';>";
				return content;
			}},
	];
	                     var gridOption_5_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	columns : gridColumns_5_1_1,
	                     	check:true,
	                     	gridContainer : 'policehold_511',
	                     	toolbarContainer : 'police_511',
	                     	tools : 'refresh',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_5_1_1 = $.fn.dlshouwen.grid.init(gridOption_5_1_1);
    	                     $(function(){
    	                     	grid_5_1_1.load();
    	                     });
    	                     $("#resetBtn5").click(function(){
      	                 		//alert("111");
      	                 		var recordCount =grid_5_1_1.getCheckedRecords().length;
      	                 		 if (recordCount == 0) {
      	                 			 showMsg('请至少选择一条数据操作！',3);
      	                 		 } else {
      	                 			alert("删除成功");
      	                 			 
      	                 		 }
      	                 	})
      	                 	$("#updates5").click(function(){
      	                 		var recordCounts =grid_5_1_1.getCheckedRecords().length;
      	                 		 if (recordCounts != 1) {
      	                 			 showMsg('请选择一条数据操作！',3);
      	                 		 } else {
      	                 			 $("#editChild").modal();
      	                 		 }
      	                 	})
	                  
 });
$(document).ready(function() {
	
	var datas = [
		{ "id":"B001" , "name":"救援车辆","time":"2018年1月","edition":"1"},
		{ "id":"B002" , "name":"生命救助","time":"2018年1月","edition":"2"},
		{ "id":"B002" , "name":"防护用品","time":"2018年1月","edition":"3"},
	];
	var gridColumns_6_1_1 = [
		{id:'id', title:'序号', type:'number', columnClass:'text-center'},
		{id:'name', title:'目录名称', type:'string', columnClass:'text-center',
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content = '';
					content += '<a href="#">' + record.name + '</a>';
				return content;
			}},
		{id:'time', title:'创建时间', type:'string', columnClass:'text-center'},
		{id:'edition', title:'显示顺序', type:'string', columnClass:'text-center'
			,
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content='';
				content += "<input type='text' style='width:50px;	text-align: center;' name='edition' " 
					+ " value='"
					+ record.edition
					+ "';>";
				return content;
			}},
	];
	                     var gridOption_6_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	columns : gridColumns_6_1_1,
	                     	check:true,
	                     	gridContainer : 'policehold_611',
	                     	toolbarContainer : 'police_611',
	                     	tools : 'refresh',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_6_1_1 = $.fn.dlshouwen.grid.init(gridOption_6_1_1);
    	                     $(function(){
    	                     	grid_6_1_1.load();
    	                     });
    	                     $("#resetBtn6").click(function(){
     	                 		//alert("111");
     	                 		var recordCount =grid_6_1_1.getCheckedRecords().length;
     	                 		 if (recordCount == 0) {
     	                 			 showMsg('请至少选择一条数据操作！',3);
     	                 		 } else {
     	                 			alert("删除成功");
     	                 			 
     	                 		 }
     	                 	})
     	                 	$("#updates6").click(function(){
     	                 		var recordCounts =grid_6_1_1.getCheckedRecords().length;
     	                 		 if (recordCounts != 1) {
     	                 			 showMsg('请选择一条数据操作！',3);
     	                 		 } else {
     	                 			 $("#editChild").modal();
     	                 		 }
     	                 	})
	                  
 });
$(document).ready(function() {
	
	var datas = [
		{ "id":"C001" , "name":"设备救援","time":"2018年1月","edition":"1"},
		{ "id":"C002" , "name":"紧急救援","time":"2018年1月","edition":"2"},
	];
	var gridColumns_7_1_1 = [
		{id:'id', title:'序号', type:'number', columnClass:'text-center'},
		{id:'name', title:'目录名称', type:'string', columnClass:'text-center',
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content = '';
					content += '<a href="#">' + record.name + '</a>';
				return content;
			}},
		{id:'time', title:'创建时间', type:'string', columnClass:'text-center'},
		{id:'edition', title:'显示顺序', type:'string', columnClass:'text-center'
			,
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content='';
				content += "<input type='text' style='width:50px;	text-align: center;' name='edition' " 
					+ " value='"
					+ record.edition
					+ "';>";
				return content;
			}},
	];
	                     var gridOption_7_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	columns : gridColumns_7_1_1,
	                     	check:true,
	                     	gridContainer : 'policehold_711',
	                     	toolbarContainer : 'police_711',
	                     	tools : 'refresh',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_7_1_1 = $.fn.dlshouwen.grid.init(gridOption_7_1_1);
    	                     $(function(){
    	                     	grid_7_1_1.load();
    	                     });
    	                     $("#resetBtn7").click(function(){
     	                 		//alert("111");
     	                 		var recordCount =grid_7_1_1.getCheckedRecords().length;
     	                 		 if (recordCount == 0) {
     	                 			 showMsg('请至少选择一条数据操作！',3);
     	                 		 } else {
     	                 			alert("删除成功");
     	                 			 
     	                 		 }
     	                 	})
     	                 	$("#updates7").click(function(){
     	                 		var recordCounts =grid_7_1_1.getCheckedRecords().length;
     	                 		 if (recordCounts != 1) {
     	                 			 showMsg('请选择一条数据操作！',3);
     	                 		 } else {
     	                 			 $("#editChild").modal();
     	                 		 }
     	                 	})
	                  
 });
$(document).ready(function() {
	
	var datas = [
		{ "id":"C001" , "name":"救援队1","time":"2018年1月","edition":"1"},
		{ "id":"C002" , "name":"救援队2","time":"2018年1月","edition":"2"},
		{ "id":"C001" , "name":"救援队3","time":"2018年1月","edition":"3"},
	];
	var gridColumns_8_1_1 = [
		{id:'id', title:'序号', type:'number', columnClass:'text-center'},
		{id:'name', title:'目录名称', type:'string', columnClass:'text-center',
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content = '';
					content += '<a href="#">' + record.name + '</a>';
				return content;
			}},
		{id:'time', title:'创建时间', type:'string', columnClass:'text-center'},
		{id:'edition', title:'显示顺序', type:'string', columnClass:'text-center'
			,
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content='';
				content += "<input type='text' style='width:50px;	text-align: center;' name='edition' " 
					+ " value='"
					+ record.edition
					+ "';>";
				return content;
			}},
	];
	                     var gridOption_8_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	columns : gridColumns_8_1_1,
	                     	check:true,
	                     	gridContainer : 'policehold_811',
	                     	toolbarContainer : 'police_811',
	                     	tools : 'refresh',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_8_1_1 = $.fn.dlshouwen.grid.init(gridOption_8_1_1);
    	                     $(function(){
    	                     	grid_8_1_1.load();
    	                     });
    	                     $("#resetBtn8").click(function(){
     	                 		//alert("111");
     	                 		var recordCount =grid_8_1_1.getCheckedRecords().length;
     	                 		 if (recordCount == 0) {
     	                 			 showMsg('请至少选择一条数据操作！',3);
     	                 		 } else {
     	                 			alert("删除成功");
     	                 			 
     	                 		 }
     	                 	})
     	                 	$("#updates8").click(function(){
     	                 		var recordCounts =grid_8_1_1.getCheckedRecords().length;
     	                 		 if (recordCounts != 1) {
     	                 			 showMsg('请选择一条数据操作！',3);
     	                 		 } else {
     	                 			 $("#editChild").modal();
     	                 		 }
     	                 	})
	                  
 });
/* $(document).ready(function() {
	
	var datas = [
		{ "id":"C001" , "name":"设备救援","time":"2018年1月","edition":"1"},
		{ "id":"C002" , "name":"紧急救援","time":"2018年1月","edition":"2"},
	];
	var gridColumns_7_1_1 = [
		{id:'id', title:'序号', type:'number', columnClass:'text-center'},
		{id:'name', title:'目录名称', type:'string', columnClass:'text-center',
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content = '';
					content += '<a href="#">' + record.name + '</a>';
				return content;
			}},
		{id:'time', title:'创建时间', type:'string', columnClass:'text-center'},
		{id:'edition', title:'显示顺序', type:'string', columnClass:'text-center'
			,
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content='';
				content += "<input type='text' style='width:50px' name='edition' " 
					+ " value='"
					+ record.edition
					+ "';>";
				return content;
			}},
	];
	                     var gridOption_7_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	columns : gridColumns_7_1_1,
	                     	check:true,
	                     	gridContainer : 'policehold_711',
	                     	toolbarContainer : 'police_711',
	                     	tools : '',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_7_1_1 = $.fn.dlshouwen.grid.init(gridOption_7_1_1);
    	                     $(function(){
    	                     	grid_7_1_1.load();
    	                     });
    	                     $("#resetBtn").click(function(){
     	                 		//alert("111");
     	                 		var recordCount =grid_7_1_1.getCheckedRecords().length;
     	                 		 if (recordCount == 0) {
     	                 			 showMsg('请至少选择一条数据操作！',3);
     	                 		 } else {
     	                 			alert("删除成功");
     	                 			 
     	                 		 }
     	                 	})
     	                 	$("#updates").click(function(){
     	                 		var recordCounts =grid_7_1_1.getCheckedRecords().length;
     	                 		 if (recordCounts != 1) {
     	                 			 showMsg('请选择一条数据操作！',3);
     	                 		 } else {
     	                 			 $("#editChild").modal();
     	                 		 }
     	                 	})
	                  
 }); */
$(document).ready(function() {
	
	var datas = [
		{ "id":"C001" , "name":"预案分类","time":"2018年1月","edition":"1"},
		{ "id":"C002" , "name":"资源分类","time":"2018年1月","edition":"2"},
		{ "id":"C001" , "name":"应急救援队伍分类","time":"2018年1月","edition":"3"},
	];
	var gridColumns_2_1_1 = [
		{id:'id', title:'序号', type:'number', columnClass:'text-center'},
		{id:'name', title:'目录名称', type:'string', columnClass:'text-center',
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content = '';
					content += '<a href="#">' + record.name + '</a>';
				return content;
			}},
		{id:'time', title:'创建时间', type:'string', columnClass:'text-center'},
		{id:'edition', title:'显示顺序', type:'string', columnClass:'text-center'
			,
     		resolution : function(value, record, column, grid, dataNo, columnNo) {
				var content='';
				content += "<input type='text' style='width:50px;	text-align: center;' name='edition' " 
					+ " value='"
					+ record.edition
					+ "';>";
				return content;
			}},
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
     	                 			 $("#editChild").modal();
     	                 		 }
     	                 	})
 	                  
	                  
 });
  /* function fn(){
	  confirm("是否删除？");
  } */
  function addPlanApp(){
	  $("#addChild").modal();
  }
 /*  function editapp(){
	  $("#editChild").modal();
  } */
  function editapps(){
	 $("#editChilds").modal(); 
  }
  function addEventApp(){
	  $("#addEvents").modal();
  }
  function editEventapp(){
	  $("#editEvent").modal();
  }


</script>		
		
</body>
</html>