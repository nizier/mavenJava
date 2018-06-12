<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>添加设备</title>
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
<a href="#">值班日志管理</a> 
<i class="fa fa-angle-right"></i>
</li>
<li>
<a href="#">新增值班日志</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#"></a></li>
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
									<i class="fa fa-th-list"></i>值班日志信息
								</div>								
							</div>
<div class="portlet-body form">
                    <form id="form1" class="form-horizontal" role="form" action="#" enctype="multipart/form-data"  method="post">
									<div class="form-body">
										<div class="form-group">
											<label class="col-md-3 control-label">值班员名字<span class="required">* </span></label>
											<div class="col-md-6">
												<input  type="text" class="form-control" placeholder="值班员名字">
											</div>
											
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">所属单位<span class="required">* </span></label>
											<div class="col-md-6">
												<input  type="text" class="form-control" placeholder="所属单位">
											</div>
											
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">日志文档<span class="required">* </span></label>
											<div class="col-md-6">
												<input  type="file" class="form-control">
											</div>
										
										</div>
										
									
										<div class="form-group">
											<label class="col-md-3 control-label">日志内容</label>
											<div class="col-md-6">
												<textarea  class="form-control" placeholder="请输入"></textarea>
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-3 control-label">写入时间<span class="required">* </span></label>
											<div class="col-md-6">
												<input  type="text" class="form-control" value="" id="key" readonly="readonly">
											</div>
											
										</div>
										</div>																			
										<div class="form-actions">
										<div class="row">
											<div class="col-md-offset-5 col-md-9">
												<button type="submit" class="sbtn sbtn-blue sbtn30">
												保存
												</button>
												<button style="margin-left:45px;" type="button" onclick="javascript:location.href='dutyLog.jsp'" class="sbtn sbtn-default sbtn30">返回</button>
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
<script type="text/javascript">
var myDate=new Date();
document.getElementById("key").value = myDate;
</script>
</body>
</html>