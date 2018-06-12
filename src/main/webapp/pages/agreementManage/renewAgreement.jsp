<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/pages/inc/header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>合同协议详情</title>
</head>
<body>
<div class="sodb-page-home">
    <ul class="sodb-page-ul">
        <li>
            <i class="fa fa-home"></i>
            <a href="#">应急救援管理</a>  
            <i class="fa fa-angle-right"></i>
        </li>
        <li><a href="#">应急救援合同协议管理</a><i class="fa fa-angle-right"></i></li>
        <li><a href="#">合同协议详情</a></li>
    </ul>
</div>
<form name="moduleForm" class="form-horizontal" id="moduleForm" action="<c:url value='/module/update' />" method="post">
    <div class="row" style="margin-top: 20px;">
    	<div class="form-group">
            <span class="col-sm-4 control-label">合同协议编号<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder='原合同协议编号为"A001"' aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议名称<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="医疗采购合同" placeholder="合同协议名称"  readonly="readonly" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议甲方<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="机场医疗部 " placeholder="合同协议甲方"   readonly="readonly" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议乙方<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="协和医院 " placeholder="合同协议乙方"  readonly="readonly" aria-describedby="sizing-addon2">
            </div>
        </div>
          <div class="form-group">
            <span class="col-sm-4 control-label">部门<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="医疗部 " placeholder="部门"   readonly="readonly" aria-describedby="sizing-addon2">
            </div>
        </div>
         <div class="form-group">
            <span class="col-sm-4 control-label">合同协议签订时间<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="原合同协议签订时间为2016-11-01"  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议履行时间<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="原合同协议开始时间为2017-01-01"  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议截止时间<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="原合同协议截止时间为2013-03-25"  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议要求<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="合同双方必须依照合同，保质保量完成合同中的所有要求。" placeholder="合同协议要求"   readonly="readonly"   aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">简介<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="合同双方必须依照合同，保质保量完成合同中的所有要求。" placeholder="简介"   readonly="readonly"  readonly="readonly" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">备注<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder='原备注为"该合同用于医疗医院与机场医疗部关于医疗物资的协议。"'  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
			 <span class="col-sm-4 control-label">附件<span style="color:red">*</span></span>
			<input id="lefile" type="file" style="display:none" >
			<div class="col-md-4">
				<input id="enclosure" class="form-control" type="text" placeholder='原附件为"医疗资源合同"'  value="">
			</div>
			<div class="col-md-4">
				<div class="sbtn sbtn-blue" onclick="$('input[id=lefile]').click();" >选择附件</div>
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
$("#subBtn").click(function(){
    window.history.go(-1);
})
</script>
</html>
