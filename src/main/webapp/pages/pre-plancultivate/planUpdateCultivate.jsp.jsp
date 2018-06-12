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
            <a href="#">通行证管理系统</a> 
            <i class="fa fa-angle-right"></i>
        </li>
        <li><a href="#">控制区域管理</a><i class="fa fa-angle-right"></i></li>
        <li><a href="#">新建控制区域</a></li>
    </ul>
</div>
<form name="moduleForm" class="form-horizontal" id="moduleForm" action="<c:url value='/module/update' />" method="post">
    <div class="row" style="margin-top: 20px;">
        <div class="form-group">
            <span class="col-sm-4 control-label">课程名称<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="常识培训" placeholder="" aria-describedby="sizing-addon2" disabled="true">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">起始时间<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="2018年1月" placeholder="" aria-describedby="sizing-addon2" disabled="true">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">结束时间<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="20" name="" value="2018年1月" placeholder="" aria-describedby="sizing-addon2" disabled="true">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">地点<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="20" name="" value="北京" placeholder="" aria-describedby="sizing-addon2" disabled="true" disabled="true">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">人数<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="20" name="" value="55" placeholder="" aria-describedby="sizing-addon2" disabled="true">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">已报名人数<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="20" name="" value="30" placeholder="" aria-describedby="sizing-addon2" disabled="true"> 
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">部门<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="20" name="" value="办公室" placeholder="" aria-describedby="sizing-addon2" disabled="true">
            </div>
        </div>
        
    </div>
    <div class="row" style="margin-top: 20px;">
        <div class="col-md-11" style="text-align:center;">
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