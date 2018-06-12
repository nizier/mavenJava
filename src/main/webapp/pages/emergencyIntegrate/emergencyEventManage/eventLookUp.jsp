<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>添加设备</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet" href="<%=path %>/css/pagebar.css" />
<script type="text/javascript" src="<%=path%>/js/bootstrap-select.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=OlnDygyhVGjsqw9ucsUvYGs5ZzgeLxVD"></script>
<style>
.form-group {
	margin:30px;
}
</style>
<script type="text/javascript">
	$(window).on('load', function() {

		$('.selectpicker').selectpicker({
			'selectedText' : 'cat'
		});

		// $('.selectpicker').selectpicker('hide');
	});
</script>
</head>
<body>
<div class="sodb-page-home">
<ul class="sodb-page-ul">
	<li>
		<i class="fa fa-home"></i> 
		<a href="#">应急救援指挥协调</a> 
		<i class="fa fa-angle-right"></i>
	</li>
	<li>
		<a href="#">指挥协调</a>
		<i class="fa fa-angle-right"></i>
	</li>
	<li>
		<a href="#">查看事件</a>
	</li>
</ul> 
</div>
<div class="page-container" style="padding-left:0px;">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
	<div  id="content_1">
		<div class="portlet box blue-hoki">
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-th-list"></i>录入事件信息
				</div>								
			</div>
				<div class="portlet-body form">
                    <form id="form1" class="form-horizontal" role="form" action="#" enctype="multipart/form-data"  method="post">
						<div class="form-body">
							<div class="form-group">
								<label class="col-md-3 control-label">事件编号：</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="事件编号" id="eventName" onchange="synchronize(this)" value="A9788MS" readonly="readonly">
								</div>
								
								<label class="col-md-2 control-label">事件名称：</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="事件名称" id="eventName" onchange="synchronize(this)" value="失火紧急救援"  readonly="readonly">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">事件级别：</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="事件名称" id="eventName" onchange="synchronize(this)" value="低"  readonly="readonly">
								</div>
								<label class="col-md-2 control-label">录入时间：</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="事件名称" id="eventName" onchange="synchronize(this)" value="2017-08-22" readonly="readonly">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">负责人：</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="负责人" id="eventPerson" onchange="synchronize(this)" value="张三" readonly="readonly">
								</div>
								<label class="col-md-2 control-label">上报人：</label>
								<div class="col-md-3">
	                                <input type="text" class="form-control" placeholder="上报人" value="李四" readonly="readonly">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">发生位置：</label>
								<div class="col-md-1">
									<input id="longitude"  type="text" class="form-control" placeholder="经度" value="116.642553" readonly="readonly">
								</div>
								
								<div class="col-md-1">
	                                <input id="dimension" type="text" class="form-control" placeholder="纬度" value="40.074827" readonly="readonly">
								</div>
								<div class="col-md-1">
	                               <!--  <button class="sbtn sbtn-blue" id="choiceGIS" type="button">选择位置</button>  --> 
								</div>
								
								<label class="col-md-2 control-label">位置描述：</label>
								<div class="col-md-3">
	                                 <input type="text" class="form-control" placeholder="位置描述" id="eventLocation" onchange="synchronize(this)" value="栈桥" readonly="readonly">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">预案类别：</label>
								<div class="col-md-3">
	                                 <input type="text" class="form-control" placeholder="位置描述" id="eventLocation" onchange="synchronize(this)" value="综合部门" readonly="readonly">
								</div>
								<label class="col-md-2 control-label">事件类别：</label>
								<div class="col-md-3">
	                                <input type="text" class="form-control" placeholder="位置描述" id="eventLocation" onchange="synchronize(this)" value="非航空事件" readonly="readonly">
								</div>	
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">预案选择：</label>
								<div class="col-md-3">航空器火警应急处置预案
	                                 <input type="text" class="form-control" placeholder="位置描述" id="eventLocation" onchange="synchronize(this)" value="航空器火警应急处置预案" readonly="readonly">
								</div>
								<label class="col-md-2 control-label">事件分类：</label>
								<div class="col-md-3">
	                                <input type="text" class="form-control" placeholder="位置描述" id="eventLocation" onchange="synchronize(this)" value="起落架事件" readonly="readonly">
								</div>
								
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">事件内容描述：</label>
								<div class="col-md-3">
	                                 <textarea class="form-control" rows="2" id="eventContext" onchange="synchronize(this)" readonly="readonly">本次事件的发生是因为。。。
	                                 	
	                                 </textarea>
								</div>
								
								<label class="col-md-2 control-label">上传附件：</label>
								<div class="col-md-3">
									<input type="text" id="filePath" class="form-control" placeholder="附件" value="失火救急附件"  readonly="readonly">
	                                <input type="file" id="fileopen" style="display: none">
								</div>
								<div class="col-md-1">
									 <!-- <button class="sbtn sbtn-blue" id="upload" type="button">选择附件</button> --> 
								</div>
							</div>
							
							<!-- <div class="form-group">
								<label class="col-md-3 control-label">检查单选择</label>
								<div class="col-md-3">
	                                 <select class="form-control">
	                                  	<option class="form-control" value="1">请选择 </option>
	                                     <option class="form-control" value="1">检查单1</option>
	                                     <option class="form-control" value="2">检查单2</option>
	                                     <option class="form-control" value="3">检查单3</option>
	                                </select>
								</div>
								<label class="col-md-2 control-label">应急救援资源选择</label>
								<div class="col-md-3">
	                                <div id="resourceTree" class="tree-demo"></div>
								</div>
							</div> -->
							
						<div class="form-actions" id="anniu">
						<div class="row">
							<div class="col-md-offset-5 col-md-9">
								<!-- <button type="button" class="sbtn sbtn-blue sbtn30" onclick="jump()">
								保存
								</button> -->
								<button style="margin-left:45px;" type="button" onclick="jump()" class="sbtn sbtn-default sbtn30">返回</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--start modal-->  
<div class="modal fade bs-example-modal-sm" id="gisModal" role="dialog" aria-label="myModalLabel" aria-hidden="true">  
    <div class="modal-dialog"  style="width:900px">  
        <div class="modal-content">  
            <div class="modal-header" style="background-color: #f7f7f7;height:50px;">  
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">  
                    <span aria-hidden="true">×</span>  
                </button>  
                <h5 class="modal-title"><b>请选择设备位置</b></h5>  
            </div>  
            <div class="modal-body">  
               <img src="<%=path %>/img/gismap.png">
            </div>  
            <div class="modal-footer">  
                <button type="button" class="btn btn-primary" >  
                    确定 
                </button>  
                <button type="button" class="btn btn-default" data-dismiss="modal" >  
                    取消  
                </button>  
            </div>  
        </div>  
    </div>  
</div>  
<!--end modal-->  
				
	</div>
</div>


	<div id="reservePlan" class="page-container" style="padding-left: 0px; display: none;">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<div id="content_1">
					<div class="portlet box blue-hoki">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-th-list"></i>预案模板信息管理
							</div>
						</div>
						<div class="portlet-body form">
							<form id="form1" class="form-horizontal" role="form" action="#"
								enctype="multipart/form-data" method="post">
								<div class="form-body">
								<!-- 	111	 -->	
							<div class="tabbable" id="tabs-975144" style="">
				<ul class="nav nav-tabs">
					<li class= "active">
						 <a href="#panel-938456" data-toggle="tab">事件发生</a>
					</li>
					<li class="activees">
						 <a href="#panel-933832" data-toggle="tab">事件信息传递</a>
					</li>
					<li class="actives">
						 <a href="#panel-9338323" data-toggle="tab">应急救援响应</a>
					</li>
					<li class="activess">
						 <a href="#panel-9338324" data-toggle="tab">应急救援处置</a>
					</li>
					<li class="activesss">
						 <a href="#panel-9338325" data-toggle="tab">后期处置</a>
					</li>
					<li class="activessss">
						 <a href="#panel-9338326" data-toggle="tab">机场恢复</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-938456" style="margin-top: 30px;">
						<div class="form-body" >
									<div class="form-group">
										<label class="col-md-4 control-label">事件上传人<span
											class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" value="管理员" readonly="readonly">
										</div>
										
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">事件名称
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="事件名称">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">位置描述
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="位置描述">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">事件内容
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="事件内容">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">预案类别<span
											class="required">* </span></label>
										<div class="col-md-6">
											<select  class="form-control"  disabled="disabled">
												<option>消防应急演练方案</option>
											</select>
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">级别<span
											class="required">* </span></label>
										<div class="col-md-6">
											<select  class="form-control"  disabled="disabled">
												<option>非航空器级别</option>
											</select>
										</div>
										
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">事件负责人
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="事件负责人">
										</div>
									</div>
										 <div class="form-group" >
								            <label class="col-md-4 control-label">通报单位<span
											class="required">* </span></label>
											<div class="col-md-6" style="margin-top: 5px">
											<select type="text" class="selectpicker bla bla bli " multiple data-live-search="true" >
								                	 <option>北京消防部门</option>
								                	 <option>北京公安部门</option>
								                	 <option>机场应急救援部门</option>
								           </select>
								           </div>
								            </div>
									
								</div>
						
						
					</div>
					<div class="tab-pane activees" id="panel-933832" style="margin-left: 15px;margin-top: 30px;">
						<div class="form-body" >
								
									<div class="form-group">
									<label class="col-md-4 control-label">通报部门
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" value="消防护卫部">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">通报时间
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入通报时间">
										</div>
									</div>
								<div class="form-group">
									<label class="col-md-4 control-label">联系人
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入联系人">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">联系方式
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入联系方式">
										</div>
									</div>
								</div>
					</div>
						<div class="tab-pane actives" id="panel-9338323" style="margin-left: 15px;margin-top: 30px;">
							<div class="form-body" >
								<div class="form-group" style="margin-top:-24px;margin-left: -160px">
									<label class="col-md-4 control-label">值班员：
									</label>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">主指挥席值班员
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="主指挥席值班员">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">副指挥席值班员
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="副指挥席值班员">
										</div>
									</div>
									<!-- 消防护卫部 -->
									<div class="form-group" style="margin-top:30px;margin-left: -160px">
									<label class="col-md-4 control-label" >消防护卫部 ：
									</label>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">消防护卫部车辆时间
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入时间">
										</div>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">数量
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入数量">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">消防护卫部人员时间
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入时间">
										</div>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">人数
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入人数">
										</div>
									</div>
									<!-- 现场指挥部 -->
									<div class="form-group" style="margin-top:30px;margin-left: -160px">
									<label class="col-md-4 control-label">现场指挥部：
									</label>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">成立时间
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入时间">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">人员数量
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入人员数量">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">其他部门支援
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">航空公司营运人
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入">
										</div>
									</div>
									</div>				
					</div>
					<!-- 应急救援处置 -->
					<div class="tab-pane actives" id="panel-9338324" style="margin-left: 15px;margin-top: 30px;">
						<div class="form-body" >
								<div class="form-group" style="margin-top:-24px;margin-left: -160px">
									<label class="col-md-4 control-label">事件处置：
									</label>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">消防护卫部
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入">
										</div>
									</div>
									<!-- 消防护卫部 -->
									<div class="form-group" style="margin-top:30px;margin-left: -160px">
									<label class="col-md-4 control-label" >信息反馈 ：
									</label>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">处置信息汇报
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入处置信息汇报">
										</div>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">现场指挥部
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">指挥信息传达
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入">
										</div>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">航行通告
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入">
										</div>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">自治区政府
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入">
										</div>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">民航管理局
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入">
										</div>
									</div>
									</div>
					</div>
						<div class="tab-pane activess" id="panel-9338325" style="margin-left: 15px;margin-top: 30px;">
						<div class="form-body" >
								<div class="form-group" style="margin-top:-24px;margin-left: -160px">
									<label class="col-md-4 control-label">消防护卫部：
									</label>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">撤退时间
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入撤退时间">
										</div>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">撤退说明
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入撤退说明">
										</div>
									</div>
									<!-- 消防护卫部 -->
									<div class="form-group" style="margin-top:30px;margin-left: -160px">
									<label class="col-md-4 control-label" >其他 ：
									</label>
									</div>
									<div class="form-group" style="margin-top:15px">
									<label class="col-md-4 control-label">行李物品清理
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入">
										</div>
									</div>
									</div>
					</div>
						<div class="tab-pane activesss" id="panel-9338326" style="margin-left: 15px;margin-top: 30px;">
						<div class="form-body" >
								
									<div class="form-group">
									<label class="col-md-4 control-label">时间开始时间
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" value="2017-12-14 02:00:17">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">时间结束时间
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="2018-01-22 05:23:13">
										</div>
									</div>
								<div class="form-group">
									<label class="col-md-4 control-label">发布航行通告
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入通告">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">申请恢复
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入联系方式">
										</div>
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">道面清理
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入联系方式">
										</div>
									</div>
								</div>
					</div>
				</div>
			</div>
	
								<!-- 	111	 -->							
								</div>
								<div class="form-actions" style="margin-top: 30px;">
									<div class="row">
										<div class="col-md-offset-5 col-md-9">
											<button type="button" id="copyPrompt" class="sbtn sbtn-blue sbtn30" onclick="jump()">
												保存</button>
											<button style="margin-left: 45px;" type="button"
												 onclick="jump()"
												class="sbtn sbtn-default sbtn30">取消</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--start modal-->
			
			<!--end modal-->
		</div>
	</div>


	<!-- GIS模态框 -->
	<div id="modifyScore" class="modal fade bs-example-modal-sm" style="margin-top: 8%;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss = "modal">&times;</button>
                    <h4 class="modal-title" id="">选择位置</h4>
                </div>
                <div class="modal-body" style="text-align: center; height: 60%;">
                    <div id="map" style="width:100%;height:100%; display: block;"></div>
                </div>
                <div class="modal-footer">
                    <div style="text-align: center;">
                        <button class="sbtn sbtn-blue sbtn30" data-dismiss = "modal" id="okCopy" ><i class="fa fa-check"></i>&nbsp;确认</button>
                        <button class="sbtn sbtn-default sbtn30" data-dismiss = "modal" style="margin-left: 45px;"><i class="fa fa-times-circle-o"></i>&nbsp;取消</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


<script type="text/javascript" src="/EMS-Prototype/js/emergencyIntegrate/mapData.js"></script>
<script type="text/javascript" src="/EMS-Prototype/js/emergencyIntegrate/mapConfig.js"></script>
<script type="text/javascript">


/* GIS加载部分 */
$(function() {
/* var warning = "warning";
var warningMarker = createMarker(116.618263,40.08377,warning);
map.addOverlay(warningMarker); */
$(".help_step_item").on("click",function(e){
	var num = $(this).children(".help_step_num").text();
	/* step_hover(num); */
	go_fa_step(num);
	for(i=1;i<=6;i++){
		$("#dropdown-body"+i).hide();
	}
	
	$("#dropdown-body"+num).show();
});

$(".route-plan-tit").click(function(e) {
	var folder = $(this).siblings(".route-plan-cnt");
	var index = $(this).attr("index");
	/* $(".route-plan-cnt").hide(400); */
	if(folder.css("display") == "none"){ 
		folder.show(400);
	}
	else{
		folder.hide(400); 
	}
})

$(".step-btn").click(function() {
	var tab = $("#processingTab");
	var normalInfo = $("#divInfo4");
	var dutyInfo = $("#divInfo5");
	if(tab.css("display")=="none"){
		tab.show(500);
		normalInfo.hide(500);
		dutyInfo.hide(500);
	}else{
		tab.hide(500);
		normalInfo.show(500);
		dutyInfo.show(500);
	}
})

$("#air-model").click(function(e) {
	var isChecked = $(this).prop("checked");
	var folder = $(this).parent().parent().siblings(".route-plan-cnt");
	if(isChecked){
		folder.show(400);
	}else{
		folder.hide(400); 	
	}
})

$(".editProcess").click(function(){
	var tab = $("#drillTab");
	var process = $("#processingTab")
	var normalInfo = $("#divInfo4");
	var dutyInfo = $("#divInfo5");
	if(tab.css("display")=="none"){
		tab.show(500);
		process.hide(500);
		normalInfo.hide(500);
		dutyInfo.hide(500);
	}else{
		$("#hori-flow").show(400);
		process.show(500);
		tab.hide(500);
	}
})
$(".resourceCheck").click(function(){
	var type = $(this).attr("id");
	if(type=="hospital"){
		var isChecked = $(this).prop("checked");
		if(isChecked){
			var hos = airportData.hospital;
			for(i in hos){
				var marker = createMarker(hos[i][0],hos[i][1],type);
				hospitalMarker.push(marker);
				map.addOverlay(marker);
			}
		}else{
			for(i in hospitalMarker){
				map.removeOverlay(hospitalMarker[i]);
			}
		}
	}
	else if(type=="airplane"){
		var isChecked = $(this).prop("checked");
		if(isChecked){
			var hos = airportData.airplane;
			for(i in hos){
				var marker = createMarker(hos[i][0],hos[i][1],type);
				airplaneMarker.push(marker);
				map.addOverlay(marker);
			}
		}else{
			for(i in airplaneMarker){
				map.removeOverlay(airplaneMarker[i]);
			}
		}
	}
	else if(type=="ambulance"){
		var isChecked = $(this).prop("checked");
		if(isChecked){
			var hos = airportData.ambulance;
			for(i in hos){
				var marker = createMarker(hos[i][0],hos[i][1],type);
				ambulanceMarker.push(marker);
				map.addOverlay(marker);
			}
		}else{
			for(i in ambulanceMarker){
				map.removeOverlay(ambulanceMarker[i]);
			}
		}
	}
	else if(type=="barrier"){
		var isChecked = $(this).prop("checked");
		if(isChecked){
			var hos = airportData.barrier;
			for(i in hos){
				var marker = createMarker(hos[i][0],hos[i][1],type);
				barrierMarker.push(marker);
				map.addOverlay(marker);
			}
		}else{
			for(i in hospitalMarker){
				map.removeOverlay(hospitalMarker[i]);
			}
		}
	}
	else if(type=="doctor"){
		var isChecked = $(this).prop("checked");
		if(isChecked){
			var hos = airportData.doctor;
			for(i in hos){
				var marker = createMarker(hos[i][0],hos[i][1],type);
				doctorMarker.push(marker);
				map.addOverlay(marker);
			}
		}else{
			for(i in doctorMarker){
				map.removeOverlay(doctorMarker[i]);
			}
		}
	}
	else if(type=="fireCar"){
		var isChecked = $(this).prop("checked");
		if(isChecked){
			var hos = airportData.fireCar;
			for(i in hos){
				var marker = createMarker(hos[i][0],hos[i][1],type);
				fireCarMarker.push(marker);
				map.addOverlay(marker);
			}
		}else{
			for(i in fireCarMarker){
				map.removeOverlay(fireCarMarker[i]);
			}
		}
	}
	else if(type=="firefighter"){
		var isChecked = $(this).prop("checked");
		if(isChecked){
			var hos = airportData.firefighter;
			for(i in hos){
				var marker = createMarker(hos[i][0],hos[i][1],type);
				firefighterMarker.push(marker);
				map.addOverlay(marker);
			}
		}else{
			for(i in firefighterMarker){
				map.removeOverlay(firefighterMarker[i]);
			}
		}
	}
	else if(type=="fireStation"){
		var isChecked = $(this).prop("checked");
		if(isChecked){
			var hos = airportData.fireStation;
			for(i in hos){
				var marker = createMarker(hos[i][0],hos[i][1],type);
				fireStationMarker.push(marker);
				map.addOverlay(marker);
			}
		}else{
			for(i in fireStationMarker){
				map.removeOverlay(fireStationMarker[i]);
			}
		}
	}
	else if(type=="firewall"){
		var isChecked = $(this).prop("checked");
		if(isChecked){
			var hos = airportData.firewall;
			for(i in hos){
				var marker = createMarker(hos[i][0],hos[i][1],type);
				firewallMarker.push(marker);
				map.addOverlay(marker);
			}
		}else{
			for(i in firewallMarker){
				map.removeOverlay(firewallMarker[i]);
			}
		}
	}
	else if(type=="hydrant"){
		var isChecked = $(this).prop("checked");
		if(isChecked){
			var hos = airportData.hydrant;
			for(i in hos){
				var marker = createMarker(hos[i][0],hos[i][1],type);
				hydrantMarker.push(marker);
				map.addOverlay(marker);
			}
		}else{
			for(i in hydrantMarker){
				map.removeOverlay(hydrantMarker[i]);
			}
		}
	}
	else if(type=="policeCar"){
		var isChecked = $(this).prop("checked");
		if(isChecked){
			var hos = airportData.policeCar;
			for(i in hos){
				var marker = createMarker(hos[i][0],hos[i][1],type);
				policeCarMarker.push(marker);
				map.addOverlay(marker);
			}
		}else{
			for(i in policeCarMarker){
				map.removeOverlay(policeCarMarker[i]);
			}
		}
	}
	else if(type=="policeman"){
		var isChecked = $(this).prop("checked");
		if(isChecked){
			var hos = airportData.policeman;
			for(i in hos){
				var marker = createMarker(hos[i][0],hos[i][1],type);
				policemanMarker.push(marker);
				map.addOverlay(marker);
			}
		}else{
			for(i in policemanMarker){
				map.removeOverlay(policemanMarker[i]);
			}
		}
	}
	
})
});
/* GIS加载部分结束 */


function getPath(obj,fileQuery,transImg) {

	   var imgSrc = '', imgArr = [], strSrc = '' ;

	   if(window.navigator.userAgent.indexOf("MSIE")>=1){ // IE浏览器判断
	    if(obj.select){
	     obj.select();
	     var path=document.selection.createRange().text;
	     obj.removeAttribute("src");
	     imgSrc = fileQuery.value ;
	     imgArr = imgSrc.split('.') ;
	     strSrc = imgArr[imgArr.length - 1].toLowerCase() ;
	     if(strSrc.localeCompare('jpg') === 0 || strSrc.localeCompare('jpeg') === 0 || strSrc.localeCompare('gif') === 0 || strSrc.localeCompare('png') === 0){
	      obj.setAttribute("src",transImg);
	      obj.style.filter=
	       "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+path+"', sizingMethod='scale');"; // IE通过滤镜的方式实现图片显示
	     }else{
	      throw new Error('File type Error! please image file upload..'); 
	     }
	    }else{
	     imgSrc = fileQuery.value ;
	     imgArr = imgSrc.split('.') ;
	     strSrc = imgArr[imgArr.length - 1].toLowerCase() ;
	     if(strSrc.localeCompare('jpg') === 0 || strSrc.localeCompare('jpeg') === 0 || strSrc.localeCompare('gif') === 0 || strSrc.localeCompare('png') === 0){
	      obj.src = fileQuery.value ;
	     }else{
	      throw new Error('File type Error! please image file upload..') ;
	     }

	    }

	   } else{
	    var file =fileQuery.files[0];
	    var reader = new FileReader();
	    reader.onload = function(e){

	     imgSrc = fileQuery.value ;
	     imgArr = imgSrc.split('.') ;
	     strSrc = imgArr[imgArr.length - 1].toLowerCase() ;
	     if(strSrc.localeCompare('jpg') === 0 || strSrc.localeCompare('jpeg') === 0 || strSrc.localeCompare('gif') === 0 || strSrc.localeCompare('png') === 0){
	      obj.setAttribute("src", e.target.result) ;
	     }else{	  
	      throw new Error('File type Error! please image file upload..') ;
	     }
	    }
	    reader.readAsDataURL(file);
	   }
	  }

	  function show(){
	   //以下即为完整客户端路径
	   var file_img=document.getElementById("img"),
	    logo = document.getElementById("logo") ;
	   getPath(file_img,logo,file_img) ;
	  }
	 /**
	  * 页面跳转
	  */
	  function jump(){
	  	window.location.href="emergencyEventManage.jsp";
	  }
	  
	 /**
	  * 弹出tab页
	  */
	  $("#choice").change(function(){
		  $("#anniu").hide();
		  $("#reservePlan").show();
	  })
	  
   /**
	* 弹出GIS地图页面
	*/ 
	// 设置全局变量，用于接收经纬度
	var longitude = $("#longitude").val();
	var dimension = $("#dimension").val();
	$("#choiceGIS").click(function(){
		var type ="warning"
		var marker = createMarker(longitude,dimension,type);
		doctorMarker.push(marker);
		map.addOverlay(marker);
		$("#modifyScore").modal();
	})
	
	/**
	 * 获取GIS地图经纬度  ： 添加地图监听时间，触发条件为点击“click”，
	 * 触发后执行函数
	 */
	map.addEventListener("click",function(e){
		// 获取经度
		longitude = e.point.lng;
		// 获取经度
		dimension = e.point.lat;
		for(i in doctorMarker){
			map.removeOverlay(doctorMarker[i]);
		}
		// 选择页面标点图形
		var type ="warning"
		var marker = createMarker(longitude,dimension,type);
		doctorMarker.push(marker);
		// 添加到地图中
		map.addOverlay(marker);
	});
	
	/**
	 * 回填经纬度到“发生位置”中
	 */
	$("#okCopy").click(function(){
		$("#longitude").val(longitude);
		$("#dimension").val(dimension);
	})
	
</script>
<script type="text/javascript" src="/EMS-Prototype/js/emergencyIntegrate/resourceTree.js"></script>
</body>
</html>