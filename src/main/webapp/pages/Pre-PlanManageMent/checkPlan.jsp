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
body {
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
	-khtml-user-select: none;
	user-select: none;
}
</style>
</head>
<body>
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">预案管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">预案查看</a></li>
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
								<div  class="col-md-12">
									<h1 style="text-align: center;font-weight: bold;">航空器失事应急处置预案</h1>
									<h3 style="font-weight: bold;margin-left: 5%">1.1机场应急救援管理系统</h3>
									<h4 style="font-weight: bold;margin-left: 5%;line-height: 30px;">1.1.1	系统概述</h4>
									<h4 style="font-weight: bold;margin-left: 5%;line-height: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;机场应急救援管理系统是为机场应急管理中心提供一套集应急演练、培训、流程管理、评估分析等功能的重要支撑系统，
										可以满足机场应对应急救援事件的需要。本系统能够辨别相关事故，维护事故处理流程预案，便于各部门对应急预案的查询检索
										；并可通过基于二维/三维地图应急演练电子沙盘系统，进行应急推演的模拟演练，从而进一步提高机场对类似事件的应对能力，优化相关应急流程。</h4>
									<h3 style="font-weight: bold;margin-left: 5%">1.2功能需求</h3>
									<h4 style="font-weight: bold;margin-left: 5%">1.2.1应急救援预案管理</h4>
									<h4 style="font-weight: bold;margin-left: 5%;line-height: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;可以通过应急救援预案管理实现对应急救援预案的日常维护，
										实现应急救援预案维护、预案分类管理、预案查看、预案查询。</h4>
									<h4 style="font-weight: bold;margin-left: 5%">1.2.2应急救援事件管理</h4>
									<h4 style="font-weight: bold;margin-left: 5%;line-height: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;根据民用运输机场突发事件应急救援管理规则（交通运输部令2016年第45号）或
										（中国民用航空局令第208号），对紧急事件进行分类。机场紧急事件包括航空器紧急事件和非航空器紧急事件，可以添加、修改、删除、查看预案分类。</h4>
									<h4 style="font-weight: bold;margin-left: 5%">1.2.3应急救援预案维护</h4>	
									<h4 style="font-weight: bold;margin-left: 5%;line-height: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;预案编辑：主体为预案编辑网格图，同时提供相应文档编写工具编写菜单及业务流程节点，用户通过拖拽的方式编辑预案，
										实现流程化编辑。一个完整的预案流程包括一个开始节点、一个结束节点，以及能从开始节点到结束节点间的流程完整性。</h4>
									<h3 style="font-weight: bold;margin-left: 5%">1.3应急救援指挥协调</h3>	
									<h4 style="font-weight: bold;margin-left: 5%;line-height: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;应急救援指挥协调主要是在发生紧急事件时，机场应急救援指挥中心以及各应急救援部门及时掌握紧急事件的最新情况，
										并了解其它部门的应急救援实施的最新状况，同时检查应急救援相关人员、物资、设备等救援资源的配置情况，并根据国标和行业规范进行救援资源的配置预警，
										便于应急救援指挥中心调配应急救援各部门行动和资源，达到应急演练或救援的最佳效果。</h4>
									<h3 style="font-weight: bold;margin-left: 5%">1.4应急救援演练</h3>	
									<h4 style="font-weight: bold;margin-left: 5%;line-height: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;应急救援演练利用机场地理信息系统所搭建的二维电子沙盘实现基于GIS可视化的综合应急推演平台，通过集成日常监控、
										指挥、设计的各类模型信息，在统一的二维可视化的平台中提供浏览、飞行、查询、模拟设计等功能，并可支持提供如航空器、车辆、人员等定位实时数据系统的集成和联动功能。通过该系统的建设，为机场应急管理人员提供了一个直观形象的可视化管理平台，可有效的辅
										助机场应急管理人员进行应急事件调度指挥决策并为日常各类培训提供形象化的教材。</h4>
								</div>
								
								
								<div class="form-actions">
									<div class="row">
										<div class="col-md-offset-5 col-md-9">
											<button style="margin-left: 45px;" type="button"
												 onclick="window.location.href='maintainPlan.jsp'"
												class="sbtn sbtn-blue sbtn30">关闭</button>
										</div>
									</div>
								</div>
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
</script>
</body>
</html>