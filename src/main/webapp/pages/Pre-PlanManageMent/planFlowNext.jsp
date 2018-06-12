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
<link rel="stylesheet" type="text/css"
	href="<%=path %>/css/bootstrapValidator.min.css" />
<script type="text/javascript"
	src="<%=path %>/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/bootstrap-select.js">	</script>
 <link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap-select.css">
  <script type="text/javascript">
 $(window).on('load', function () {

     
	 $('.selectpicker').selectpicker({
	                'selectedText': 'cat'
	            });

	         
	   // $('.selectpicker').selectpicker('hide');
	        });
  </script>	
<style>
.portlet.box.blue-hoki > .portlet-title {
    background-color: #67809f;
}
</style>
</head>
<body>
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">方案管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">新增方案</a></li>
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
										<!-- 	<button type="submit" id="copyPrompt" class="sbtn sbtn-blue sbtn30">
												保存</button> -->
											<button style="margin-left: 45px;" type="button"
												 onclick="window.location.href='planFlow.jsp'"
												class="sbtn sbtn-default sbtn30">返回</button>
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
	<script type="text/javascript">
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
	  

/*  $(function(){

	$("#querenArea").hide();
	$('#securityTable a').click(function(e) {
		e.preventDefault();//阻止a链接的跳转行为 
		var area = $(this).attr("data-area-id");
		if ($(".btn-default").css("display") == "none") {
			$(".btn-default").css('display','block');
		}else{
			$(".btn-default").css('display','none');
		}
		$(".area-test").hide();
		$("#" + area).show();
		$(this).tab('show');//显示当前选中的链接及关联的content

	});
	
}); */
$('#tit li').click(function() {
    var i = $(this).index();//下标第一种写法
    $(this).addClass('select').siblings().removeClass('select');
    $('#con li').eq(i).show().siblings().hide();
});
$('#copyPrompt').click(function(){
	alert("已经有 与预案相似的预案类型是否复制为新的预案？");
})
</script>
</body>
</html>