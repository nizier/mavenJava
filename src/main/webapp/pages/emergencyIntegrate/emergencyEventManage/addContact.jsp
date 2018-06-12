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
		<a href="#">北京新机场应急救援系统</a> 
		<i class="fa fa-angle-right"></i>
	</li>
	<li>
		<a href="#">应急救援指挥协调</a>
		<i class="fa fa-angle-right"></i>
	</li>
	<li>
		<a href="#">通讯录管理</a>
		<i class="fa fa-angle-right"></i>
	</li>
	<li><a href="#">添加联系人</a></li>
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
					<i class="fa fa-th-list"></i>联系人信息
				</div>								
			</div>
				<div class="portlet-body form">
                    <form id="form1" class="form-horizontal" role="form" action="#" enctype="multipart/form-data"  method="post">
						<div class="form-body">
							<div class="form-group">
								<label class="col-md-3 control-label">联系人姓名  ：</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="联系人姓名">
								</div>
								<label class="col-md-2 control-label">联系人编号 ：</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="联系人编号">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">职位 ：</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="职位">
								</div>
								<label class="col-md-2 control-label">电子邮件 ：</label>
								<div class="col-md-3">
	                                <input type="text" class="form-control" placeholder="电子邮件">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">手机号码 ：</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="手机号码">
								</div>
								<label class="col-md-2 control-label">IP地址 ：</label>
								<div class="col-md-3">
	                                <input type="text" class="form-control" placeholder="IP地址">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">住址 ：</label>
								<div class="col-md-3">
	                                 <input type="text" class="form-control" placeholder="住址">
								</div>
								<label class="col-md-2 control-label">部门 ：</label>
								<div class="col-md-3">
	                                <select class="form-control">
	                                     <option class="form-control" value="请选择">请选择</option>
	                                     <option class="form-control" value="3">部门1</option>
	                                     <option class="form-control" value="4">部门2</option>
	                                </select>
								</div>
							</div>
							
						<div class="form-actions">
						<div class="row">
							<div class="col-md-offset-5 col-md-9">
								<button type="button" class="sbtn sbtn-blue sbtn30" onclick="javascript:location.href='contactManage.jsp'">
								保存
								</button>
								<button style="margin-left:45px;" type="button" onclick="javascript:location.href='contactManage.jsp'" class="sbtn sbtn-default sbtn30">返回</button>
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
                <button type="button" class="btn btn-primary">  
                    确定 
                </button>  
                <button type="button" class="btn btn-default" data-dismiss="modal">  
                    取消  
                </button>  
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