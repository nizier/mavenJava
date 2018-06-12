<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/pages/inc/header.jsp"%>
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
	margin-top: 100px;
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
	<form class="form-inline" action="artificialReport.jsp">
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
			style="margin: 30px 0px 30px 30px; border-bottom: solid #2d456b thin;">
			<img src="<%=path%>/img/queren.jpg" /> <font
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
			<div class="col-md-2" style="text-align: right;">位置：</div>
			<div class="col-md-3" style="text-align: left;">
				<select class="form-control">
					<option value="">请选择</option>
					<option>航站区</option>
					<option>飞行区</option>
					<option>控制区</option>
					<option>公共区</option>
				</select>
			</div>
		</div>
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">报警人：</div>
			<div class="col-md-3" style="text-align: left;">
				<input type="text" class="form-control" placeholder="报警人" />
			</div>
			<div class="col-md-2" style="text-align: right;">所在部门：</div>
			<div class="col-md-3" style="text-align: left;">
				<select class="form-control">
					<option value="">请选择</option>
					<option>消防部</option>
					<option>保安部</option>
					<option>控制区</option>
					<option>公共区</option>
				</select>
			</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>

		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">采集方式：</div>
			<div class="col-md-3" style="text-align: left;">
				<select class="form-control">
					<option value="">请选择</option>
					<option>人工采集</option>
					<option>自动采集</option>
				</select>
			</div>
			<div class="col-md-2" style="text-align: right;"></div>
			<div class="col-md-3" style="text-align: left;">
			</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-md-text-right">事件描述：</div>
			<div class="col-md-6"><textarea name="a" style="width: 400px; height: 100px;"></textarea></div>
			<div class="col-md-3"></div>
		</div>
		<div class="safeanniu" style="text-align: center">
			<input type="submit" value="提交" class="sbtn sbtn-blue sbtn30"/> 
			<input type="button"
				class="sbtn sbtn-default sbtn30"  onclick="history.go(-1)" 
				style="margin-left: 45px" value="返回"/>
		</div>
	</form>
</body>
</html>