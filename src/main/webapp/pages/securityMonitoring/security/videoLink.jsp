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
			<li><a href="#">安全事件处置</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">安全事件接警</a></li>
		</ul>
	</div>
	<div style="clear: both;"></div>
	<form class="form-inline" action="receivingAlarm.jsp">
		<div
			style="margin: 10px 0px 10px 30px; border-bottom: solid #2d456b thin;">
			<img src="<%=path%>/img/queren.jpg" /> <font
				style="font-size: 16px; color: #2d456b; vertical-align: middle;">安全事件信息</font>
		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-md-text-right">报警编号：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">102304</div>
			<div class="col-md-2 col-md-text-right">报警名称：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">
				门禁报警-门无授权被打开</div>
			<div class="col-md-1"></div>
		</div>

		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-md-text-right">报警类型：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">
				门禁报警</div>
			<div class="col-md-2 col-md-text-right">报警级别：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">
				三级</div>

		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-md-text-right">所属楼层：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">
				T2航站楼四楼</div>
			<div class="col-md-2 col-md-text-right">报警时间：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">
				2017-07-14 18:04:45</div>
		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-md-text-right">报警细类：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">
				门无授权被打开</div>
			<div class="col-md-2 col-md-text-right">处理状态：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">
				未处理</div>

		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-md-text-right">设备编号：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">
				ITC-001-C101-D</div>
			<div class="col-md-2 col-md-text-right">设备名称：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">
				警报器01</div>
		</div>
		<div class="row" style="margin-bottom: 0px">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-md-text-right">设备类型：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">
				门禁</div>
			<div class="col-md-2 col-md-text-right">报警地址：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">
				航站楼</div>
		</div>


		<div
			style="margin: 0px 0px 10px 30px; border-bottom: solid #2d456b thin;">
			<img src="<%=path%>/img/bianji.jpg" /> <font
				style="font-size: 16px; color: #2d456b; vertical-align: middle;">事件确认</font>
		</div>

		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-2 col-md-text-right">视频确认：</div>
			<div class="col-md-6" style="padding-left: 0px">
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
			<div class="row">
			<div class="col-md-1" style="text-align: right;"></div>
			<div class="col-md-2" style="text-align: right;">确认人：</div>
			<div class="col-md-3"
				style="text-align: left; border: 1px solid #ccc; border-radius: 3px;">李杜</div>
			<div class="col-md-2" style="text-align: right;"></div>
			<div class="col-md-3"></div>
			<div class="col-md-1" style="text-align: right;"></div>
		</div>
				<div class="row" style="margin-top: 10px;">
				<div class="col-md-1"></div>
				<div class="col-md-2 col-md-text-right">安全事件确认意见：</div>
				<div class="col-md-6" style="padding-left: 0px">
							<textarea name="a" style="height: 100px; width: 600px"></textarea>
						</div>
				</div>
		
		<div class="safeanniu" style="text-align: center; ">
			<input type="submit" value="提交" class="sbtn sbtn-blue sbtn30" /> <input
				type="button" class="sbtn sbtn-default sbtn30" onclick="backLast();"
				style="margin-left: 45px" value="返回" />
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
					<div class="modal-body" style="text-align: center">
						<img id="showImgForVof" src="" />
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
	function backLast() {
		history.go(-1);
	}
</script>
</html>