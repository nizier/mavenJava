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
<link rel="stylesheet" type="text/css" href="<%=path %>/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/demo.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/dragslot.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/css/styles.css">
<script type="text/javascript" src="<%=path %>/js/dragslot.js"></script>
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
			<li><a href="#">预案管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">新增预案</a></li>
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
													<select  class="form-control"  disabled="disabled">
														<option>航空器紧急事件</option>
														<option>非航空器紧急事件</option>
													</select>
												</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label">预案名称
												<span class="required">* </span></label>
													<div class="col-md-6">
														<input type="text" class="form-control" placeholder="附件名称">
													</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label">预案附件</label>
												<div class="col-md-6">
													<input type="file" /><br/>
														<font style="color: gray;">只能上传.doc.pdf文件</font>
												</div>
										</div>
									<!-- 每次点击对数据进行修改回显，如果没有值的话显示“暂时没有配置流程” -->
										<div class="form-group">
											<label class="col-md-4 control-label">预案流程
												<span class="required">* </span></label>
													<div class="col-md-6">
														<textarea class="form-control"  readonly="readonly" style="height: 135px">暂时没有配置流程
														</textarea>
															<a class="required" id="planFlow" style="color: red">*点击此处进行配置 </a>
													</div>
										</div>
									<!-- 	<div class="form-group">
											<label class="col-md-4 control-label">模板描述</label>
												<div class="col-md-6">
													<textarea class="form-control" style="height: 135px"></textarea>
												</div>
										</div> -->
										<div class="form-group">
											<label class="col-md-4 control-label">预案版本
												<span class="required">* </span></label>
													<div class="col-md-6">
														<input type="text" class="form-control" placeholder="附件名称">
													</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label">版本描述</label>
												<div class="col-md-6">
													<textarea class="form-control" ></textarea>
												</div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label">预案到期时间
												<span class="required">* </span></label>
													<div class="col-md-6">
														<input type="text" class="form-control" placeholder="">
													</div>
										</div>
										<!-- <div class="form-group">
											<label class="col-md-4 control-label">上传人<span
												class="required">* </span></label>
											<div class="col-md-6">
												<input type="text" class="form-control" value="管理员" readonly="readonly">
											</div>
										</div> -->
									</div>							
									<div class="form-actions">
										<div class="row">
											<div class="col-md-offset-5 col-md-9">
												<button type="button"  class="sbtn sbtn-blue sbtn30">
													保存</button>
												<button style="margin-left: 45px;" type="button"
												 	onclick="window.location.href='maintainPlan.jsp'"
													class="sbtn sbtn-default sbtn30">取消</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
<script type="text/javascript">
/* 	function ds(){
		alert("11");
		$("#hhhh").modal();
	} */
	$("#planFlow").click(function(){
		window.location.href='planFlow.jsp'
		
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
	  
	  
/* 	  111 */
jQuery(function($){
	$('#dragslot').dragslot({
		dropCallback: function(el){
		//	alert(el);
		}
	});
});

</script>
</body>
</html>