<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header_jstree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>添加标签</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet" href="<%=path %>/css/pilotcockpit.css" />
<link rel="stylesheet" href="<%=path %>/css/pagebar.css" />

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
<a href="#">安全事件处置</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">安全事件接警</a></li>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
   <div id="content_1">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-th-list"></i>专题基本信息
								</div>								
							</div>
<div class="portlet-body form">
                    <form id="form1" class="form-horizontal" role="form" action="#" enctype="multipart/form-data"  method="post">
									<div class="form-body">
										<div class="form-group">
											<label class="col-md-3 control-label">专题名<span class="required">* </span></label>
											<div class="col-md-6">
												<input ${flag=='view'?'disabled':'' } type="text" class="form-control" placeholder="请输入" name="airName" value="${air.airName }">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-3 control-label">专题值<span class="required">* </span></label>
											<div class="col-md-6">
												<input ${flag=='view'?'disabled':'' } type="text" class="form-control" placeholder="请输入" name="airNameEn" value="${air.airNameEn }">
											</div>
										</div>
										
										
										<div class="form-group">
											<label class="col-md-3 control-label">专题序号<span class="required">* </span></label>
											<div class="col-md-6">
												<input ${flag=='view'?'disabled':'' } type="text" class="form-control" placeholder="请输入" name="machineNo" value="${air.machineNo }">
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-3 control-label">说明<span class="required">* </span></label>
											<div class="col-md-6">
												<textarea ${flag=='view'?'disabled':'' }  class="form-control" placeholder="请输入" name="machineNo"></textarea>
											</div>
										</div>											
									</div>
								    	<div class="form-actions">
										<div class="row">
											<div class="col-md-offset-5 col-md-9">
												<c:if test="${empty flag }">
												<button type="submit" class="btn btn-info">
													<i class="fa fa-pencil"></i> 保存
												</button>
												</c:if>
												<button type="button" onclick="javascript:location.href='label.jsp'" class="btn default">返回</button>
											</div>
										</div>
									</div>
								</form>
								</div>
						</div>
					</div>
				</div>
				</div>
				</div>

</body>
</html>