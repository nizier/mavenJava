<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>添加设备</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet" href="<%=path %>/css/pagebar.css" />
<link rel="stylesheet" href="<%=path %>/extends/jquery-clock-timepicker/css/normalize.css" />
<link rel="stylesheet" href="<%=path %>/css/sandTable/drillConfig.css" /><script type="text/javascript" src="<%=path%>/js/bootstrap-select.js"></script>
<script type="text/javascript" src="<%=path%>/js/sandTable/drillConfig.js"></script>
<script type="text/javascript" src="<%=path%>/extends/jquery-clock-timepicker/js/jquery-clock-timepicker.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/drillManage/Math.uuid.js"></script>

<style>
.form-group {
	margin:30px;
}
</style>
<script type="text/javascript">
	$(window).on('load', function() {
		$('.time').clockTimePicker({});
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
<a href="#">演练基本信息</a>
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
					<i class="fa fa-th-list"></i>演练信息
				</div>								
			</div>
				<div class="portlet-body form">
                    <form id="form1" class="form-horizontal" role="form" action="#" enctype="multipart/form-data"  method="post">
                    	<input type="hidden" id="curFlowId"/>
                    	<input type="hidden" id="curPeriodId"/>
                    	<div class="form-body">
	                    	<div id="all-period-container">
								<div class="period-container" id="period-1123">
									<div class="period-title">准备阶段
										<button class="period-del-btn" type="button" title="删除此阶段" onclick="confirmDelPeriod(this)">删除</button>
									</div>
									<div class="period-cut-off"></div>
									<div class="period-body">
										<div class="all-flow-container" id="flow-container-123">
											<div class="flow-container" id="flow-first">
												<div class="flow-body col-md-1">
													<div class="flow-title">流程1</div>
												</div>
												
												<div class="flow-body col-md-2" style="padding:5px;text-align: left">
													<div id="resourceTree" class="tree-demo"></div>
												</div>
												
												<div class="flow-body col-md-1">
													时间:<input class="time" id="timePicker" type="text" value="00:00" style="margin:6px;"/>
												</div>
												
												<div class="flow-body col-md-5 no-blank" style="padding:5px;">
													文字操作:
													<input type="text" class="text-op" placeholder=" 请输入文字操作描述">
												</div>
												
												<div class="flow-body col-md-2 no-blank" style="padding:5px;">
													地图操作:
													<button class="map-op-btn sbtn-blue" type="button" onclick="editMapOp()">编辑</button>
													<button class="map-op-btn sbtn-blue" type="button" onclick="clearMapOp()">清除</button>
												</div>
												
												<div class="flow-del-btn" onclick="confirmDelFlow(this);">×</div>
												
											</div>
										</div>
										<div class="flow-container">
											<div class="flow-add-btn" onclick="nameFlow(this);" title="添加流程">+</div>
										</div>
									</div>
								</div>
							</div> 
							<div class="period-container">
								<div class="period-body"  style="padding-top:5px;">
									<div class="period-add-btn" onclick="namePeriod()" title="添加阶段">+</div>
								</div>
							</div>
							
						 </div>
						<!-- <div class="form-group">
								<div class="col-md-6"></div>
								<label class="col-md-2 control-label">应急救援资源选择</label>
								<div class="col-md-3">
	                                <div id="resourceTree" class="tree-demo"></div>
								</div>-->	
						<div class="form-actions">
						<div class="row">
							<div class="col-md-offset-5 col-md-9">
								<button type="button" class="sbtn sbtn-blue sbtn30" onclick="javascript:location.href='drillManage.jsp'">
								保存
								</button>
								<button style="margin-left:45px;" type="button" onclick="javascript:location.href='drillManage.jsp'" class="sbtn sbtn-default sbtn30">返回</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!--start modal-->  
<div class="modal fade bs-example-modal-sm" id="periodNameModal" role="dialog" aria-label="myModalLabel" aria-hidden="true">  
    <div class="modal-dialog"  style="width:500px">  
        <div class="modal-content">  
            <div class="modal-header" style="background-color: #f7f7f7;height:50px;">  
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">  
                    <span aria-hidden="true">×</span>  
                </button>  
                <h5 class="modal-title"><b>请输入阶段名称</b></h5>  
            </div>  
            <div class="modal-body">  
            	<input type="text" class="form-control" id="periodName" placeholder="请输入阶段名称">
            </div>  
            <div class="modal-footer">  
                <button type="button" class="btn btn-primary" onclick="addPeriod()">  
                    确定 
                </button>  
                <button type="button" class="btn btn-default" data-dismiss="modal">  
                    取消  
                </button>  
            </div>  
        </div>  
    </div>  
</div>  

<div class="modal fade bs-example-modal-sm" id="flowNameModal" role="dialog" aria-label="myModalLabel" aria-hidden="true">  
    <div class="modal-dialog"  style="width:500px">  
        <div class="modal-content">  
            <div class="modal-header" style="background-color: #f7f7f7;height:50px;">  
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">  
                    <span aria-hidden="true">×</span>  
                </button>  
                <h5 class="modal-title"><b>请输入流程名称</b></h5>  
            </div>  
            <div class="modal-body">  
            	<input type="text" class="form-control" id="flowName" placeholder="请输入流程名称">
            	<input type="hidden" id="father-period-id">
            </div>  
            <div class="modal-footer">  
                <button type="button" class="btn btn-primary" onclick="addFlow()">  
                    确定 
                </button>  
                <button type="button" class="btn btn-default" data-dismiss="modal">  
                    取消  
                </button>  
            </div>  
        </div>  
    </div>  
</div>

<div class="modal fade bs-example-modal-sm" id="flowDelModal" role="dialog" aria-label="myModalLabel" aria-hidden="true">  
    <div class="modal-dialog"  style="width:500px">  
        <div class="modal-content">  
            <div class="modal-header" style="background-color: #f7f7f7;height:50px;">  
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">  
                    <span aria-hidden="true">×</span>  
                </button>  
                <h5 class="modal-title"><b>确认删除</b></h5>  
            </div>  
            <div class="modal-body">  
            	确定要删除此项流程吗？
            </div>  
            <div class="modal-footer">  
                <button type="button" class="btn btn-primary" onclick="delFlow()">  
                    确定 
                </button>  
                <button type="button" class="btn btn-default" data-dismiss="modal">  
                    取消  
                </button>  
            </div>  
        </div>  
    </div>  
</div>  

<div class="modal fade bs-example-modal-sm" id="periodDelModal" role="dialog" aria-label="myModalLabel" aria-hidden="true">  
    <div class="modal-dialog"  style="width:500px">  
        <div class="modal-content">  
            <div class="modal-header" style="background-color: #f7f7f7;height:50px;">  
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">  
                    <span aria-hidden="true">×</span>  
                </button>  
                <h5 class="modal-title"><b>确认删除</b></h5>  
            </div>  
            <div class="modal-body">  
            	确定要删除此阶段吗？
            </div>  
            <div class="modal-footer">  
                <button type="button" class="btn btn-primary" onclick="delPeriod()">  
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
<script type="text/javascript" src="<%=path %>/js/drillManage/resourceTree.js"></script>
</body>
</html>