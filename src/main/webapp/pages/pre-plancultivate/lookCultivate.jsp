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
            <a href="#">应急救援管理</a>  
            <i class="fa fa-angle-right"></i>
        </li>
        <li><a href="#">应急救援培训方案管理</a><i class="fa fa-angle-right"></i></li>
        <li><a href="#">培训课程</a></li>
    </ul>
</div>
<form name="moduleForm" class="form-horizontal" id="moduleForm" action="<c:url value='/module/update' />" method="post">
    <div class="row" style="margin-top: 20px;">
        
       <div class="form-group">
            <span class="col-sm-4 control-label">培训名称<span style="text-align: center;color:red;">*</span>：</span>
            <div class="col-md-4">
            <select id="item" name="item" class="form-control" style="width: 100%;" disabled="true">
									<option value="">01培训营</option>
									<option value="0">01培训营</option>
									<option value="1">01培训营</option>
									<option value="2">01培训营</option>
									<option value="3">01培训营</option>
									<option value="4">01培训营</option>
									<option value="5">01培训营</option>
								</select>
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">培训课程编号<span style="text-align: center;color:red;">*</span>：</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="A001" placeholder="培训课程编号" aria-describedby="sizing-addon2" disabled="true">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">培训课程名称<span style="text-align: center;color:red;">*</span>：</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="常识培训" placeholder="培训课程名称" aria-describedby="sizing-addon2" disabled="true">
            </div>
        </div>
          <div class="form-group">
            <span class="col-sm-4 control-label">培训类别<span style="text-align: center;color:red;">*</span>：</span>
            <div class="col-md-4">
            <select id="item" name="item" class="form-control" style="width: 100%;" disabled="true">
									<option value="">培训类别1</option>
									<option value="0">培训类别2</option>
									<option value="1">培训类别3</option>
									<option value="2">培训类别4</option>
								</select>
            </div>
        </div>
          <div class="form-group">
            <span class="col-sm-4 control-label">学时<span style="text-align: center;color:red;">*</span>：</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="32" placeholder="学时" aria-describedby="sizing-addon2" disabled="true">
            </div>
        </div>
        
        <!-- <div class="form-group">
            <span class="col-sm-4 control-label">人数<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="人数" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">部门<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="部门" aria-describedby="sizing-addon2">
            </div>
        </div> -->
        <div class="form-group">
            <span class="col-sm-4 control-label">培训内容：</span>
            <div class="col-md-4">
				<textarea  id="trainingCt" class="form-control" style="width: 100%" placeholder="培训内容" disabled="true">常识培训</textarea>
			</div>
        </div>
    </div>
    <div class="row" style="margin-top: 20px;">
        <div class="col-md-11" style="text-align:center;">
            <button class="sbtn sbtn-blue" type="button" id="subBtn" onclick="submitModule()"><i class='fa fa-save'></i>&nbsp;保存</button>
            <button class="sbtn sbtn-default" type="button" id="backBtn" style="margin-left:45px;"><i class='fa fa-reply'></i>&nbsp;返回</button>
        </div>
    </div>
</form>
</body>
<script type="text/javascript">
$("#backBtn").click(function(){
    window.history.go(-1);
})
</script>
</html>
