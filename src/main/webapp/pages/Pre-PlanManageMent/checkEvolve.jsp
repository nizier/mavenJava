<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>添加设备</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet" href="<%=path %>/css/pilotcockpit.css" />
<link rel="stylesheet" href="<%=path %>/css/pagebar.css" />
<style>
.portlet.box.blue-hoki > .portlet-title {
    background-color: #67809f;
}
</style>
</head>
<body>
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">北京新机场应急救援管理</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">检查单管理列表</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">检查单管理</a></li>
		</ul>
	</div>
	<div class="page-container" style="padding-left: 0px;">
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
									<div class="form-group">
										<label class="col-md-4 control-label">预案类别<span
											class="required">* </span></label>
										<div class="col-md-6">
											<select  class="form-control"  disabled="true">
												<option>预案类别1</option>
												<option>预案类别2</option>
											</select>
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">事件类别<span
											class="required">* </span></label>
										<div class="col-md-6">
											<select  class="form-control" disabled="true">
												<option>事件类别1</option>
												<option>事件类别2</option>
												<option>事件类别3</option>
											</select>
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">预案选择<span
											class="required">* </span></label>
										<div class="col-md-6">
											<select  class="form-control" disabled="true">
												<option>预案1</option>
												<option>预案2</option>
											</select>
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">检查单编号<span
											class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" value="A0001" disabled="true">
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">检查单名称<span
											class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" value="检查单A0001" disabled="true">
										</div>
										
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">检查单构建</label>
										<div class="col-md-6" style="margin-left: 2px">
										<button type="button" class="sbtn sbtn-default" style="" onclick="window.location.href='EvolveEdition.jsp'"disabled="true">选择模板</button>
										</div>
									</div>
									<!-- <div class="form-group">
									<label class="col-md-4 control-label">附件名称
									<span class="required">* </span></label>
										<div class="col-md-6" style="margin-top: 5px">
											<select  class="form-control" >
												<option>航空器紧急事件附件</option>
												<option>非航空器紧急事件附件</option>
											</select>
										</div>
									</div> -->
									<div class="form-group">
										<label class="col-md-4 control-label">检查单描述</label>
										<div class="col-md-6">
											<textarea class="form-control" disabled="true">这是一个航空器失事应急处置预案
												
											</textarea>
										</div>
									</div>
									<!-- <div class="form-group">
										<label class="col-md-4 control-label">发布人<span
											class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" value="管理员" readonly="readonly">
										</div>
										
									</div> -->
									  
								</div>
								<div class="form-actions">
									<div class="row">
										<div class="col-md-offset-5 col-md-9">
											<button type="submit" class="sbtn sbtn-blue sbtn30">
												保存</button>
											<button style="margin-left: 45px;" type="button"
												 onclick="window.location.href='checkList.jsp'"
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
	<form name="addPlan" class="form-horizontal" id="addPlans" action="#" method="post" enctype="multipart/form-data">
	<div class="modal fade bs-example-modal-sm" id="addChilds" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 1300px; height: 500px;">
		<div class="modal-content">
		 <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">选择模板</h4>
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
							onclick="submitStatus()"	class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 选择</button>
							<button style="margin-left: 36px; margin-top: -68%" type="button" id="oksss" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
						</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
	<script type="text/javascript">
	$("#backBtn").click(function(){
	    window.history.go(-1);
	})
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
	  function check(){
		  $("#addChilds").modal();
	}
</script>
</body>
</html>