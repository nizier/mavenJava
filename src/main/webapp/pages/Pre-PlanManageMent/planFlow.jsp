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
						
								 <section class="demo clearfix">
								<div id="dragslot" class="container" style="margin-left: 350px">
								<div><span>待选阶段</span></div>
								<div class="slot border-yellow" >
								<ul class="slot-list">
										<li class="slot-item"  id="dd"><div class="slot-handler">
											<div class="slot-handler clearfix">
										<div class="avator">
										</div>
										<div class="content">
											<div class="item-title">事件发生
											</div>
										</div>
										</div>
										</div></li>
										<li class="slot-item" ><div class="slot-handler">
											<div class="slot-handler clearfix">
										<div class="avator">
										</div>
										<div class="content">
											<div class="item-title">事件信息传递</div>
										</div>
										</div>
										</div></li>
											<li class="slot-item" ><div class="slot-handler">
											<div class="slot-handler clearfix">
										<div class="avator">
										</div>
										<div class="content">
											<div class="item-title">应急救援响应</div>
										</div>
										</div>
										</div></li>
										<li class="slot-item" ><div class="slot-handler">
											<div class="slot-handler clearfix">
										<div class="avator">
										</div>
										<div class="content">
											<div class="item-title">应急救援处置</div>
										</div>
										</div>
										</div></li>
										<li class="slot-item" ><div class="slot-handler">
											<div class="slot-handler clearfix">
										<div class="avator">
										</div>
										<div class="content">
											<div class="item-title">后期处置</div>
										</div>
										</div>
										</div></li>
										<li class="slot-item" ><div class="slot-handler">
											<div class="slot-handler clearfix">
										<div class="avator">
										</div>
										<div class="content">
											<div class="item-title">机场恢复</div>
										</div>
										</div>
										</div></li>
										</ul>
								</div>
								<div style="margin-top: -19px;"><span>已选阶段</span></div>
								<div class="slot border-green">
								<ul class="slot-list" >
										<li style="display: none;" ></li>
										</ul>
								</div>
							</div>
							</section>
								<div class="form-actions">
									<div class="row">
										<div class="col-md-offset-5 col-md-9">
											<button style="margin-left: 45px;" type="button"
												 onclick="window.location.href='planFlowNext.jsp'"
												class="sbtn sbtn-blue sbtn30">下一步</button>
											<button style="margin-left: 45px;" type="button"
												 onclick="window.location.href='addPlanII.jsp'"
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
	

	<script type="text/javascript">
	$("#ds").click(function(){
		alert("1");
		$("#hhhh").modal();
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
$(function() {
    $("#dd").click();
    $('#dd').trigger("click");
});



</script>
</body>
</html>