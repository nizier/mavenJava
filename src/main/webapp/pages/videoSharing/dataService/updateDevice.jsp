<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>${title }</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet" href="<%=path %>/css/pilotcockpit.css" />
<link rel="stylesheet" href="<%=path %>/css/dataTables.bootstrap.css" />
<link rel="stylesheet" href="<%=path %>/css/pagebar.css" />
<script src="<%=path %>/js/jstree.min.js" type="text/javascript"></script>
<script src="<%=path %>/js/jquery.dataTables.min.js" type="text/javascript"></script>
<style>
.divcss5 {
	background: #67809F;
	height: 40px;	
	margin-bottom:20px;
	padding: 0px 15px;
	color: #fff;
}
.divcss5_title {
	line-height: 40px;
}
.divcss5_left {
	float: left;
	width: 150px;
}
</style>
</head>
<body>
<div class="page-container">
<div class="page-content-wrapper">
<div class="page-content">
<div class="page-bar">
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li>
				<i class="fa fa-home"></i> 
				<a href="#">青岛机场安全管理</a> 
				<i class="fa fa-angle-right"></i>
			</li>
			<li>
				<a href="#">设备档案信息管理</a>
				<i class="fa fa-angle-right"></i>
			</li>
			<li><a href="#">设备信息录入</a></li>
		</ul> 
	</div>
</div>
<div class="row">
   <div class="col-md-12" id="content_1">
	<div class="divcss5">
		<div class="divcss5_left"><span class="divcss5_title">设备信息录入</span></div>			
		<div class="clear"></div>
	</div>
	<div class="portlet-body form">				
            <form id="form1" class="form-horizontal" role="form" action="#" enctype="multipart/form-data"  method="post">
	<div class="form-body">
		<div class="form-group">
			<label class="col-md-3 control-label">设备名称<span class="required">* </span></label>
			<div class="col-md-3">
				<input  type="text" class="form-control" placeholder="设备名称">
			</div>
			<label class="col-md-2 control-label">业务编号<span class="required">* </span></label>
			<div class="col-md-3">
				<input  type="text" class="form-control" placeholder="业务编号">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label">设备编号<span class="required">* </span></label>
			<div class="col-md-3">
				<input  type="text" class="form-control" placeholder="设备编号">
			</div>
			<label class="col-md-2 control-label">设备厂商<span class="required">* </span></label>
			<div class="col-md-3">
				<input  type="text" class="form-control" placeholder="设备厂商">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label">管理部门<span class="required">* </span></label>
			<div class="col-md-3">
				<input  type="text" class="form-control" placeholder="管理部门">
			</div>
			<label class="col-md-2 control-label">安装时间<span class="required">* </span></label>
			<div class="col-md-3">
				<input  type="text" class="form-control" placeholder="安装时间">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label">设备安装地址<span class="required">* </span></label>
			<div class="col-md-3">
				<input  type="text" class="form-control" placeholder="设备安装地址">
			</div>			
			<label class="col-md-2 control-label">设备位置<span class="required">* </span></label>
			<div class="col-md-1">
				<input  type="text" class="form-control" placeholder="经度">
			</div>
			<div class="col-md-1">
				<input  type="text" class="form-control" placeholder="纬度">
			</div>
			<a onclick="openGis" class="point" style="text-shadow: none;color: #5b9bd1;" data-toggle="modal" data-target="#gisModal">
			   <i style="font-size:26px;" class="fa fa-map-marker">
			   </i>
			</a>
		</div>									
		<div class="form-group">
			<label class="col-md-3 control-label">说明</label>
			<div class="col-md-6">
				<textarea  class="form-control" placeholder="请输入"></textarea>
			</div>
		</div>			
		</div>																			
		<div class="form-actions">
		<div class="row">
			<div class="col-md-offset-5 col-md-9">
				<button type="submit" class="sbtn sbtn-blue sbtn30" style="margin-right:30px">
					 保存
				</button>
				<button type="button" onclick="javascript:location.href='deviceInfo.jsp'" class="sbtn sbtn-default  sbtn30">返回</button>
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
             <button type="button" class="btn btn-primary">确定</button>  
             <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>  
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