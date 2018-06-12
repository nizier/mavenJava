<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/pages/inc/header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人员信息查看</title>
</head>
<body>
<div class="sodb-page-home">
    <ul class="sodb-page-ul">
        <li>
            <i class="fa fa-home"></i>
            <a href="#">应急救援管理</a>  
            <i class="fa fa-angle-right"></i>
        </li>
        <li><a href="#">应急救援队伍管理</a><i class="fa fa-angle-right"></i></li>
        <li><a href="#">救援人员查看</a></li>
    </ul>
</div>
<form name="moduleForm" class="form-horizontal" id="moduleForm" action="<c:url value='/module/update' />" method="post">
    <div class="row" style="margin-top: 20px;">
        <div class="form-group">
            <span class="col-sm-4 control-label">登录名</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="zhangsan" placeholder="zhangsan" aria-describedby="sizing-addon2" disabled="ture">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">用户名</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="张三" placeholder="设备/资源描述" aria-describedby="sizing-addon2" disabled="ture">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">电话</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="15810818050" placeholder="设备/资源编号" aria-describedby="sizing-addon2"disabled="ture">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">人员编号</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="001 " placeholder="设备/资源名称" aria-describedby="sizing-addon2"disabled="ture">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">身份证号</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="122422192212222222" placeholder="使用部门" aria-describedby="sizing-addon2" disabled="ture">
            </div>
        </div>
         <div class="form-group">
            <span class="col-sm-4 control-label">性别</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="男" placeholder="负责人" aria-describedby="sizing-addon2"disabled="ture">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">部门</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="安检" placeholder="设备/资源型号" aria-describedby="sizing-addon2"disabled="ture">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">角色</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="11" placeholder="设备/资源数量" aria-describedby="sizing-addon2"disabled="ture">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">邮箱</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="112233@.com" placeholder="设备/资源数量" aria-describedby="sizing-addon2"disabled="ture">
            </div>
        </div>
         <div class="form-group">
			<span class="col-sm-4 control-label">职称</span>
			<div class="col-sm-2">
				<input type="date" class="form-control" placeholder=" " value="主任"  disabled="ture"/>
			</div>
		</div>
		<div class="form-group">
			<span class="col-sm-4 control-label">学历</span>
			<div class="col-sm-2">
				<input type="date" class="form-control" placeholder="截止使用日期" value="研究生" disabled="ture"/>
			</div>
		</div>
        <div class="form-group">
            <span class="col-sm-4 control-label">地址</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="河北省廊坊市固安县" placeholder="存放地点" aria-describedby="sizing-addon2" disabled="ture">
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
