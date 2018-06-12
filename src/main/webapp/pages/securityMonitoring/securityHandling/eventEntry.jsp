<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/pages/inc/header.jsp"%>
<style type="text/css">
.form-inline .form-control{width:180px;}
.col-md-8{text-align:left;}
.col-md-text-right{text-align:right;}
.row1{height:35px;line-height:35px;margin-top:10px;}
.page-bar{background:#f7f7f7;}
.safeanniu{margin-top:100px;}
.safesure{background:#67809F;}
</style>
</head>
<body>
<form class="form-inline">
<div class="page-bar">
	<ul class="page-breadcrumb">
		<li><i class="fa fa-home"></i> <a href="#">报警事件管理</a> <i class="fa fa-angle-right"></i></li>
		<li><a href="#">安全事件录入</a></li>
	</ul>
</div>
<div class="safesure" style="margin:0px 0px 10px 5px" >		
	<p>处警事件确认</p>	
</div>
	<div class="row row1">
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">事件名称：</div>
				<div class="col-md-8"><input type="text" class="form-control"  placeholder="事件名称"/></div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">	
				<div class="col-md-4 col-md-text-right">事件类型：</div>
				<div class="col-md-8">
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
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">时间：</div>
				<div class="col-md-7"><input type="text" class="form-control" placeholder="时间"/></div>
			</div>
		</div>
	</div>
	<div class="row row1">	
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">位置：</div>
				<div class="col-md-8">
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
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">报警人：</div>
				<div class="col-md-8"><input type="text" class="form-control" placeholder="负责人"/></div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">区域：</div>
				<div class="col-md-7">
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
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">采集方式：</div>
				<div class="col-md-8">
					<select class="form-control">
						<option value="">请选择</option>
						<option>人工采集</option>
						<option>自动采集</option>						
					</select>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">事件描述：</div>
				<div class="col-md-8"><textarea name="a" style="width:180px;height:100px;"></textarea></div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">报警人处理意见：</div>
				<div class="col-md-7"><textarea name="a" style="width:180px;height:100px;"></textarea></div>
			</div>
		</div>									
	</div>
	
	
<div class="safeanniu" style="text-align:center">
	<a class="btn btn-primary" href="receiveAlarm.jsp">提交</a>	
	<a class="btn btn-default" href="receiveAlarm.jsp">返回</a>		
</div>				
</form>
</body>
</html>