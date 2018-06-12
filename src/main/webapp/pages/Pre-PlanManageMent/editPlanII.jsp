<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>添加设备</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet" href="<%=path %>/css/pilotcockpit.css" />
<link rel="stylesheet" href="<%=path %>/css/pagebar.css" />
<link rel="stylesheet" type="text/css"
	href="<%=path %>/css/bootstrapValidator.min.css" />
<script type="text/javascript"
	src="<%=path %>/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/bootstrap-select.js">	</script>
 <link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap-select.css">
  <script type="text/javascript">
 $(window).on('load', function () {

     
	 $('.selectpicker').selectpicker({
	                'selectedText': 'cat'
	            });

	         
	   // $('.selectpicker').selectpicker('hide');
	        });
 
 
  </script>	
<style>
.portlet.box.blue-hoki > .portlet-title {
    background-color: #67809f;
}
#edui1{
	margin-left:3px;
	
} 
</style>
</head>
<body>
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">北京新机场应急救援管理</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">应急救援预案管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">编辑预案</a></li>
		</ul>
	</div>
	<div class="page-container" style="padding-left: 0px;">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<div id="content_1">
					<div class="portlet box blue-hoki">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-th-list"></i>预案模板信息管理
							</div>
						</div>
						<div class="portlet-body form">
							<form id="form1" class="form-horizontal" role="form" action="#"
								enctype="multipart/form-data" method="post">
								<div class="form-body">
								<!-- 	111	 -->	
							<div class="tabbable" id="tabs-975144" style="">
				<ul class="nav nav-tabs">
					<li class= "active">
						 <a href="#panel-938456" data-toggle="tab">新增应急救援预案</a>
					</li>
					<li class="activees">
						 <a href="#panel-933832" data-toggle="tab">配置应急救援预案目录</a>
					</li>
						<li class="activees">
						 <a href="#panel-938457" data-toggle="tab" id="active">编写应急救援预案内容</a>
					</li>

				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-938456" style="margin-top: 30px;">
						<div class="form-body" style="margin-left:-10%">
							<div class="form-group" >
								<label class="col-md-4 control-label">预案类别<span
									class="required">* </span></label>
									<div class="col-md-6">
										<select  class="form-control"  disabled="disabled">
											<option>综合预案</option>
											<option>专项预案</option>
											<option>部门预案</option>
										</select>
									</div>
							</div>
							<div class="form-group" >
								<label class="col-md-4 control-label">事件分类<span
									class="required">* </span></label>
									<div class="col-md-6">
										<select  class="form-control"  disabled="disabled">
											<option>航空器紧急事件</option>
											<option>非航空器紧急事件</option>
										</select>
									</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label">预案名称
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" value="航空器失事应急处置预案" placeholder="附件名称">
										</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label">附件上传
								<span class="required">* </span></label>
									<div class="col-md-6">
										<input type="file" /><br/>
											<font style="color: gray;">只能上传.doc.pdf文件</font>
									</div>
							</div>
									<!-- 每次点击对数据进行修改回显，如果没有值的话显示“暂时没有配置流程” -->
							<div class="form-group">
								<label class="col-md-4 control-label">预案版本
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" value="V1.0" readonly="readonly">
										</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label">版本描述
									<span class="required">* </span></label>
									<div class="col-md-6">
										<textarea class="form-control" >新版本</textarea>
									</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label">预案到期时间
									<span class="required">* </span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" value="2020-1-1" placeholder="">
										</div>
							</div>
								<div class="form-actions" style="margin-top: 30px;">
						<div class="row">
							<div class="col-md-offset-5 col-md-9">
								<button type="submit" class="sbtn sbtn-blue sbtn30" id="submitPlan">
									保存</button>
								<button style="margin-left: 45px;" type="button"
									 onclick="window.location.href='maintainPlan.jsp'"
									class="sbtn sbtn-default sbtn30">取消</button>
								</div>
							</div>
						</div>
						</div>					
					</div>
					<div class="tab-pane activees" id="panel-933832" style="margin-left: 15px;margin-top: 30px;">
					<div class="row">
							<!-- 目录树 -->
							 <div class="col-md-3" style="width: 32%;margin-top: -1%">
						     	<div class="portlet blue-hoki box" >
									<div class="portlet-title">
										<div class="caption">
											<i class="fa fa-cogs"></i>应急救援预案目录管理		
										</div>
										<button style="margin-left: 18%;margin-top: 2%;margin-bottom: 2%" type="button"
										id="addChildNode"	class="sbtn sbtn-default sbtn30">新增子节点</button>									
									</div>									
									<div class="portlet-body">
										<div id="addPlanIItree" class="tree-demo"></div>
									</div>
									
								</div>
						    </div>
							<!-- 配置目录主体 -->
							<div  class="col-md-9"  id="content_1" style="width:67%;margin-top: -13pxl;margin-top: -13px " >
								<div class="portlet box blue-hoki">
									<div class="portlet-title">
										<div class="caption"  id="title">
											<i class="fa fa-th-list"></i>应急救援预案目录样式编辑
										</div>
									</div>
									<div class="portlet-body form" style="width:100%;"> 						
										<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">
											<!-- <button type="button" id="addPlanBtn"  onclick="addPlanApp()" class="sbtn sbtn-blue" style="margin-left: 83%;margin-top: 1%">
          									 新增子目录节点</button> -->
          									<div class="col-md-12" style="margin-left: -3%;margin-top: 1%;">
     									 		<div class="form-group" style="margin-left: 2.3%">
	          									<label class="col-md-2 control-label">选择目录样式<span
													class="required">* </span></label>
													<div class="col-md-2">
														<select class="form-control" style="width: 150px">
															<option>一级目录样式</option>
															<option>二级目录样式</option>
															<option>三级目录样式</option>
															<option>四级目录样式</option>
															<option>五级目录样式</option>
														</select>
													</div>
											</div>
												<div class="form-group" style="margin-left: 6%;margin-top: 2%">
													<span style="font-size: 17px;font-weight: bold;">请输入目录名称（可修改内容）：</span>
												</div>
											</div>
          									 <textarea id="textareaText" rows="5" cols="70" style="overflow:hidden;margin-left: 4%;width: 780px;margin-top: 1%" >一级目录</textarea>
          									 <button style="margin-left: 4%;margin-top: 2%;margin-bottom: 2%" type="button"
												 id = "ok"
												class="sbtn sbtn-default sbtn30">确定</button>
       									 	<!-- <button style="margin-left: 4%;margin-top: 2%;margin-bottom: 2%" type="button"
												 id = "ok"
												class="sbtn sbtn-default sbtn30">确定</button>
											<button style="margin-left: 4%;margin-top: 2%;margin-bottom: 2%" type="button"
											 id = "clearCss"
											class="sbtn sbtn-default sbtn30">清空样式</button> -->
										</form>						           			
									</div>						
								</div>
							</div>
							<div class="row" style="margin-left: -7%">
								<div class="col-md-offset-5 col-md-9">
									<button type="button" class="sbtn sbtn-default sbtn30" id="nextTab">
										下一步</button>
									<button style="margin-left: 45px;" type="button"
										 onclick="window.location.href='maintainPlan.jsp'"
										class="sbtn sbtn-default sbtn30">取消</button>
									</div>
								</div>	
						</div>
					</div>
					<div class="tab-pane activees" id="panel-938457" style="margin-left: 15px;margin-top: 30px;">
						<div class="row">
							<!-- 目录树 -->
							<div class="col-md-3" style="width: 32%;margin-top: -1%">
							   	<div class="portlet blue-hoki box" >
									<div class="portlet-title">
										<div class="caption">
											<i class="fa fa-cogs"></i>应急救援预案目录管理		
										</div>									
									</div>									
									<div class="portlet-body">
										<div id="maintaindptree" class="tree-demo"></div>
									</div>
								</div>
							  </div>
							 <!--  主体 -->
							 <div  class="col-md-9"  id="content_1" style="width:69%;margin-top: -1%;display: block;margin-left: -1%;" >
								<div class="portlet box blue-hoki">
									<div class="portlet-title">
										<div class="caption"  id="title">
											<i class="fa fa-th-list"></i>航空器失事应急处置预案
										</div>
									</div>
									<div class="portlet-body form" style="width:100%;"> 						
						                <textarea id="content" name="content" style="width: 850px;margin-top: 10px">机场应急救援管理系统是为机场应急管理中心提供一套集应急演练、培训、流程管理、评估分析等功能的重要支撑系统，可以满足机场应对应急救援事件的需要。本系统能够辨别相关事故，维护事故处理流程预案，便于各部门对应急预案的查询检索；并可通过基于二维/三维地图应急演练电子沙盘系统，进行应急推演的模拟演练，从而进一步提高机场对类似事件的应对能力，优化相关应急流程。
										机场应急救援事件分为航空器突发事件、非法干扰事件、机场设施失火事件、突发公共卫生事件等发生或可能发生严重损坏以及可能导致人员伤亡和财产严重损失的事件。
										</textarea>
									</div>
								</div>
							</div>			
						  </div>
						   <div class="row">
							<div class="col-md-offset-5 col-md-9">
								<button type="button" class="sbtn sbtn-blue sbtn30" id="savePlan">
									保存</button>
								<button style="margin-left: 45px;" type="button"
									 onclick="window.location.href='maintainPlan.jsp'"
									class="sbtn sbtn-default sbtn30">取消</button>
								</div>
							</div>
					</div>
				</div>
			</div>
				</div>
					<!-- <div class="form-actions" style="margin-top: 30px;">
						<div class="row">
							<div class="col-md-offset-5 col-md-9">
								<button type="submit" class="sbtn sbtn-blue sbtn30" id="submitPlan">
									保存</button>
								<button style="margin-left: 45px;" type="button"
									 onclick="window.location.href='maintainPlan.jsp'"
									class="sbtn sbtn-default sbtn30">取消</button>
								</div>
							</div>
						</div> -->
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 弹出版本模态框 -->
<form name="version" class="form-horizontal" id="versionPlan" action="#" method="post" enctype="multipart/form-data">
	<div class="modal fade bs-example-modal-sm" id="versionplan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width:700px; height: 500px;">
			<div class="modal-content">
				<div class="col-md-6" style="margin-left: 65px;width: 374px;margin-top: 10px">
					<input type="hidden" name="projectId" id="id" >
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">当前预案版本号：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<input type="text" class="form-control input-radius"
										id="projectCode" name="projectCode"
										aria-describedby="sizing-addon2" value="V1.0" required="required" readonly="readonly">
								</div>
						</div>
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">修改后预案版本号：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<input type="text" class="form-control input-radius"
										id="projectCode" name="projectCode" placeholder="请输入版本号"
										aria-describedby="sizing-addon2"  required="required" style="width: 220px">
								</div>
						</div>
					
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">您所修改的章节：</span>
								<div class="col-md-6" style="margin-top: 30px">
										<input type="text" class="form-control input-radius"
										id="projectCode" name="projectCode" value="1.1"
										aria-describedby="sizing-addon2"  required="required" style="width: 220px" disabled="disabled">
								</div>
						</div>
						
						
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">修改前内容为：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<textarea class="form-control input-radius"
										id="applyReason" name="applyReason" 
										aria-describedby="sizing-addon2" style="margin-top: -6px;width: 452px;height: 215px" disabled="disabled">机场应急救援管理系统是为机场应急管理中心提供一套集应急演练、培训、流程管理、评估分析等功能的重要支撑系统，可以满足机场应对应急救援事件的需要。本系统能够辨别相关事故，维护事故处理流程预案，便于各部门对应急预案的查询检索；并可通过基于二维/三维地图应急演练电子沙盘系统，进行应急推演的模拟演练，从而进一步提高机场对类似事件的应对能力，优化相关应急流程。 机场应急救援事件分为航空器突发事件、非法干扰事件、机场设施失火事件、突发公共卫生事件等发生或可能发生严重损坏以及可能导致人员伤亡和财产严重损失的事件。</textarea>
								</div>
						</div>
						<div class="form-group" >
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">修改后内容为：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<textarea class="form-control input-radius"
										id="applyReason" name="applyReason" 
										aria-describedby="sizing-addon2" style="margin-top: -6px;width: 452px;height: 215px" disabled="disabled">机场应急救援管理系统是为机场应急管理中心提供一套集应急演练、培训、流程管理、评估分析等功能的重要支撑系统，可以满足机场应对应急救援事件的需要。本系统能够辨别相关事故，维护事故处理流程预案，便于各部门对应急预案的查询检索；并可通过基于二维/三维地图应急演练电子沙盘系统，进行应急推演的模拟演练，从而进一步提高机场对类似事件的应对能力，优化相关应急流程。 机场应急救援事件分为航空器突发事件、非法干扰事件、机场设施失火事件、突发公共卫生事件等发生或可能发生严重损坏以及可能导致人员伤亡和财产严重损失的事件。</textarea>
								</div>
						</div>
						<!-- <div class="form-group" >
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">上传人：</span>
								<div class="col-md-6" style="margin-top: 30px">
									<input type="text" class="form-control input-radius"
										id="projectCode" name="projectCode" value="根据登录角色"
										aria-describedby="sizing-addon2"  required="required" style="width: 220px" readonly="readonly">
								</div>
						</div> -->
					</div>
					<div class="form-group">
						<div style="margin-left: 35%;" >
							<div style="margin-left: 58%;margin-top: 150%">
								<button style="margin-left: -255px; margin-top:60px" type="button" id="ok" 
									onclick="submitStatus()"	class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
								<button style="margin-left: 10px; margin-top: 60px" type="button" id="oksss" 
									class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form> 
</div>
<script type="text/javascript" src="<%=path %>/businessJs/addNewPlanTree.js"></script>
<script type="text/javascript" src="<%=path %>/businessJs/addPlanIITree.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=path %>/extends/UEditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=path %>/extends/UEditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="<%=path %>/extends/UEditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
/* tab页切换 */
$('#tit li').click(function() {
    var i = $(this).index();//下标第一种写法
    $(this).addClass('select').siblings().removeClass('select');
    $('#con li').eq(i).show().siblings().hide();
});

$("#ok").click(function(){
	var textareaText = $("#textareaText").val();
	var fontFamily = $("#fontFamily option:selected").val();
	var fontSize = $("#fontSize option:selected").val();
	var fontRude = $("#fontRude option:selected").val();
	/* 字体 */
	if (fontFamily == "宋体"){
		$("#textareaText").css("font-family","SimSun");
	}else if(fontFamily == "微软雅黑"){
		$("#textareaText").css("font-family","Microsoft Yahei");
	}
	/* 字体加粗 */
	if(fontRude == "是"){
		$("#textareaText").css("font-weight","bold");
	}else if(fontRude == "否"){
		$("#textareaText").css("font-weight","normal");
	}
	/* 字体大小 */
	if(fontSize == "五号"){
		$("#textareaText").css("font-size","14px");
	}else if(fontSize == "小二"){
		$("#textareaText").css("font-size","24px");
	}
})
/* 清除样式 */
$("#clearCss").click(function(){
	$("#textareaText").css("font-size","");
	$("#textareaText").css("font-weight","");
	$("#textareaText").css("font-family","");
})
/* 预案配置流程 */
$("#planFlow").click(function(){
	window.location.href='planFlow.jsp'
		
})
//实例化编辑器 
var ue = UE.getEditor('content',{
	toolbars: [[
        'fullscreen', 'source', '|', 'undo', 'redo', '|',
        'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', '|',
        'rowspacingtop', 'rowspacingbottom', 'lineheight', '|',
        'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|',
        'directionalityltr', 'directionalityrtl', 'indent', '|',
        'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|', 'touppercase', 'tolowercase', '|',
        'link', 'unlink', 'anchor', '|', 'simpleupload', 'insertimage', '|',
        'horizontal', 'date', 'time', 'spechars', 'snapscreen', 'wordimage', '|',
        'preview', 'searchreplace', 'drafts', 'help','removeformat','insertorderedlist','|',
        'inserttable', 'deletetable', 'insertparagraphbeforetable', 'insertrow', 'deleterow', 'insertcol', 'deletecol', 'mergecells', 'mergeright', 'mergedown', 'splittocells', 'splittorows', 'splittocols', 'charts'
    ]],
    initialFrameHeight:500,
    scaleEnabled:true,
});
//保存预案时如果有与当前预案相同的时候可以选择复制预案
$("#savePlan").click(function(){
	$("#versionplan").modal();
})
//下一步跳转
$("#nextTab").click(function(){
	$("#active").trigger('click');
	
})
</script>
</body>
</html>