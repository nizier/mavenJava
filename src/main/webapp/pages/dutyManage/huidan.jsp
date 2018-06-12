<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/pages/inc/header.jsp"%>
<style type="text/css">
.form-inline .form-control {
	width: 200px;
}

.col-md-7 {
	text-align: left;
}

.col-md-text-right {
	text-align: right;
}



.page-bar {
	background: #f7f7f7;
}

.safeanniu {
	margin-top: 10px;
}

.safesure {
	background: #67809F;
}

img#img {
	display: none;
}

.safeEvent {
	margin-top: 5px;
}

label {
	font-weight: inherit;
}
.row1 {
	height: 30px;
	line-height: 10px;
	margin-top: 5px;
}


.col-md-7 {
	border-radius: 3px;
}

.col-md-3 {
	line-height: 30px;
}
.row{
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">日常值班管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">回单</a></li>
		</ul>
	</div>
	<div style="clear:both;"></div>
	<form class="form-inline" action="receivingAlarm.jsp">
			<div style="margin:10px 0px 10px 30px; border-bottom: solid #2d456b thin;" >
				<img src="<%=path %>/img/queren.jpg"/>
				<font style="font-size: 16px; color: #2d456b;vertical-align: middle;">安全事件信息</font>
			</div>
	<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">事件编号：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">10001</div>
			<div class="col-md-2" style="text-align: right;">报警事件：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">摄像头不能扭转</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">事件类型：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">门禁</div>
			<div class="col-md-2" style="text-align: right;">报警时间：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">2017-01-10
				05:22:21</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
		<div class="row" >
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">报警位置：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">航站区</div>
			<div class="col-md-2" style="text-align: right;"></div>
			
		</div>
		
		
		<div style="margin:0px 0px 10px 30px; border-bottom: solid #2d456b thin;" >
				<img src="<%=path %>/img/bianji.jpg"/>
				<font style="font-size: 16px; color: #2d456b;vertical-align: middle;">事件指派</font>
		</div>
		
		
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">分派人：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">管理员</div>
			<div class="col-md-2" style="text-align: right;"></div>
		</div>
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">分派给：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">张三</div>
			<div class="col-md-2" style="text-align: right;"></div>
			<div class="col-md-3"></div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
		
		<div style="margin: 0px 0px 10px 30px; border-bottom: solid #2d456b thin;">
			<img src="<%=path%>/img/bianji.jpg" /> <font
				style="font-size: 16px; color: #2d456b; vertical-align: middle;">回单</font>
		</div>
		<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">确认人：</div>
		 <div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">管理员</div>
			<div class="col-md-2" style="text-align: right;">确认时间：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">2017-07-13 15:34:45</div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-md-text-right">处置结果确认意见：</div>
			<div class="col-md-6"style="width:600px;height: 100px; overflow-y: auto;border: 1px solid #ccc;border-radius: 3px;" style="padding: 0px">
				检查维护系统
			</div>
			<div class="col-md-3"></div>
		</div>
		
		<div class="safeanniu" style="text-align: center">
			<input type="submit" value="提交" class="sbtn sbtn-blue sbtn30"/> 
			<input type="button"
				class="sbtn sbtn-default sbtn30"  onclick="backLast();" 
				style="margin-left: 45px" value="返回"/>
		</div>
		
			
		

	</form>
</body>

<script type="text/javascript">
	function showsel() {
		var y = $("#sel").val();
		if (y == '2') {
			$("#shexiangtou").show();
		} else {
			$("#shexiangtou").hide();
		}
	}
	$(".btn-vof").click(function() {
		var imgUrl = $(this).attr("img-url");
		$("#showImgForVof").attr("src", imgUrl);
		$('#showEventImg').modal('show');
	})
	function backLast(){
		history.go(-1);
	}
</script>
</html>