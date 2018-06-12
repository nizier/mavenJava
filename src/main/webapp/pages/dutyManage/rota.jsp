<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header.jsp"%>
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.5
Version: 4.1.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>${title }</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="<%=path %>/css/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/uniform.default.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="<%=path %>/css/fullcalendar.min.css" rel="stylesheet" />
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="<%=path %>/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/default.css" rel="stylesheet" type="text/css" id="style_color"/> 
<%-- <link href="${context}/resources/metronic/admin/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color"/> --%>
<link href="<%=path %>/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" /> 
<style type="text/css">
.fc-ltr .fc-basic-view .fc-other-month {
	background: #DDDDDD none repeat scroll 0 0;
	opacity: 0.3;
}

.fc-day {
	/* background-color: red; */
	background: url('<%=path %>/img/duty_bj.png') no-repeat;
	background-position: center;
}
.fc-today{
	
}

.portlet.calendar .fc-event{
	min-height: 55px;
   	width: 99%;
}
</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-full-width ">
	<!-- BEGIN HEADER -->

	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">

		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

				<!-- /.modal -->
				<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<!-- BEGIN STYLE CUSTOMIZER -->

				<!-- END STYLE CUSTOMIZER -->
				<!-- BEGIN PAGE HEADER-->
				 <div class="sodb-page-home">
                    <ul class="sodb-page-ul">
                      <li>
                        <i class="fa fa-home"></i> 
                        <a href="#">青岛机场安全管理</a> 
                        <i class="fa fa-angle-right"></i>
                      </li>
                      <li>
                       <a href="#">业务资源可视化</a>
                       <i class="fa fa-angle-right"></i>
                      </li>
                      <li><a href="#">值班管理</a></li>
                   </ul> 
                </div>
                	<ul id="myTab" class="nav nav-tabs">
    <li class="active"><a href="dutyPeopleList.jsp" >
            人员管理</a>
    </li>
    <li class="active"><a href="sectorManagement.jsp">部门管理</a></li>
     <li class="active"><a href="rota.jsp" data-toggle="tab">
            排班管理</a>
    </li>
    <li class="active"><a href="changeShifts.jsp">交接班管理</a></li>
</ul>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					<div class="col-md-12">
						<div class="portlet box blue-hoki calendar">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-gift"></i>排班表
								</div>
								<div class="actions" style="margin-right: 90px;">
									<a id="btn_infor_print" class="btn yellow-crusta btn-sm printExcel" href="javascript:void(0);">
									<i class="fa fa-upload"></i> 导出
									</a>
									<a id="btn_infor_print" class="btn yellow-crusta btn-sm importExcel" href="javascript:void(0);">
									<i class="fa fa-download"></i> 导入
									</a>
								</div>
							</div>
							<div class="portlet-body">
								<div class="row">
									<div class="col-md-12 col-sm-12">
										<div id="calendar" class="has-toolbar"></div>
									</div>
								</div>
								<!-- END CALENDAR PORTLET-->
							</div>
						</div>
					</div>
				</div>
				<!-- END PAGE CONTENT-->
			</div>
		</div>
		<!-- END CONTENT -->

	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->

	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<!--[if lt IE 9]>
	<script src="${context}/resources/metronic/global/plugins/respond.min.js"></script>
	<script src="${context}/resources/metronic/global/plugins/excanvas.min.js"></script> 
	<![endif]-->
	<script src="<%=path %>/js/jquery.min.js" type="text/javascript"></script>
    <script src="<%=path %>/js/jquery-migrate.min.js" type="text/javascript"></script> 
	<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="<%=path %>/js/jquery-ui.min.js" type="text/javascript"></script>
	<script src="<%=path %>/js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script> 
    <script src="<%=path %>/js/jquery.slimscroll.min.js" type="text/javascript"></script> 
    <script src="<%=path %>/js/jquery.blockui.min.js" type="text/javascript"></script> 
    <script src="<%=path %>/js/jquery.cokie.min.js" type="text/javascript"></script>  
   <script src="<%=path %>/js/jquery.uniform.min.js" type="text/javascript"></script> 
 	<script src="<%=path %>/js/bootstrap-switch.min.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
 	<script src="<%=path %>/js/layer.js"></script>
	<script src="<%=path %>/js/iframeResizer.contentWindow.min.js" type="text/javascript"></script>
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<!-- IMPORTANT! fullcalendar depends on jquery-ui.min.js for drag & drop support -->
	<script src="<%=path %>/js/moment.min.js"></script>
	<script src="<%=path %>/js/fullcalendar.min.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="<%=path %>/js/metronic.js" type="text/javascript"></script>
 	<script src="<%=path %>/js/layout.js" type="text/javascript"></script> 
	<script src="<%=path %>/js/sdhcalendar.js"></script>
	<script>
		jQuery(document).ready(function() {
			Calendar.init();
			
			$(".fc-state-active").text("月");
		});
	</script>
	<!-- END PAGE LEVEL SCRIPTS -->
</body>
<!-- END BODY -->
</html>