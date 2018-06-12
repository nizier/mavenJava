<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/pages/inc/header.jsp"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>修改定时器</title>
	</head>

	<body>
	    
	    <div class="sodb-page-home">
	    <ul class="sodb-page-ul">
		<li>
			<i class="fa fa-home"></i> 
			<a href="#">告警定时器列表</a> 
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">告警接入定时器管理</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li><a href="#">修改定时器</a></li>
	  </ul> 
      </div>
	
		<form class="form-horizontal" role="form" style="margin-top: 20px;">
			<div class="form-group">
				<label for="timername" class="col-sm-2 col-sm-offset-2 control-label">定时器名称:</label>
				<div class="col-sm-4">
					<input type="text" id="timername" class="form-control" value="T1门禁报警定时器" >
				</div>
			</div>
			
			<div class="form-group">
				<label for="lastname" class="col-sm-2 col-sm-offset-2 control-label">绑定任务编号:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" value="#001" disabled="disabled">
				</div>
			</div>
			<div class="form-group">
				<label for="taskname" class="col-sm-2 col-sm-offset-2 control-label">绑定任务名称:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="taskname" value="查询T1刷卡事件信息">
				</div>
			</div>
			
			<div class="form-group">
				<label for="exeinterval" class="col-sm-2 col-sm-offset-2 control-label">执行间隔:</label>
				 <div class="col-sm-4">
					<input type="text" id="exeinterval" class="form-control" value="1000ms" >
					
			     </div>
			</div>
			
			<div class="form-group">
				<label for="begintime" class="col-sm-2 col-sm-offset-2 control-label">开始时间:</label>
				<div class="col-sm-4">
					<input type="date" id="begintime" class="form-control" >
				</div>
			</div>
			
			<div class="form-group">
				<label for="endtime" class="col-sm-2 col-sm-offset-2 control-label">结束时间:</label>
				<div class="col-sm-4">
					<input type="date" id="endtime" class="form-control" >
				</div>
			</div>
			
			
			<div class="form-group">
				<div class="col-sm-offset-5 col-sm-4">
					<button type="submit" class="sbtn sbtn-blue sbtn30" style="margin-right: 45px;">修改</button>
					<button type="submit" class="sbtn sbtn-default sbtn30" onclick="goToTimerList();">返回</button>
				</div>
			</div>
		</form>
	</body>
	
	<script type="text/javascript">
	function goToTimerList(){
		window.history.go(-1);
	}
	</script>

</html>