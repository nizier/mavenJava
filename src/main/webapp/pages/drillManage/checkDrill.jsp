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
<a href="#">应急救援演练系统管理</a> 
<i class="fa fa-angle-right"></i>
</li>
<li>
<a href="#">应急救援演练计划管理</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">查看演练计划</a></li>
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
					<i class="fa fa-th-list"></i>演练信息
				</div>								
			</div>
				<div class="portlet-body form">
                    <form id="form1" class="form-horizontal" role="form" action="#" enctype="multipart/form-data"  method="post">
						<div class="form-body">
							<div class="form-group">
								<label class="col-md-3 control-label">演练名称</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="演练名称" value="2015年北京国际机场应急救援综合演练">
								</div>
								<label class="col-md-2 control-label">演练地点</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="演练地点" value="会议室">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">演练编号</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="演练编号" value="DR01212">
								</div>
								<label class="col-md-2 control-label">演练类型</label>
								<div class="col-md-3">
	                                <select class="form-control">
	                                     <option class="form-control" value="请选择">请选择</option>
	                                     <option class="form-control" value="3">单体演练</option>
	                                     <option class="form-control" value="4" selected="selected">综合演练</option>
	                                </select>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">开始时间</label>
								<div class="col-md-3">
									<input  type="date" class="form-control" placeholder="开始时间"> 
								</div>
								<label class="col-md-2 control-label">结束时间</label>
								<div class="col-md-3">
									<input  type="date" class="form-control" placeholder="结束时间">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">附件上传</label>
								<div class="col-md-3">
									<input  type="file" class="form-control">
								</div>
								<label class="col-md-2 control-label">演练目的</label>
								<div class="col-md-3">
	                                <input type="text" class="form-control" placeholder="演练目的"
	                                	value="检验《乌鲁木齐国际机场突发事件应急救援计划》的实用性、
	                                	可操作性以及相关支援单位在机场发生突发事件处置时指挥、
	                                	协调和整体作战的能力及联动机制。">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">演练形式</label>
								<div class="col-md-3">
	                                <select class="form-control">
	                                     <option class="form-control" value="请选择">请选择</option>
	                                     <option class="form-control" value="1" selected="selected">桌面演练</option>
	                                     <option class="form-control" value="2">现场演练</option>
	                                </select>
								</div>
								
								<label class="col-md-2 control-label">预案类别</label>
								
								<div class="col-md-3">
									<select class="form-control">
	                                  	<option class="form-control" value="0">请选择</option>
	                                    <option class="form-control" value="1" selected="selected">综合预案</option>
	                                   	<option class="form-control" value="2">专项预案</option>
	                                   	<option class="form-control" value="2">部门预案</option>
                                	</select>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">演练周期</label>
								<div class="col-md-1">
									 <select class="form-control">
                                                  <option class="form-control" value="请选择">请选择周期</option>
                                                  <option class="form-control" value="1" selected="selected">1</option>
                                                  <option class="form-control" value="2">2</option>
                                                  <option class="form-control" value="1">3</option>
                                                  <option class="form-control" value="2">4</option>
                                             </select>
								</div>
								<div class="col-md-1">
									 <select class="form-control">
                                                  <option class="form-control" value="1">周</option>
                                                  <option class="form-control" value="2" >月</option>
                                                  <option class="form-control" value="3" selected="selected">年</option>
                                             </select>
								</div>
								<div class="col-md-1">
									 <select class="form-control">
                                                  <option class="form-control" value="请选择">请选择</option>
                                                  <option class="form-control" value="1" selected="selected">1次</option>
                                                  <option class="form-control" value="2">2次</option>
                                                  <option class="form-control" value="3">3次</option>
                                                  <option class="form-control" value="4">4次</option>
                                                   <option class="form-control" value="5">5次</option>
                                             </select>
								</div>
								
								<label class="col-md-2 control-label">事件类别</label>
								<div class="col-md-3">
									<select class="form-control">
	                                  	<option class="form-control" value="0">请选择</option>
	                                    <option class="form-control" value="1" selected="selected">航空器紧急事件</option>
	                                   	<option class="form-control" value="2">非航空器紧急事件</option>
                                	</select>
								</div>
							</div>
							
							<!-- <div class="form-group">
								<label class="col-md-3 control-label">演练流程</label>
								<div class="col-md-3">
									<input  type="file" class="form-control" placeholder="演练流程">
								</div>
								
								<label class="col-md-2 control-label">参与车辆</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="演练流程"> 
								</div>
							</div> -->
								
							<div class="form-group">
								<label class="col-md-3 control-label">演练科目</label>
								<div class="col-md-3"> 
									<textarea  class="form-control" placeholder="请输入" rows="5">航空器偏出跑道综合演练</textarea> 
								</div>
								
								<label class="col-md-2  control-label">预案选择</label>
								<div class="col-md-3">
									<select class="form-control">
							  			<option value="volvo" selected="selected">航空器失事应急处置预案</option>
										<option value="saab">航空器空中遇险应急处置预案</option>
										<option value="mercedes">航空器地面事故救援应急处置预案</option>
										<option value="audi">航空器跑道事件应急处置预案</option>
										<option value="audi">航空器火警应急处置预案</option>
										<option value="audi">航空器滑行道突发事件应急处置预案</option>
										<option value="audi">低能见度航空器突发事件应急处置预案</option>
									</select>
								</div>
							</div>	
							
							<div class="form-group">
								<label class="col-md-3 control-label">备注</label>
								<div class="col-md-3"> 
									<textarea  class="form-control" placeholder="请输入" rows="5"></textarea> 
								</div>
								<label class="col-md-2 control-label">演练部门</label>
								<div class="col-md-3">
	                                <select class="form-control" multiple="multiple" size="3">
	                                     <option class="form-control" value="1" selected="selected">机场运行指挥中心</option>
	                                     <option class="form-control" value="2" selected="selected">消防护卫部</option>
	                                     <option class="form-control" value="3" selected="selected">急救中心</option>
	                                     <option class="form-control" value="4" selected="selected">公安局</option>
	                                     <option class="form-control" value="5" selected="selected">地面服务部</option>
	                                     <option class="form-control" value="6">货运部</option>
	                                     <option class="form-control" value="7">机务工程部</option>
	                                     <option class="form-control" value="8">保障部</option>
	                                </select>
								</div>
							</div>	
						</div>
																								
						<div class="form-actions">
						<div class="row">
							<div class="col-md-offset-5 col-md-9">
								<button type="submit" class="sbtn sbtn-blue sbtn30">
								保存
								</button>
								<button style="margin-left:45px;" type="button" onclick="javascript:location.href='drillPlanManage.jsp'" class="sbtn sbtn-default sbtn30">返回</button>
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