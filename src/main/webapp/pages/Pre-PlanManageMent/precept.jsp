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
										<div class="form-group">
										<label class="col-md-4 control-label">方案编号<span
											class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="格式为A0001">
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">方案名称<span
											class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" placeholder="请输入方案名称">
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">方案描述<span
											class="required">* </span></label>
										<div class="col-md-6">
											<textarea class="form-control" ></textarea>
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
								<!-- 	111	 -->	
								<div class="tabbable" id="tabs-975144" style="margin-top:50px">
					<ul class="nav nav-tabs">
					<li class= "active">
						 <a href="#panel-938456" data-toggle="tab">应急救援处置阶段</a>
					</li>
					<li class="activees">
						 <a href="#panel-933832" data-toggle="tab">后期处置阶段</a>
					</li>
					<li class="actives">
						 <a href="#panel-9338323" data-toggle="tab">机场恢复阶段</a>
					</li>
					<li class="activess">
						 <a href="#panel-9338324" data-toggle="tab">其他</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-938456" style="margin-left: 15px;margin-top: 30px;">
						<input type="checkbox"  checked="checked"/>&nbsp;<span style="font-size:18px">现场指挥</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">撤离地区</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">集结点</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">联络员</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">其他</span>&nbsp;&nbsp;&nbsp;&nbsp;
						
						
					</div>
					<div class="tab-pane activees" id="panel-933832" style="margin-left: 15px;margin-top: 30px;">
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">行李物品清理</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">临时救援站</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">对外新闻发布</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">联伤亡人员处置</span>&nbsp;&nbsp;&nbsp;&nbsp;					
					</div>
						<div class="tab-pane actives" id="panel-9338323" style="margin-left: 15px;margin-top: 30px;">
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">发布航行通告</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">场道、灯光修复</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">道面清理</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">申请恢复</span>&nbsp;&nbsp;&nbsp;&nbsp;					
					</div>
					<div class="tab-pane actives" id="panel-9338324" style="margin-left: 15px;margin-top: 30px;">
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">其他1</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">其他2</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">其他3</span>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox"  />&nbsp;<span style="font-size:18px">其他4</span>&nbsp;&nbsp;&nbsp;&nbsp;					
					</div>
				</div>
			</div>
									
	
								<!-- 	111	 -->							
								</div>
								<div class="form-actions" style="margin-top: 30px;">
									<div class="row">
										<div class="col-md-offset-5 col-md-9">
											<button type="submit" class="sbtn sbtn-blue sbtn30">
												保存</button>
											<button style="margin-left: 45px;" type="button"
												 onclick="window.location.href='preceptList.jsp'"
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
</script>
</body>
</html>