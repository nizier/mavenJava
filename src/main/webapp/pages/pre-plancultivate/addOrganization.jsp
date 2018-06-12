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
<li><a href="#">新增培训机构</a></li>
</ul>
</div>
<form name="moduleForm" class="form-horizontal" id="moduleForm" action="<c:url value='/module/update' />" method="post">
    <div class="row" style="margin-top: 20px;">
        <div class="form-group">
            <span class="col-sm-4 control-label">机构编码<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="机构编码" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">机构名称<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="机构名称" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">所在单位<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="所在单位" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">联系人<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="联系人" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">联系电话<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="联系电话" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">地址<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="地址" aria-describedby="sizing-addon2">
            </div>
        </div>
        <!-- <div class="form-group">
            <span class="col-sm-4 control-label">创建时间<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="创建时间" aria-describedby="sizing-addon2">
            </div>
        </div> -->
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
            <span class="col-sm-4 control-label">简介</span>
            <div class="col-md-4">
				<textarea  id="trainingCt" class="form-control" style="width: 100%" placeholder="简介"></textarea>
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
