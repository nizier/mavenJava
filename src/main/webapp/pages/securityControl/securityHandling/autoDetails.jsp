<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/pages/inc/header.jsp"%>
<style type="text/css">
.form-inline .form-control {
	width: 200px;
}

.col-md-8 {
	text-align: left;
}

.col-md-text-right {
	text-align: right;
}

.row1 {
	height: 35px;
	line-height: 35px;
	margin-top: 20px;
}

.page-bar {
	background: #f7f7f7;
}

.safeanniu {
	margin-top: 40px;
}

.safesure {
	background: #67809F;
	height: 40px;
	line-height: 40px;
	padding: 0px 15px;
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
	<form class="form-inline">
		<div class="sodb-page-home">
			<ul class="sodb-page-ul">
				<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
					class="fa fa-angle-right"></i></li>
				<li><a href="#">安全事件处置</a> <i class="fa fa-angle-right"></i></li>
				<li><a href="#">安全事件接警</a></li>
			</ul>
		</div>
		<div style="clear: both;"></div>
		<div
			style="margin: 30px 0px 30px 30px; border-bottom: solid #2d456b thin;">
			<img src="<%=path%>/img/queren.jpg" /> <font
				style="font-size: 16px; color: #2d456b; vertical-align: middle;">安全事件详情</font>
		</div>
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">报警编号：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">102304</div>
			<div class="col-md-2" style="text-align: right;">报警名称：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">门禁报警-门无授权被打开</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">报警类型：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">门禁报警</div>
			<div class="col-md-2" style="text-align: right;">报警级别：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">三级</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">区域：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">T2航
				站楼四楼</div>
			<div class="col-md-2" style="text-align: right;">报警时间：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">2017-07-14
				18:04:45</div>
		</div>
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">报警细类：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">门无授权被打开</div>
			<div class="col-md-2" style="text-align: right;">处理状态：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">未处理</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>

		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">设备编号：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">ITC-001-C101-D</div>
			<div class="col-md-2" style="text-align: right;">设备名称：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">警报器01</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">设备类型：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">门禁设备</div>

			<div class="col-md-2" style="text-align: right;">报警地址：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">航站楼</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-md-text-right">初步处理意见：</div>
			<div class="col-md-6" style="height: 100px; overflow-y: auto;border: 1px solid #ccc;border-radius: 3px;">检查维护系统，不定期检查</div>
			<div class="col-md-3"></div>
		</div>
		<div class="safeanniu" style="text-align: center">
			<input type="button" value="返回" class="sbtn sbtn-default sbtn30"
				onclick="history.go(-1)" />
		</div>
	</form>
</body>
</html>