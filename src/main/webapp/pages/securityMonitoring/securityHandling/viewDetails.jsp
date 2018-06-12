<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/pages/inc/header.jsp"%>
<style type="text/css">
.form-inline .form-control{width:200px;}
.col-md-8{text-align:left;}
.col-md-text-right{text-align:right;}
.row1{height:35px;line-height:35px;margin-top:20px;}
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
		<li><a href="#">查看安全事件</a></li>
	</ul>
</div>
<div class="safesure" style="margin:0px 0px 10px 10px" >		
	<p>查看详情</p>	
</div>
	<div class="row row1">
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">事件编号：</div>
				<div class="col-md-7">10001</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">报警事件：</div>
				<div class="col-md-8">摄像头不能扭转</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">事件类型：</div>
				<div class="col-md-7">门禁</div>
			</div>
		</div>		
	</div>
	<div class="row row1">
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">报警时间：</div>
				<div class="col-md-7">2017-01-10 05:22:21</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">报警位置：</div>
				<div class="col-md-8 " >航站区</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">报警人：</div>
				<div class="col-md-7">张三丰</div>
			</div>
		</div>		
	</div>
	<div class="row row1">	
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">报警人联系方式：</div>
				<div class="col-md-7">18895731508</div>
			</div>
		</div>	
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">报警人类别：</div>
				<div class="col-md-8">机场值班人员</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">报警方式：</div>
				<div class="col-md-7">电话</div>
			</div>
		</div>
		</div>
	<div class="row row1">	
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">采集方式：</div>
				<div class="col-md-7">人工上报</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">事件描述：</div>
				<div class="col-md-8">系统故障引起的事故	</div>
			</div>
		</div>
		
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">报警人处理意见：</div>
				<div class="col-md-7">检查维护系统，不定期检查</div>
			</div>
		</div>		
	</div>	
<div class="safeanniu" style="text-align:center">	
	<a class="btn btn-default" href="receiveAlarm.jsp">返回</a>		
</div>				
</form>
</body>
</html>