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
        <li><a href="#">应急救援资源管理</a><i class="fa fa-angle-right"></i></li>
        <li><a href="#">新增资源</a></li>
    </ul>
</div>
<form name="moduleForm" class="form-horizontal" id="moduleForm" action="<c:url value='/module/update' />" method="post">
    <div class="row" style="margin-top: 20px;">
        
        <div class="form-group">
            <span class="col-sm-4 control-label">设备/资源分类<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="急救-救援车辆" placeholder="设备/资源分类" aria-describedby="sizing-addon2" disabled="ture">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">设备/资源描述<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="设备/资源描述" aria-describedby="sizing-addon2" >
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">设备/资源编号<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="设备/资源编号" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">设备/资源名称<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="设备/资源名称" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">设备/资源型号<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="设备/资源型号" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">负责人<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="负责人" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">设备/资源数量<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="设备/资源数量" aria-describedby="sizing-addon2">
            </div>
        </div>
         <div class="form-group">
            <span class="col-sm-4 control-label">设备/资源单位<span style="color:red">*</span></span>
           <div class="col-md-4">
            <select id="item" name="item" class="form-control" style="width: 100%;">
									<option value="">量</option>
									<option value="0">个</option>
									<option value="1">套</option>
									<option value="2">台</option>
									<option value="3">部</option>
								</select>
            </div>
        </div>
         <div class="form-group">
			<span class="col-sm-4 control-label">购置日期<span style="color:red">*</span></span>
			<div class="col-sm-2">
				<input type="date" class="form-control" placeholder="起始时间" />
			</div>
		</div>
		<div class="form-group">
			<span class="col-sm-4 control-label">生产日期<span style="color:red">*</span></span>
			<div class="col-sm-2">
				<input type="date" class="form-control" placeholder="生产日期" />
			</div>
		</div>
		<div class="form-group">
			<span class="col-sm-4 control-label">截止日期<span style="color:red">*</span></span>
			<div class="col-sm-2">
				<input type="date" class="form-control" placeholder="截止使用日期" />
			</div>
		</div>
		<div class="form-group">
            <span class="col-sm-4 control-label">所属单位<span style="color:red">*</span></span>
            <div class="col-md-4">
               <select id="item" name="item" class="form-control" style="width: 100%;">
					<option value="">部门选择</option>
					<option value="0">消防部</option>
					<option value="1">医疗部</option>
					<option value="2">消防部</option>
					<option value="3">医疗部</option>
				</select>
			</div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">仓库名称<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="仓库名称" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">存放地点<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="存放地点" aria-describedby="sizing-addon2">
            </div>
        </div>
         <div class="form-group">
            <span class="col-sm-4 control-label">维保时间<span style="color:red">*</span></span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="维保时间" aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">资源状态<span style="color:red">*</span></span>
            <div class="col-md-4">
                <!-- <input type="text" class="form-control" id="" name="" value="" placeholder="维保时间" aria-describedby="sizing-addon2"> -->
                <input type="radio" name="资源状态" value="可用" checked >可用
                <input type="radio" name="资源状态" value="不可用" >不可用
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">设备资源金额</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="" placeholder="设备资源金额" aria-describedby="sizing-addon2">
            </div>
        </div>
         <div class="form-group">
            <span class="col-sm-4 control-label">主要功能</span>
            <div class="col-md-4">
                <textarea style="width:100%;resize: none;" class="form-control"></textarea>
            </div>
        </div>
        <div class="form-group">
			 <span class="col-sm-4 control-label">附件</span>
			<input id="lefile" type="file" style="display:none">
			<div class="col-md-4">
				<input id="enclosure" class="form-control" type="text" placeholder="附件" value="救援车辆维护">
			</div>
			<div class="col-md-4">
				<div class="sbtn sbtn-blue" onclick="$('input[id=lefile]').click();" >上传</div>
			</div>
		</div>
       
        <div class="form-group">
            <span class="col-sm-4 control-label">备注</span>
            <div class="col-md-4">
                <textarea style="width:100%;resize: none;" class="form-control"></textarea>
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
