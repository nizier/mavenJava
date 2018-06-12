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
        <li><a href="#">应急救援知识库管理</a><i class="fa fa-angle-right"></i></li>
        <li><a href="#">新增知识库</a></li>
    </ul>
</div>
<form name="moduleForm" class="form-horizontal" id="moduleForm" action="<c:url value='/module/update' />" method="post">
    <div class="row" style="margin-top: 20px;">
        
       <!-- <div class="form-group">
            <span class="col-sm-4 control-label">培训名称<span style="color:red">*</span></span>
            <div class="col-md-4">
            <select id="item" name="item" class="form-control" style="width: 448px;">
									<option value="">选择培训机构</option>
									<option value="0">01培训营</option>
									<option value="1">01培训营</option>
									<option value="2">01培训营</option>
									<option value="3">01培训营</option>
									<option value="4">01培训营</option>
									<option value="5">01培训营</option>
								</select>
            </div>
        </div> -->
        <!-- <div class="form-group">
            <span class="col-sm-4 control-label">资料编号<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="资料编号" aria-describedby="sizing-addon2">
            </div>
        </div> -->
        <div class="form-group">
            <span class="col-sm-4 control-label">资料名称<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="资料名称" aria-describedby="sizing-addon2">
            </div>
        </div>
         <div class="form-group">
            <span class="col-sm-4 control-label">种类<span style="color:red">*</span></span>
            <div class="col-md-4">
            <select id="item" name="item" class="form-control" style="width: 100%;">
									<option value="">选择种类</option>
									<option value="0">基础教材</option>
									<option value="1">基础教材</option>
									<option value="2">基础教材</option>
									<option value="3">基础教材</option>
									<option value="4">基础教材</option>
									<option value="5">基础教材</option>
								</select>
            </div>
        </div>
         <div class="form-group">
            <span class="col-sm-4 control-label">简介<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="简介" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">部门<span style="color:red">*</span></span>
            <div class="col-md-4">
            <select id="item" name="item" class="form-control" style="width: 100%;">
									<option value="">选择部门</option>
									<option value="0">救援部</option>
									<option value="1">救援部</option>
									<option value="2">救援部</option>
									<option value="3">救援部</option>
									<option value="4">救援部</option>
									<option value="5">救援部</option>
								</select>
            </div>
        </div>
        <div class="form-group">
			 <span class="col-sm-4 control-label">附件<span style="color:red">*</span></span>
			<input id="lefile" type="file" style="display:none">
			<div class="col-md-4">
				<input id="enclosure" class="form-control" type="text" placeholder="附件">
			</div>
			<div class="col-md-4">
				<div class="sbtn sbtn-blue" onclick="$('input[id=lefile]').click();" >选择附件</div>
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
            <span class="col-sm-4 control-label">资料内容</span>
            <div class="col-md-4">
				<textarea  id="trainingCt" class="form-control" style="width: 100%" placeholder="资料内容"></textarea>
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
