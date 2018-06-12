<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header_jstree.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>${title }</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet" href="<%=path%>/css/pilotcockpit.css" />
<link rel="stylesheet" href="<%=path%>/css/dataTables.bootstrap.css" />
<link rel="stylesheet" href="<%=path%>/css/pagebar.css" />
<script src="<%=path%>/js/jstree.min.js" type="text/javascript"></script>
<script src="<%=path%>/js/jquery.dataTables.min.js"
	type="text/javascript"></script>
<style>
</style>
</head>
<body>
<div class="sodb-page-home">
	<ul class="sodb-page-ul">
		<li>
			<i class="fa fa-home"></i> 
			<a href="#">青岛机场安全管理</a> 
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">设备信息同步</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">设备信息详情查看</a>
		</li>
	</ul> 
</div>
	<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<div class="row">
					<div class="col-md-12" id="content_1">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-th-list"></i>视频设备信息
								</div>
							</div>
							<div class="portlet-body form">
								<form id="form1" class="form-horizontal" role="form" action="#"
									enctype="multipart/form-data" method="post">
									<div class="form-body">
										<div class="form-group">
											<label class="col-md-3 control-label">设备名称<span
												class="required">* </span></label>
											<div class="col-md-3">
												<input type="text" class="form-control" placeholder="设备名称"
													value="C873高清摄像头" readonly="readonly">
											</div>
											<label class="col-md-2 control-label">IP地址<span
												class="required">* </span></label>
											<div class="col-md-3">
												<input type="text" class="form-control" placeholder="IP地址"
													value="233.233.233.233" readonly="readonly">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">定时任务名称<span
												class="required">* </span></label>
											<div class="col-md-3">
												<input type="text" class="form-control" placeholder="定时任务名称"
													readonly="readonly">
											</div>
											<label class="col-md-2 control-label">设备厂商<span
												class="required">* </span></label>
											<div class="col-md-3">
												<input type="text" class="form-control" placeholder="设备厂商"
													value="EVIA" readonly="readonly">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">平台<span
												class="required">* </span></label>
											<div class="col-md-3">
												<input type="text" class="form-control" placeholder="平台"
													value="平台" readonly="readonly">
											</div>
											<label class="col-md-2 control-label">设备安装地址<span
												class="required">* </span></label>
											<div class="col-md-3">
												<input type="text" class="form-control" placeholder="设备安装地址"
													value="航站区候机大厅" readonly="readonly">
											</div>
										</div>



										<div class="form-group">
											<label class="col-md-3 control-label">经度<span
												class="required">* </span></label>
											<div class="col-md-3">
												<input type="text" class="form-control" placeholder="经度"
													value="116.406281" readonly="readonly">
											</div>
											<div class="col-md-6"></div>
											<label class="col-md-2 control-label">纬度<span
												class="required">* </span></label>
											<div class="col-md-3">
												<input type="text" class="form-control" placeholder="纬度"
													value="39.911172" readonly="readonly">
											</div>

										</div>

										<div class="form-group">
											<label class="col-md-3 control-label">在线状态<span
												class="required">* </span></label>
											<div class="col-md-3">
												<input type="text" class="form-control" placeholder="在线状态"
													value="在线" readonly="readonly">
											</div>
											<div class="col-md-6"></div>
											<label class="col-md-2 control-label">运行状况<span
												class="required">* </span></label>
											<div class="col-md-3">
												<input type="text" class="form-control" placeholder="运行状况"
													value="正常" readonly="readonly">
											</div>

										</div>
									</div>
									<div class="row">
										<div class="col-md-12" style="text-align:center;">
											<button type="submit" class="sbtn sbtn-blue sbtn30">保存</button>
											<button type="submit" class="sbtn sbtn-blue sbtn30" style="margin-left:45px;">编辑</button>
											<button type="button"
												onclick="javascript:location.href='deviceList.jsp'"
												class="sbtn sbtn-default sbtn30" style="margin-left:45px;">返回</button>
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
								<img src="<%=path%>/img/gismap.png">
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
	</div>
	<script type="text/javascript">
		function getPath(obj, fileQuery, transImg) {

			var imgSrc = '', imgArr = [], strSrc = '';

			if (window.navigator.userAgent.indexOf("MSIE") >= 1) { // IE浏览器判断
				if (obj.select) {
					obj.select();
					var path = document.selection.createRange().text;
					obj.removeAttribute("src");
					imgSrc = fileQuery.value;
					imgArr = imgSrc.split('.');
					strSrc = imgArr[imgArr.length - 1].toLowerCase();
					if (strSrc.localeCompare('jpg') === 0
							|| strSrc.localeCompare('jpeg') === 0
							|| strSrc.localeCompare('gif') === 0
							|| strSrc.localeCompare('png') === 0) {
						obj.setAttribute("src", transImg);
						obj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
								+ path + "', sizingMethod='scale');"; // IE通过滤镜的方式实现图片显示
					} else {
						throw new Error(
								'File type Error! please image file upload..');
					}
				} else {
					imgSrc = fileQuery.value;
					imgArr = imgSrc.split('.');
					strSrc = imgArr[imgArr.length - 1].toLowerCase();
					if (strSrc.localeCompare('jpg') === 0
							|| strSrc.localeCompare('jpeg') === 0
							|| strSrc.localeCompare('gif') === 0
							|| strSrc.localeCompare('png') === 0) {
						obj.src = fileQuery.value;
					} else {
						throw new Error(
								'File type Error! please image file upload..');
					}

				}

			} else {
				var file = fileQuery.files[0];
				var reader = new FileReader();
				reader.onload = function(e) {

					imgSrc = fileQuery.value;
					imgArr = imgSrc.split('.');
					strSrc = imgArr[imgArr.length - 1].toLowerCase();
					if (strSrc.localeCompare('jpg') === 0
							|| strSrc.localeCompare('jpeg') === 0
							|| strSrc.localeCompare('gif') === 0
							|| strSrc.localeCompare('png') === 0) {
						obj.setAttribute("src", e.target.result);
					} else {
						throw new Error(
								'File type Error! please image file upload..');
					}
				}
				reader.readAsDataURL(file);
			}
		}

		function show() {
			//以下即为完整客户端路径
			var file_img = document.getElementById("img"), logo = document
					.getElementById("logo");
			getPath(file_img, logo, file_img);
		}
	</script>
</body>
</html>