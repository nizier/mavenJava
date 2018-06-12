<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/pages/inc/header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新建控制区域</title>
</head>
<body>
<div class="sodb-page-home">
<ul class="sodb-page-ul">
<li>
<i class="fa fa-home"></i> 
<a href="#">北京新机场应急救援管理</a> 
<i class="fa fa-angle-right"></i>
</li>
<li>
<a href="#">应急培训管理</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">编辑年度培训计划</a></li>
</ul> 
</div>
<form name="moduleForm" class="form-horizontal" id="moduleForm" action="<c:url value='/module/update' />" method="post">
    <div class="row" style="margin-top: 20px;">
  <div class="form-group">
            <span class="col-sm-4 control-label">年度计划编号<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="A001" placeholder="年度计划编号" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">培训计划名称<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="常识培训" placeholder="年度计划名称" aria-describedby="sizing-addon2">
            </div>
        </div>
      
        <div class="form-group">
            <span class="col-sm-4 control-label">所属单位<span style="color:red">*</span></span>
            <div class="col-md-4">
            <select id="item" name="item" class="form-control" style="width: 448px;">
									<option value="">单位1</option>
									<option value="1">单位2</option>
									<option value="2">单位3</option>
									<option value="3">单位4</option>
								</select>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 20px;">
        <div class="col-md-11" style="text-align:center;">
            <button class="sbtn sbtn-blue" type="button" id="subBtn" onclick="submitModule()"><i class='fa fa-save'></i>&nbsp;保存</button>
            <button class="sbtn sbtn-default" type="button" id="backBtn" style="margin-left:45px;"><i class='fa fa-reply'></i>&nbsp;返回</button>
        </div>
    </div>
    <div class="modal fade" id="allcourses" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							培训课程列表
						</h4>
					</div>
					<div class="modal-body">
						<div class="row clearfix" style="margin-bottom: 20px;margin-top:10px;font-family: 微软雅黑, 黑体;">
							<div class="col-md-12 form-inline">
								<form action="" method="post">
									<div class="input-group input-group-sm" style="margin-right: 10px;">
										<span class="input-group-addon">课程编号</span>
										<input class="form-control" name="applicant" type="text" value="">
									</div>
									<div class="input-group input-group-sm" style="margin-right: 10px;">
										<span class="input-group-addon">课程名称</span>
										<input class="form-control" name="applicant" type="text" value="">
									</div>
									<button type="button" class="btn btn-default btn-sm">查询</button>
								</form>
							</div>
						</div>
						<div class="row clearfix">
							<div class="col-md-12">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th><input type="checkbox" id="allcheck"></th>
											<th>序号</th>
											<th>课程编号</th>
											<th>课程名称</th>
											<th>学时</th>
											<th>地点</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><input type="checkbox"></td>
											<td>1</td>
											<td>
												<a href="trainingCourseDetail.html">A001</a>
											</td>
											<td>
												<a href="trainingCourseDetail.html">常识培训</a>
											</td>
											<td>32学时</td>
											<td>北京</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>2</td>
											<td>
												<a href="trainingCourseDetail.html">A002</a>
											</td>
											<td>
												<a href="trainingCourseDetail.html">场务培训</a>
											</td>
											<td>32学时</td>
											<td>上海</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>3</td>
											<td>
												<a href="trainingCourseDetail.html">A003</a>
											</td>
											<td>
												<a href="trainingCourseDetail.html">礼仪培训</a>
											</td>
											<td>32学时</td>
											<td>广州</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>4</td>
											<td>
												<a href="trainingCourseDetail.html">A004</a>
											</td>
											<td>
												<a href="trainingCourseDetail.html">应急措施培训</a>
											</td>
											<td>32学时</td>
											<td>深圳</td>
										</tr>
										<tr>
											<td><input type="checkbox"></td>
											<td>5</td>
											<td>
												<a href="trainingCourseDetail.html">A005</a>
											</td>
											<td>
												<a href="trainingCourseDetail.html">岗位业务培训</a>
											</td>
											<td>32学时</td>
											<td>长安</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row clearfix">
							<div class="col-md-12">
								<span class="glyphicon glyphicon-step-backward" style="color: #5E8CE7;"></span>
								<span class="glyphicon glyphicon-triangle-left" style="color: #5E8CE7;"></span>
								<span class="glyphicon glyphicon-triangle-right" style="color: #5E8CE7;"></span>
								<span class="glyphicon glyphicon-step-forward" style="color: #5E8CE7;"></span> &nbsp;&nbsp;
								<img src="../../../images/delim.gif">&nbsp;&nbsp;
								<span class="glyphicon glyphicon-refresh" style="color: #5E8CE7;"></span>
								<div style="float: right;">
									<form>
		
										<img src="../../../images/delim.gif">&nbsp;&nbsp;
										<span>每页</span>
										<select id="company" name="company" style="width: 40px;">
											<option value="0">10</option>
											<option value="1">15</option>
											<option value="2">20</option>
											<option value="4">25</option>
											<option value="5">30</option>
											<option value="6">35</option>
										</select>
										<span>条数</span>&nbsp;&nbsp;
										<img src="../../../images/delim.gif">&nbsp;
										<span>共36条记录，显示1到10</span>&nbsp;
										<img src="../../../images/delim.gif">
										<a href="#"><img src="../../../images/return.gif"></a><input type="text" value="1" style="width: 30px;text-align: center;" /><span>
								/4页&nbsp;</span>
										<img src="../../../images/delim.gif">
		
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-success" data-dismiss="modal" id="conf">确定
						<button type="button" class="btn btn-danger" data-dismiss="modal" id="back">取消
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
    
</form>
</body>
<script type="text/javascript">
$("#backBtn").click(function(){
    window.history.go(-1);
})
 function toList() {
		window.location = "trainingPlanList.html";
	}
	function showModel(){
		$("#allcourses").modal().show();
	}
	$('input[id=lefile]').change(function() {
		$('#enclosure').val($(this).val());
	});
	$(document).ready(function() {
		var all = $("#allcheck");
		var allcheckbox = $("input[type='checkbox']:not(:first)");
		$("input[type='checkbox']:not(:first)").click(function() {
			for(var i = 0; i < allcheckbox.length; i++) {
				if(allcheckbox[i].checked == false) {
					$("#allcheck").removeAttr("checked");
					break;
				}
			}
		});
		$("#allcheck").click(function() {
			if($(this).is(':checked')) {
				for(var i = 0; i < allcheckbox.length; i++) {
					allcheckbox[i].checked = true;
				}
			} else {
				for(var i = 0; i < allcheckbox.length; i++) {
					allcheckbox[i].checked = false;
				}
			}
		});
		$("#conf").click(function(){
			var messg="";
			for(var i = 0; i < allcheckbox.length; i++) {
				if(allcheckbox[i].checked == true) {
					var s=$(allcheckbox[i]).parent().next().next().next().children().text();
					messg=messg+"  "+s;
				}
			}
			all.removeAttr("checked");
			allcheckbox.removeAttr("checked");
			var mes=$("#trainingCt").val();
			$("#trainingCt").val(mes+" "+messg);
		});
		$("#back").click(function(){
			all.removeAttr("checked");
			allcheckbox.removeAttr("checked");
		});
	});

</script>
</html>
