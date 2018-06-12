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
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="/EMS-Prototype/css/pilotcockpit.css">
<link rel="stylesheet" href="/EMS-Prototype/css/pagebar.css">
<link rel="stylesheet" href="/EMS-Prototype/css/template/templateEditor.css">
<link rel="stylesheet" type="text/css" href="/EMS-Prototype/extends/jstree/dist/themes/default/style.min.css">
<link href="/EMS-Prototype/css/devicecomponents.css" id="style_components" rel="stylesheet" type="text/css">
<link href="/EMS-Prototype/css/treecustom.css" rel="stylesheet" type="text/css">

<style>
.portlet.box.blue-hoki > .portlet-title {
    background-color: #67809f;
}
</style>
</head>
<body style="overflow-x: hidden"><div class="modal fade" tabindex="-1" role="dialog" id="sodbGlobalModal" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document" style="width:500px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title">提示</h4>
	        </div>
	        <div class="modal-body" id="sodbGlobalModalBody"></div>
	        <div class="modal-footer">
	            <button type="button" id="hideGlobalModalBtn" class="btn btn-primary">确定</button>
	        </div>
        </div>
    </div>
</div>
<script type="text/javascript">
function showMsg(msg,time){
	$("#sodbGlobalModalBody").html(msg);
	$('#sodbGlobalModal').modal('show')
	if(time != undefined){
	    setTimeout(function(){
	        $("#sodbGlobalModalBody").html('');
	        $('#sodbGlobalModal').modal('hide');
	    },time * 1000)
	}
}
$("#hideGlobalModalBtn").click(function(){
	$("#sodbGlobalModalBody").html('');
    $('#sodbGlobalModal').modal('hide');
})
</script>

<script src="/EMS-Prototype/extends/jstree/dist/jstree.min.js" type="text/javascript"></script>
<script src="/EMS-Prototype/js/metronic.js" type="text/javascript"></script>
<script src="/EMS-Prototype/js/layout.js" type="text/javascript"></script>


	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">预案管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">新增预案</a></li>
		</ul>
	</div>
	<div class="page-container" style="padding-left: 0px;">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<div id="content_1">
					<div class="portlet box blue-hoki col-md-12">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-th-list"></i>检查单模板信息管理
							</div>
						</div>
					</div>
					<div class="col-md-3" style="width:20%">
						<div class="toolbar">
							<input type="hidden" id="groupId" value="1">
							<input type="hidden" id="tableId" value="1">
							<div class="tool-title">工具栏</div>
							<div class="font-area row">
								<button id="addGroup" class="tool-btn">新增一行</button>
								<button id="cancelGroup" class="tool-btn">取消一行</button>
								<button id="clearCss" class="tool-btn">清空虚线</button>
								<button id="undo" class="tool-btn">撤销</button>
								<button id="refresh" class="tool-btn">重做</button>
								<button id="save" class="tool-btn">保存</button>
								<button id="return" class="tool-btn" onclick="window.location.href='addEvolve.jsp'">返回</button>
							</div>
							
							<div class="tool-title">文字</div>
							<div class="font-area row">
								<div class="font-label col-md-3">字体</div>
								<select id="fontFamily" class="col-md-9 font-from" onchange="getFontFamily()">
									<option>---请选择---</option>
									<option value="1">微软雅黑</option>
									<option value="2">黑体</option>
								</select>
							</div>
							
							<div class="font-area row">
								<div class="font-label col-md-3">字号</div>
								<select id="fontSize" class="col-md-9 font-from" onchange="getSel()">
									<option>---请选择---</option>
									<option>四号</option>
									<option>五号</option>
									<option>小二</option>
								</select>
							</div>
							
							<div class="font-area row">
								<div class="font-dec" style="margin-top: 5%">
									<button style="font-weight:bold;margin-bottom: 2%;width: 0px" type="button"
												 onclick="textBold()"
												class="sbtn sbtn-default sbtn30" >B</button>
									<button style="font-style: italic;font-weight:bold;margin-bottom: 2%;width: 0px" type="button"
												 onclick = "textItalic()"
												class="sbtn sbtn-default sbtn30" >I</button>
									<button style="font-weight:bold;margin-bottom: 2%;width: 0px" type="button"
												 onclick = "textXie()"
												class="sbtn sbtn-default sbtn30" ><u>U</u></button>
									<!-- <div id="font-align-left-icon" class="font-dec-btn"></div>
									<div id="font-align-center-icon" class="font-dec-btn"></div>
									<div id="font-align-right-icon" class="font-dec-btn"></div>
									<div id="font-erase-icon" class="font-dec-btn"></div> -->
								</div>
								<div class="tool-cut-off"></div>
							</div>
							
							<div class="font-area row">
								<div class="tool-title">表格</div>
								<div class="font-label col-md-3">行数</div>
								<input id="table-row" class="col-md-9 font-from">
								<div class="font-label col-md-3">列数</div>
								<input id="table-col" class="col-md-9 font-from">
								<button class="tool-btn" id="addTable">插入</button>
							</div>
							
							<div class="font-area row">
								<div class="tool-title">输入框</div>
								<!-- <button class="tool-btn">插入到文字</button>
								<button class="tool-btn">插入到表格</button> -->
								<select id="inputArea" class="col-md-9 font-from" style="width: 192px">
									<option>---请选择---</option>
									<option value="1">当前本文</option>
									<option value="2">添加到表格</option>
								</select>
								<button class="tool-btn" id="addInput">插入</button>
							</div>
							<input type="hidden" id="inputId" value="1">
							<div class="font-area row">
								<div class="tool-title">勾选框</div>
								<select  id="checkArea" class="col-md-9 font-from" style="width: 192px">
									<option>---请选择---</option>
									<option value="1">当前本文</option>
									<option value="2">添加到表格</option>
								</select>
								<button class="tool-btn" id="addCheckBox">插入</button>
							</div>
						</div>
					</div>
					<div class="col-md-9" style="width:78%">
						<div class="edit-area">
							<div id="addG" style="border:1px solid black"></div>
						</div>
					</div>		   
							
				</div>
			</div>
		</div>

	</div>
<script type="text/javascript" src="/EMS-Prototype/js/Pre-PlanManageMent/customTemplate.js"></script>
<script type="text/javascript">
var menuYloc = $(".toolbar").offset().top;  
$(window).scroll(function () {  
    var offsetTop = menuYloc + $(window).scrollTop() + "px";  
    $(".toolbar").animate({ top: offsetTop }, { duration: 600, queue: false });  
});  
</script>

</body>
</html>