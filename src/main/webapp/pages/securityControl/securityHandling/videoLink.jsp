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

.row1 {
	height: 35px;
	line-height: 35px;
	margin-top: 20px;
}

.page-bar {
	background: #f7f7f7;
}

.safeanniu {
	margin-top: 20px;
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

.col-md-6 {
	height: 30px;
}

.col-md-7{
	border: 1px solid #ccc;
	border-radius: 3px;
}
.col-md-5{
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">安全事件处置</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">视频联动确认</a></li>
		</ul>
	</div>
	<div style="clear:both;"></div>
	<form class="form-inline" action="receiveAlarm.jsp">
			<div style="margin:30px 0px 30px 30px; border-bottom: solid #2d456b thin;" >
				<img src="<%=path %>/img/queren.jpg"/>
				<font style="font-size: 16px; color: #2d456b;vertical-align: middle;">事件信息</font>
			</div>
	<div class="row" >
				<div class="row">
					<div class="col-md-1">
					</div>
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-5 col-md-text-right">报警编号：</div>
							<div class="col-md-7">
								<label>102304</label>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-5 col-md-text-right">报警名称：</div>
							<div class="col-md-7">
								<label>门禁报警-门无授权被打开</label>
							</div>
						</div>
					</div>

				</div>

				<div class="row">
					<div class="col-md-1">
					</div>
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-5 col-md-text-right">报警类型：</div>
							<div class="col-md-7">
								<label>门禁报警</label>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-5 col-md-text-right">报警级别：</div>
							<div class="col-md-7">
								<label>三级</label>
							</div>

						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-1">
					</div>
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-5 col-md-text-right">所属楼层：</div>
							<div class="col-md-7 ">
								<label>T2航 站楼四楼</label>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-5 col-md-text-right">报警时间：</div>
							<div class="col-md-7">
								<label>2017-07-14 18:04:45</label>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-1">
					</div>
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-5 col-md-text-right">报警细类：</div>
							<div class="col-md-7">
								<label>门无授权被打开</label>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-5 col-md-text-right">处理状态：</div>
							<div class="col-md-7">
								<label>未处理</label>
							</div>
						</div>
					</div>

				</div>
				<div class="row">
					<div class="col-md-1">
					</div>
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-5 col-md-text-right">设备编号：</div>
							<div class="col-md-7">
								<label>ITC-001-C101-D</label>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-5 col-md-text-right">设备名称：</div>
							<div class="col-md-7">
								<label>警报器01</label>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-1">
					</div>
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-5 col-md-text-right">设备类型：</div>
							<div class="col-md-7">
								<label>门禁</label>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="row">
							<div class="col-md-5 col-md-text-right">报警地址：</div>
							<div class="col-md-7">
								<label>航站楼</label>
							</div>
						</div>
					</div>
				</div>
			
		</div>
		
		<div style="margin:30px 0px 30px 30px; border-bottom: solid #2d456b thin;" >
				<img src="<%=path %>/img/queren.jpg"/>
				<font style="font-size: 16px; color: #2d456b;vertical-align: middle;">事件确认</font>
		</div>
		
		<div class="row">
			<div class="col-md-1">
			</div>
			<div class="col-md-10">
				<div class="row">
					<div class="col-md-6">
						<div class="col-md-5 col-md-text-right">视频确认：</div>
						<div class="col-md-6">
							<div style="width: 600px">
								<button type="button" class="btn-vof sbtn sbtn-default sbtn30"
									img-url="<%=path%>/img/securityHandling/1.jpg" id="b1">摄像机1</button>
								<button type="button" class="btn-vof sbtn sbtn-default sbtn30"
									img-url="<%=path%>/img/securityHandling/2.jpg" id="b2">摄像机2</button>
								<button type="button" class="btn-vof sbtn sbtn-default sbtn30"
									img-url="<%=path%>/img/securityHandling/3.jpg" id="b3">摄像机3</button>
							</div>
						</div>
					</div>
				</div>

				<div class="row" style="margin-top: 10px;">
					<div class="col-md-6">
						<div class="col-md-5 col-md-text-right">初步处理意见：</div>
						<div class="col-md-6">
							<textarea name="a" style="height: 100px; width: 400px"></textarea>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="safeanniu" style="text-align: center; margin-top: 80px">
			<input type="submit" value="提交" class="sbtn sbtn-blue sbtn30"/> 
			<input type="button"
				class="sbtn sbtn-default sbtn30"  onclick="backLast();" 
				style="margin-left: 45px" value="返回"/>
		</div>
		<div class="modal fade" tabindex="-1" role="dialog" id="showEventImg"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document" style="width: 500px;">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body" style="text-align:center" >
						<img id="showImgForVof" src=""  />
					</div>
				</div>
			</div>
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