<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/pages/inc/header.jsp"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>查看任务</title>
	</head>

	<body>
	    
	    <div class="sodb-page-home">
	    <ul class="sodb-page-ul">
		<li>
			<i class="fa fa-home"></i> 
			<a href="#">告警任务列表</a> 
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">告警接入任务管理</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li><a href="#">任务详情</a></li>
	  </ul> 
      </div>
	
		<form class="form-horizontal" role="form" style="margin-top: 20px;">
			<div class="form-group">
				<label for="timername" class="col-sm-2 col-sm-offset-2 control-label">任务编号:</label>
				<div class="col-sm-4">
					<input type="text" id="timername" class="form-control" value="#0001" disabled="disabled" >
				</div>
			</div>
			
			<div class="form-group">
				<label for="lastname" class="col-sm-2 col-sm-offset-2 control-label">任务名称:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" value="查询T1刷卡信息" disabled="disabled">
				</div>
			</div>
			<div class="form-group">
				<label for="taskname" class="col-sm-2 col-sm-offset-2 control-label">数据源:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="taskname" value="T1刷卡信息DB" disabled="disabled">
				</div>
			</div>
			
			<div class="form-group">
				<label for="exeinterval" class="col-sm-2 col-sm-offset-2 control-label">程序名称:</label>
				 <div class="col-sm-4">
					<input type="text" id="exeinterval" class="form-control" value="查询T1刷卡信息接口" disabled="disabled">
					
			     </div>
			</div>
			
			<div class="form-group">
				<label for="begintime" class="col-sm-2 col-sm-offset-2 control-label">程序包名:</label>
				<div class="col-sm-4">
					<input type="text" id="begintime" class="form-control" value="com.qdjc.security.program1" disabled="disabled">
				</div>
			</div>
			
			<div class="form-group">
				<label for="endtime" class="col-sm-2 col-sm-offset-2 control-label">目标数据库名称:</label>
				<div class="col-sm-4">
					<input type="text" id="endtime" class="form-control" value="安全数据监控DB" disabled="disabled">
				</div>
			</div>
			
			<div class="form-group">
				<label for="endtime" class="col-sm-2 col-sm-offset-2 control-label">目标数据库地址:</label>
				<div class="col-sm-4">
					<input type="text" id="endtime" class="form-control" value="192.168.1.111:10101/scurity_info" disabled="disabled">
				</div>
			</div>
			
			
			<div class="form-group">
				<div class="col-sm-offset-5 col-sm-4">
					<button type="submit" class="sbtn sbtn-default sbtn30" onclick="goToTaskList();">返回</button>
				</div>
			</div>
		</form>
	</body>
	 <script type="text/javascript">
	function goToTaskList(){
		window.history.go(-1);
	}
	</script>
</html>