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
<a href="#">应急救援指挥协调</a> 
<i class="fa fa-angle-right"></i>
</li>
<li>
<a href="#">应急救援演练计划管理</a>
</li>
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
					<i class="fa fa-th-list"></i>演练流程信息
				</div>								
			</div>
				<div class="portlet-body form">
                    <form id="form1" class="form-horizontal" role="form" action="#" enctype="multipart/form-data"  method="post">
						<div class="form-body">
							<div class="form-group">
								<label class="col-md-3 control-label">演练名称</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="演练名称" value="航空器失事应急" readonly="readonly">
								</div>
								
								<label class="col-md-2  control-label">演练阶段</label>
								<div class="col-md-3">
									<select class="form-control" readonly="readonly">
							  			<option value="volvo" selected="selected">准备阶段</option>
										<option value="saab" selected="selected">处置阶段</option>
									</select>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">演练地点</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="演练地点" value="机场应急救援指挥中心" readonly="readonly">
								</div>
	
								
								<label class="col-md-2 control-label">上报人</label>
								<div class="col-md-3">
									<input  type="text" class="form-control" placeholder="演练地点" value="李XX" readonly="readonly">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label">事件内容</label>
								<div class="col-md-3"> 
									<textarea  class="form-control" placeholder="请输入" rows="5">机场应急救援指挥中心收到信息后立即启动机场应急救援预案，命令消防、急救、公安赶赴</textarea> 
								</div>
							</div>
							
							<!-- <div class="form-group">
								<div class="col-md-6"></div>
								<label class="col-md-2 control-label">应急救援资源选择</label>
								<div class="col-md-3">
	                                <div id="resourceTree" class="tree-demo"></div>
								</div>-->
						</div> 
							
						<div class="form-actions">
						<div class="row">
							<div class="col-md-offset-5 col-md-9">
								<button type="submit" class="sbtn sbtn-blue sbtn30">
								保存
								</button>
								<button style="margin-left:45px;" type="button" onclick="javascript:location.href='logManage.jsp'" class="sbtn sbtn-default sbtn30">返回</button>
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
</script>
<script type="text/javascript" src="/EMS-Prototype/js/emergencyIntegrate/resourceTree.js"></script>
</body>
</html>