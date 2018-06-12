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
		<li><a href="#">修改任务</a></li>
	  </ul> 
      </div>
	
		<form class="form-horizontal" role="form" style="margin-top: 20px;">
			<div class="form-group">
				<label for="timername" class="col-sm-2 col-sm-offset-2 control-label">任务名称:</label>
				<div class="col-sm-4">
					<input type="text" id="timername" class="form-control" value="T3旅客信息表数据更新"  >
				</div>
			</div>
			
			<div class="form-group">
				<label for="lastname" class="col-sm-2 col-sm-offset-2 control-label">数据源:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" value="安检信息管理系统(T3-厦门机电)" >
				</div>
			</div>
			
			<div class="form-group">
				<label for="lastname" class="col-sm-2 col-sm-offset-2 control-label">数据类型:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" value="旅客相关" >
				</div>
			</div>
			<div class="form-group">
				<label for="taskname" class="col-sm-2 col-sm-offset-2 control-label">源数据表:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" value="ajxxb1" id="taskname">
				</div>
			</div>
			
			<div class="form-group">
				<label for="exeinterval" class="col-sm-2 col-sm-offset-2 control-label">目标数据表:</label>
				 <div class="col-sm-4">
					<input type="text" id="exeinterval" value="ajxxb1" class="form-control">
					
			     </div>
			</div>
			
			<div class="form-group">
				<label for="begintime" class="col-sm-2 col-sm-offset-2 control-label">状态:</label>
				<div class="col-sm-4">
					<input type="text" id="begintime" value="已启动" class="form-control">
				</div>
			</div>
			
			
			<div class="form-group">
				<label for="endtime" class="col-sm-2 col-sm-offset-2 control-label">服务ID:</label>
				<div class="col-sm-4">
					<input type="text" id="endtime" class="form-control" value="esb_resource_t3ajxxb1">
				</div>
			</div>
		
			
			<div class="form-group">
				<div class="col-sm-offset-5 col-sm-3">
					<button type="submit" class="sbtn sbtn-blue sbtn30"  style="margin-right: 45px;">修改</button>
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