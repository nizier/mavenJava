<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
.safeanniu{margin-top:50px;}
.safesure{background:#67809F;}
img#img{display:none;}
.safeEvent{margin-top: 10px;}
#shexiangtou{margin-top:10px;}
</style>
</head>
<body>
<form class="form-inline">
<div class="page-bar">
	<ul class="page-breadcrumb">
		<li><i class="fa fa-home"></i> <a href="#">报警事件管理</a> <i class="fa fa-angle-right"></i></li>
		<li><a href="#">报警事件确认</a></li>
	</ul>
</div>
<div class="safesure" style="margin:0px 0px 10px 10px" >		
	<p>基本信息</p>	
</div>
	<div class="row row1">
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">事件编号：</div>
				<div class="col-md-7"><input type="text" class="form-control" value="10001"/></div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">报警事件：</div>
				<div class="col-md-8"><input type="text" class="form-control" value="摄像头不能扭转"/></div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">事件类型：</div>
				<div class="col-md-7">
					<select class="form-control">
						<option value="">门禁</option>
						<option>请选择</option>
						<option>卡口</option>
						<option>围戒</option>
					</select>
				</div>
			</div>
		</div>		
	</div>
	<div class="row row1">
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">报警时间：</div>
				<div class="col-md-7"><input type="text" class="form-control" value="2017-01-10 05:22:21"/></div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">报警位置：</div>
				<div class="col-md-8 " >
					<select class="form-control">
						<option>航站区--</option>
						<option>请选择</option>
						<option>飞行区</option>
						<option>控制区</option>
						<option>公共区</option>
					</select>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">报警人：</div>
				<div class="col-md-7"><input type="text" class="form-control" value="张三丰"/></div>
			</div>
		</div>		
	</div>
	<div class="row row1">	
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">报警人联系方式：</div>
				<div class="col-md-7"><input type="text" class="form-control" value="18895731508"/></div>
			</div>
		</div>	
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">报警人类别：</div>
				<div class="col-md-8">
					<select class="form-control">
						<option value="">机场值班人员</option>
						<option>请选择</option>
						<option>机场值班人员1</option>
						<option>机场值班人员2</option>
						<option>机场值班人员3</option>
					</select>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">报警方式：</div>
				<div class="col-md-7">
					<select class="form-control">
						<option value="">电话</option>
						<option>请选择</option>
						<option>客户端</option>
					</select>
				</div>
			</div>
		</div>
		</div>
	<div class="row row1">	
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">采集方式：</div>
				<div class="col-md-7">
					<select class="form-control">
						<option value="">人工上报</option>
						<option>自动采集 </option>
						<option>请选择</option>
					</select>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4 col-md-text-right">事件描述：</div>
				<div class="col-md-8">
				<textarea name="a" style="width:200px;height:80px;">系统故障引起的事故</textarea>				
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-5 col-md-text-right">报警人处理意见：</div>
				<div class="col-md-7"><textarea name="a" style="width:200px;height:80px;">立刻全面检查，定期检查设备</textarea></div>
			</div>
		</div>		
	</div>

<div class="safesure" style="margin:80px 0px 0px 10px" >		
	<p>事件确认</p>	
</div>
<div class="row" style="text-align:center;">
	<div class="col-md-4 col-md-text-right">事件确认方式：</div>
	<div class="col-md-8" >	
		<select id="sel" class="form-control" onchange="showsel()">
			<option value="">请选择</option>
			<option value="1">人工确认 </option>
			<option value="2">视屏联动</option>
		</select>
	</div>
</div>
<div class="row">
	<div class="col-md-12" >	
		<div  class=""id="shexiangtou" style="display: none;text-align:center;">
			<button type="button" class="btn_test" img-url="<%=path%>/img/securityHandling/1.jpg" id="b1">摄像机1</button>
			<button type="button" class="btn_test" img-url="<%=path%>/img/securityHandling/2.jpg" id="b2">摄像机2</button>
			<button type="button" class="btn_test" img-url="<%=path%>/img/securityHandling/3.jpg" id="b3">摄像机3</button>
		</div>	
	</div>
</div>
<div class="row" style="margin-top:10px;">
	<div class="col-md-4 col-md-text-right">初步处理意见：</div>
	<div class="col-md-8"><textarea name="a"></textarea></div>
</div>
<div class="safeanniu" style="text-align:center;">
	<a class="btn btn-primary" href="receiveAlarm.jsp">确认</a>	
	<a class="btn btn-default" href="receiveAlarm.jsp">返回</a>		
</div>	
<div class="modal fade" tabindex="-1" role="dialog" id="showEventImg" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document" style="width:500px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
	        </div>
	        <div class="modal-body">
	        	<img id="showImgForVof" src=""/>
	        </div>
        </div>
    </div>
</div>		
</form>
</body>
	
<script type="text/javascript">
function showsel(){
	var y=$("#sel").val();		
	if(y=='2'){
		$("#shexiangtou").show();
	}else{
		$("#shexiangtou").hide();
	}
}
$(".btn_test").click(function(){
	var imgUrl = $(this).attr("img-url");
	$("#showImgForVof").attr("src",imgUrl);
	$('#showEventImg').modal('show');
})
	
</script>
</html>