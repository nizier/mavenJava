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
	padding: 0px 15px;
	color: #fff;
}
</style>
</head>
<body>
	<form class="form-inline">
		<div class="sodb-page-home">
			<ul class="sodb-page-ul">
				<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
					class="fa fa-angle-right"></i></li>
				<li><a href="#">报警事件管理</a> <i class="fa fa-angle-right"></i></li>
				<li><a href="#">安全事件录入</a></li>
			</ul>
		</div>
		<div style="clear:both;"></div>
		<div class="safesure" style="margin: 0px 0px 10px 5px">
			<p style="color:white;">处警事件确认</p>
		</div>
		<div class="row row1">
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-3 col-md-text-right">事件名称：</div>
					<div class="col-md-9">
						<input type="text" class="form-control" placeholder="事件名称" />
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-3 col-md-text-right">事件类型：</div>
					<div class="col-md-9">
						<select class="form-control">
							<option value="">请选择</option>
							<option>门禁</option>
							<option>卡口</option>
							<option>围戒</option>
							<option>消防</option>
						</select>
					</div>
				</div>
			</div>
		</div>
		<div class="row row1">
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-3 col-md-text-right">时间：</div>
					<div class="col-md-9">
						<input type="text" class="form-control" placeholder="时间" />
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-3 col-md-text-right">位置：</div>
					<div class="col-md-9">
						<select class="form-control">
							<option value="">请选择</option>
							<option>航站区</option>
							<option>飞行区</option>
							<option>控制区</option>
							<option>公共区</option>
						</select>
					</div>
				</div>
			</div>

		</div>
		<div class="row row1">
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-3 col-md-text-right">负责人：</div>
					<div class="col-md-9">
						<input type="text" class="form-control" placeholder="负责人" />
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-3 col-md-text-right">所在部门：</div>
					<div class="col-md-9">
						<select class="form-control">
							<option value="">请选择</option>
							<option>消防部</option>
							<option>保安部</option>
							<option>控制区</option>
							<option>公共区</option>
						</select>
					</div>
				</div>
			</div>

		</div>

		<div class="row row1">
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-3 col-md-text-right">采集方式：</div>
					<div class="col-md-9">
						<select class="form-control">
							<option value="">请选择</option>
							<option>人工采集</option>
							<option>自动采集</option>
						</select>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="row">
					<div class="col-md-3 col-md-text-right">事件描述：</div>
					<div class="col-md-9">
						<textarea name="a" style="width: 230px; height: 100px;"></textarea>
					</div>
				</div>
			</div>

		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-3 col-md-text-right">负责人处理意见：</div>
					<div class="col-md-9">
						<textarea name="a" style="width: 230px; height: 100px;"></textarea>
					</div>
				</div>
			</div>
			<div class="col-md-6" style="height:130px">&nbsp;</div>
		</div>

		<div class="row" style="text-align: center">
			<a class="sbtn sbtn-blue sbtn30" href="receiveAlarm.jsp">提交</a> <a
				class="sbtn sbtn-default sbtn30" href="receiveAlarm.jsp" style="margin-left: 45px">返回</a>
		</div>
	</form>
</body>
</html>