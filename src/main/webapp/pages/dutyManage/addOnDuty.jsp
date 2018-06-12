<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header.jsp"%>
<!DOCTYPE html>
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
<link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap-select.min.css"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/select2.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/multi-select.css"/>
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="<%=path %>/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
<%-- <link href="${context}/resources/metronic/admin/layout/css/themes/darkblue.css?v=<%=cv%>" rel="stylesheet" type="text/css" id="style_color"/> --%>
<link href="<%=path %>/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />

<style>
.dashboard-stat .details .number {
	font-size: 24px;
}
body{
	background-color:#ffffff;
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
<body class="page-full-width">
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<!-- <div class="page-content"> -->

			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<!-- blue-hoki -->
				<div class="col-md-12">
					<div class="portlet box">
						<div class="portlet-body form">
							<form id="form1" class="form-horizontal" role="form" action="#" method="post">
								<input type="hidden" id="dutyFormId" name="dutyFormId">
								<input type="hidden" id="action" name="action">
								<input type="hidden" id="leaderNameDay" name="leaderNameDay">
								<input type="hidden" id="personNameDay" name="personNameDay">
								<input type="hidden" id="leaderNameNight" name="leaderNameNight">
								<input type="hidden" id="personNameNight" name="personNameNight">
								<div class="form-body">
									<div class="form-group">
										<label class="col-md-3 control-label">当前日期<span class="required">* </span></label>
										<div class="col-md-4">
											<input type="text" class="form-control" placeholder="请输入">
										</div>
									</div>
									<h3 class="form-section">白班</h3>
									<div class="form-group">
										<label class="col-md-3 control-label">值班领导姓名<span class="required">* </span></label>
										<div class="col-md-4">
										        <input type="text" class="form-control" placeholder="请输入">
<!-- 											<select id="leaderUserIdDay" name="leaderUserIdDay" class="form-control select2me" > -->
<!-- 												<option value="">请选择...</option> -->
<%-- 												<c:forEach items="${users}" var="user"> --%>
<%-- 													<option username="${user.userName }"  telphone="${user.telPhone}" value="${user.userId}">${user.userName}[${user.orgName}]</option> --%>
<%-- 												</c:forEach> --%>
<!-- 											</select> -->
											<%-- <input type="text" class="form-control" placeholder="请输入" name="leaderNameDay" value="${dutyForm.leaderNameDay }"> --%>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-3 control-label">值班领导电话<span class="required">* </span></label>
										<div class="col-md-4">
											<input type="text" class="form-control" placeholder="请输入" id="leaderPhoneDay" name="leaderPhoneDay">
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-3 control-label">值班员姓名<span class="required">* </span></label>
										<div class="col-md-4">
										      <input type="text" class="form-control" placeholder="请输入">
<!-- 											<select id="personUserIdDay" name="personUserIdDay" class="form-control select2me"> -->
<!-- 												<option value="">请选择...</option> -->
<%-- 												<c:forEach items="${users}" var="user"> --%>
<%-- 													<option username="${user.userName }" telphone="${user.telPhone}" value="${user.userId}">${user.userName}[${user.orgName}]</option> --%>
<%-- 												</c:forEach> --%>
<!-- 											</select> -->
											<%-- <input type="text" class="form-control" placeholder="请输入" name="personNameDay" value="${dutyForm.personNameDay }"> --%>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-3 control-label">值班员电话<span class="required">* </span></label>
										<div class="col-md-4">
											<input type="text" class="form-control" placeholder="请输入" id="personPhoneDay" name="personPhoneDay">
										</div>
									</div>
									<h3 class="form-section">夜班</h3>
									<div class="form-group">
										<label class="col-md-3 control-label">值班领导姓名<span class="required">* </span></label>
										<div class="col-md-4">
										<input type="text" class="form-control" placeholder="请输入">
											<%-- <input type="text" class="form-control" placeholder="请输入" name="leaderNameNight" value="${dutyForm.leaderNameNight }"> --%>
<!-- 											<select id="leaderUserIdNight" name="leaderUserIdNight" class="form-control select2me" > -->
<!-- 												<option value="">请选择...</option> -->
<%-- 												<c:forEach items="${users}" var="user"> --%>
<%-- 													<option username="${user.userName }"  telphone="${user.telPhone}" value="${user.userId}">${user.userName}[${user.orgName}]</option> --%>
<%-- 												</c:forEach> --%>
<!-- 											</select> -->
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-3 control-label">值班领导电话<span class="required">* </span></label>
										<div class="col-md-4">
											<input type="text" class="form-control" placeholder="请输入">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">值班员姓名<span class="required">* </span></label>
										<div class="col-md-4">
									    	<input type="text" class="form-control" placeholder="请输入">
											<%-- <input type="text" class="form-control" placeholder="请输入" name="personNameNight" value="${dutyForm.personNameNight }"> --%>
<!-- 											<select id="personUserIdNight" name="personUserIdNight" class="form-control select2me" > -->
<!-- 												<option value="">请选择...</option> -->
<%-- 												<c:forEach items="${users}" var="user"> --%>
<%-- 													<option username="${user.userName }" telphone="${user.telPhone}" value="${user.userId}">${user.userName}[${user.orgName}]</option> --%>
<%-- 												</c:forEach> --%>
<!-- 											</select> -->
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">值班员电话<span class="required">* </span></label>
										<div class="col-md-4">
											<input type="text" class="form-control" placeholder="请输入">
										</div>
									</div>

								</div>
								<div style="margin-left: 80px;">

									<div class="col-md-6">
										<button type="submit" class="btn btn-info">
											<i class="fa fa-pencil"></i> 保存
										</button>
<%-- 										<c:if test="${not empty action }"> --%>
<%-- 											<button data-id="${dutyForm.dutyFormId }" type="button" class="btn btn-info delete"> --%>
<!-- 												<i class="fa fa-pencil"></i> 删除 -->
<!-- 											</button> -->
<%-- 										</c:if> --%>
										<button type="button" id="closeIframe" class="btn default">取消</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- </div> -->
				</div>
				<!-- END PAGE CONTENT-->
			</div>
		</div>
		<!-- END CONTENT -->

	</div>
	<!-- END CONTAINER -->
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

	<script src="<%=path %>/js/iframeResizer.contentWindow.min.js" type="text/javascript"></script>
	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script type="text/javascript" src="<%=path %>/js/jquery.validate.min.js"></script>
	
	<script type="text/javascript" src="<%=path %>/js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/select2.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/jquery.multi-select.js"></script>
	
	<script type="text/javascript" src="<%=path %>/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/dataTables.bootstrap.js"></script>

	<!-- END PAGE LEVEL SCRIPTS -->
	<script src="/metronic.js" type="text/javascript"></script>
	<script>
		jQuery(document).ready(function() {
// 			Metronic.init(); // init metronic core components
			
			<c:if test="${not empty action}">
				$("#leaderUserIdDay").find("option[value='${dutyForm.leaderUserIdDay}']").attr("selected", true);
				$("#personUserIdDay").find("option[value='${dutyForm.personUserIdDay}']").attr("selected", true);
				$("#leaderUserIdNight").find("option[value='${dutyForm.leaderUserIdNight}']").attr("selected", true);
				$("#personUserIdNight").find("option[value='${dutyForm.personUserIdNight}']").attr("selected", true);
			</c:if>
			
			var $select0 = $('#leaderUserIdDay').select2({
	            placeholder: "选择白班值班领导",
	            allowClear: true,
	            maximumSelectionSize:1
	        });
			
			$("#leaderUserIdDay").on("change", function() {
				var username = $(this).find("option:selected").attr("username");
				var telphone = $(this).find("option:selected").attr("telphone");
				$("#leaderNameDay").val(username);
				$("#leaderPhoneDay").val(telphone);
			});
			
			var $select1 = $('#personUserIdDay').select2({
	            placeholder: "选择白班值班员",
	            allowClear: true,
	            maximumSelectionSize:1
	        });
			
			$("#personUserIdDay").on("change", function() {
				var username = $(this).find("option:selected").attr("username");
				var telphone = $(this).find("option:selected").attr("telphone");
				$("#personNameDay").val(username);
				$("#personPhoneDay").val(telphone);
			});
			
			var $select2 = $('#leaderUserIdNight').select2({
				placeholder: "选择夜班值班领导",
	            allowClear: true,
	            maximumSelectionSize:1
	        });
			
			$("#leaderUserIdNight").on("change", function() {
				var username = $(this).find("option:selected").attr("username");
				var telphone = $(this).find("option:selected").attr("telphone");
				$("#leaderNameNight").val(username);
				$("#leaderPhoneNight").val(telphone);
			});
			
			var $select3 = $('#personUserIdNight').select2({
				placeholder: "选择夜班值班员",
	            allowClear: true,
	            maximumSelectionSize:1
	        });
			
			$("#personUserIdNight").on("change", function() {
				var username = $(this).find("option:selected").attr("username");
				var telphone = $(this).find("option:selected").attr("telphone");
				$("#personNameNight").val(username);
				$("#personPhoneNight").val(telphone);
			});
				
			var index = parent.layer.getFrameIndex(window.name);
			$('#closeIframe').click(function(){
			    var val = $('#name').val();
			    parent.layer.close(index);
			});
			
			var form1 = $('#form1');
	        form1.validate({
                errorElement: 'span', //default input error message container
                errorClass: 'help-block help-block-error', // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                ignore: "",  // validate all fields including form hidden input
                messages: {
                	leaderUserIdDay:{
                    	required:"请选择白班值班领导"
                    },
                    leaderPhoneDay: {
                    	required:"白班值班领导电话是必填项"
                    },
                    personUserIdDay:{
                    	required:"请选择白班值班员"
                    },
                    personPhoneDay:{
                    	required:"白班值班员电话是必填项"
                    },
                    leaderUserIdNight:{
                    	required:"请选择夜班值班领导"
                    },
                    leaderPhoneNight:{
                    	required:"夜班值班领导电话是必填项"
                    },
                    personUserIdNight:{
                    	required:"请选择夜班值班员"
                    },
                    personPhoneNight:{
                    	required:"夜班值班员电话是必填项"
                    }
                },
                rules: {
                	leaderUserIdDay:{
                		required: true
                    },
                    leaderPhoneDay: {
                    	required: true
                    },
                    personUserIdDay:{
                    	required: true
                    },
                    personPhoneDay:{
                    	required: true
                    },
                    leaderUserIdNight:{
                    	required: true
                    },
                    leaderPhoneNight:{
                    	required: true
                    },
                    personUserIdNight:{
                    	required: true
                    },
                    personPhoneNight:{
                    	required: true
                    }
                    
                },

                highlight: function (element) { // hightlight error inputs
                    $(element)
                        .closest('.form-group').addClass('has-error'); // set error class to the control group
                },

                unhighlight: function (element) { // revert the change done by hightlight
                    $(element)
                        .closest('.form-group').removeClass('has-error'); // set error class to the control group
                },
                submitHandler: function (form) {
                    var action = $("#action").val();
                    var url = "${context }/duty/add";
                    if("edit" == action){
                    	url = "${context }/duty/edit";
                    }
                    $.ajax({
                    	type: "POST",
                    	url: url,
                    	data: $("#form1").serialize(),
                    	success: function(data){
                    		if(data.status>0){
                    			parent.layer.close(index);
                    		}
                    	}
                    });
                }
            });
	        
// 	        $(document).on('click', '.delete', function(e) {
// 				var dataId = $(this).attr("data-id");
// 				if (confirm("确定删除？")) {
// 					$.ajax({
// 						type: "post",
// 						url: "${context}/duty/delete?dutyFormId="+dataId,
// 						success: function(data, textStatus){
// 							if(data.status>0){
// 								parent.layer.close(index);
// 							}else{
// 								alert(data.msg);
// 							}
// 						},
// 						error: function(){
// 						}
// 					});
// 				}
// 			});
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>