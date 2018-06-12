<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/pages/inc/deviceHeadTree.jsp"%>
<style type="text/css">
.form-inline .form-control {
	width: 230px;
}

.col-md-9 {
	text-align: left;
}

.col-md-text-right {
	text-align: right;
}

.row1 {
	height: 35px;
	line-height: 35px;
	margin-top: 10px;
}

.page-bar {
	background: #f7f7f7;
}

.safeanniu {
	margin-top: 10px;
}

.safesure {
	background: #67809F;
	height: 40px;
	line-height: 40px;
	color: #fff;
}
.row{
	margin-bottom: 20px;
}
.col-md-3{
	line-height: 30px;
}
</style>
</head>
<body>
	<form class="form-inline" action="receiveAlarm.jsp">
		<div class="sodb-page-home">
			<ul class="sodb-page-ul">
				<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
					class="fa fa-angle-right"></i></li>
				<li><a href="#">报警事件管理</a> <i class="fa fa-angle-right"></i></li>
				<li><a href="#">安全事件录入</a></li>
			</ul>
		</div>
		<div style="clear:both;"></div>
		<div
			style="margin: 10px 0px 10px 30px; border-bottom: solid #2d456b thin;">
			<img src="<%=path%>/img/bianji.jpg" /> <font
				style="font-size: 16px; color: #2d456b; vertical-align: middle;">安全事件录入</font>
		</div>
		<div class="row">
			<div class="col-md-1" style="text-align: right"></div>
			<div class="col-md-2" style="text-align: right;">事件名称：</div>
			<div class="col-md-3" style="text-align: left;">
				<input type="text" class="form-control" placeholder="事件名称" />
			</div>
			<div class="col-md-2" style="text-align: right;">事件类型：</div>
			<div class="col-md-3" style="text-align: left;">
				<select class="form-control">
					<option value="">请选择</option>
					<option>门禁</option>
					<option>卡口</option>
					<option>围戒</option>
					<option>消防</option>
				</select>
			</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">时间：</div>
			<div class="col-md-3" style="text-align: left;">
				<input type="text" class="form-control" placeholder="时间" />
			</div>
			<div class="col-md-2" style="text-align: right;">报警方式：</div>
			<div class="col-md-3" style="text-align: left;">
			<select class="form-control">
					<option value="">请选择</option>
					<option>电话</option>
					<option>对讲</option>
				</select>
			</div>
		</div>
		
		
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">报警人：</div>
			<div class="col-md-3" style="text-align: left;">
				<input type="text" class="form-control" placeholder="报警人" />
			</div>
			<div class="col-md-2" style="text-align: right;">报警人类别：</div>
			<div class="col-md-3" style="text-align: left;">
				<select class="form-control">
					<option value="">请选择</option>
					<option>机场人员</option>
					<option>公众</option>
				</select>
			</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
		
		<div class="row">
			<div class="col-md-1" style="text-align: right"></div>
			<div class="col-md-2" style="text-align: right;">报警人联系方式：</div>
			<div class="col-md-3" style="text-align: left;">
				<input type="text" class="form-control" placeholder="报警人联系方式" />
			</div>
			<div class="col-md-2" style="text-align: right;"></div>
			<div class="col-md-3" style="text-align: left;">
				
			</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
		
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">报警位置：</div>
			<div class="col-md-6" style="text-align: left;">
				<select class="form-control">
					<option value="">请选择</option>
					<option>航站区</option>
					<option>控制区</option>
					<option>飞行区</option>
				</select>
				<input type="text" class="form-control" placeholder="具体位置" />
				<a onclick="openGis" class="point"
				style="text-shadow: none; color: #5b9bd1;"
				data-toggle="modal" data-target="#gisModal"> <i
				style="font-size: 26px;" class="fa fa-map-marker"> </i>
			</a>
			</div>
			<div class="col-md-3" style="text-align: left;">
			</div>
		</div>	
		
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-md-text-right">事件描述：</div>
			<div class="col-md-6"><textarea name="a" style="width: 600px; height: 100px;"></textarea></div>
			<div class="col-md-3"></div>
		</div>
		<div class="safeanniu" style="text-align: center">
			<input type="submit" value="提交" class="sbtn sbtn-blue sbtn30"/> 
			<input type="button"
				class="sbtn sbtn-default sbtn30"  onclick="history.go(-1)" 
				style="margin-left: 45px" value="返回"/>
		</div>
		<%-- 定位的div --%>
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
							<img src="<%=path %>/img/gismap.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary">确定</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">取消</button>
						</div>
					</div>
				</div>
			</div>
	</form>
</body>
</html>