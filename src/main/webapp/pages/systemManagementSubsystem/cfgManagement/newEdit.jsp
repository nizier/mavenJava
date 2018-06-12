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
			<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">预案组织树维护</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">编辑预案组织信息</a></li>
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
								<i class="fa fa-th-list"></i>预案组织信息
							</div>
						</div>
						<div class="portlet-body form">
							<form id="form1" class="form-horizontal" role="form" action="#"
								enctype="multipart/form-data" method="post">
								<div class="form-body">
									
									<div class="form-group">
										<label class="col-md-4 control-label">组织名称<span
											class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" value="部门总体预案" >
										</div>
										
									</div>
									<div class="form-group">
									<label class="col-md-4 control-label">显示顺序</label>
										<div class="col-md-6">
											<input type="text" value="部门总体预案" class="form-control" >
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-4 control-label">组织描述</label>
										<div class="col-md-6">
											<textarea class="form-control" >部门总体预案</textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">录入人<span
											class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" value="管理员" readonly="readonly">
										</div>
										
									</div>
									
								</div>
								<div class="form-actions">
									<div class="row">
										<div class="col-md-offset-5 col-md-9">
											<button type="submit" class="sbtn sbtn-blue sbtn30">
												保存</button>
											<button style="margin-left: 45px;" type="button"
												onclick="javascript:location.href='equipmentResourcesManagement.jsp'"
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
			<div class="modal fade bs-example-modal-sm" id="gisModal"
				role="dialog" aria-label="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 900px">
					<div class="modal-content">
						<div class="modal-header"
							style="background-color: #f7f7f7; height: 50px;">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
							<h5 class="modal-title">
								<b>请选择设备位置</b>
							</h5>
						</div>
						<div class="modal-body">
							<img src="<%=path %>/img/gismap.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary">确定</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">取消</button>
						</div>
					</div>
				</div>
			</div>
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
</script>
</body>
</html>