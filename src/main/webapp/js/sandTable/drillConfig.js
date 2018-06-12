var addFlowBtn = "";
addFlowBtn += "<div class=\"flow-container\">\n";
addFlowBtn += "	<div class=\"flow-add-btn\">\n";
addFlowBtn += "		+\n";
addFlowBtn += "	<\/div>\n";
addFlowBtn += "<\/div>\n";

var periodCount = 0;
var flowCount = 0;

function namePeriod() {
	$("#periodNameModal").modal();
}

function confirmDelPeriod(e) {
	var curPeriodId = $(e).parent().parent().attr("id");
	$("#curPeriodId").val(curPeriodId);
	$("#periodDelModal").modal();
}

function nameFlow(e) {
	var fatherPeriod = $(e).parent().siblings(".all-flow-container").attr("id");
	$("#father-period-id").val(fatherPeriod);
	$("#flowNameModal").modal();
}

function confirmDelFlow(e) {
	var containerId = $(e).parent().attr("id");
	$("#curFlowId").val(containerId);
	$("#flowDelModal").modal();
}



function addPeriod(){
	$("#periodNameModal").modal('hide');
	var name = $("#periodName").val();
	var uuid = Math.uuid();
	 $("#periodName").val("");
	var newPeriod = "<div class=\"period-container\" id=\"period"+uuid+"\">";
	newPeriod+= "	<div class=\"period-title\">"+name;
	newPeriod+= "<button class=\"period-del-btn\" title=\"删除此阶段\" type=\"button\" onclick=\"confirmDelPeriod(this)\">删除<\/button>\n";
	newPeriod+="</div>"
	newPeriod+= "	<div class=\"period-cut-off\"></div>";
	newPeriod+= "	<div class=\"period-body\">";
	newPeriod += "<div class=\"all-flow-container\" id=\"flow-container-"+uuid+"\">\n";
	newPeriod += "<\/div>\n";
	newPeriod += "<div class=\"flow-container\">\n";
	newPeriod += "	<div class=\"flow-add-btn\" onclick=\"nameFlow(this);\">\n";
	newPeriod += "		+\n";
	newPeriod += "	<\/div>\n";
	newPeriod += "<\/div>\n";
	newPeriod+= "	</div>";
	newPeriod+= "</div>";
	$("#all-period-container").append(newPeriod);
}


function addFlow(){
	$("#flowNameModal").modal('hide');
	var name = $("#flowName").val();
	var fatherId = $("#father-period-id").val();
	var uuid = Math.uuid();
	 $("#flowName").val("");
	 var strVar = "";
	    strVar += "<div class=\"flow-container\" id=\"flow-"+uuid+"\">\n";
	    strVar += "	<div class=\"flow-body col-md-1\">\n";
	    strVar += "		<div class=\"flow-title\">\n";
	    strVar += name;
	    strVar += "		<\/div>\n";
	    strVar += "	<\/div>\n";
	    strVar += "	<div class=\"flow-body col-md-2\" style=\"padding:5px;text-align: left;\">\n";
	    strVar += "		<div id=\"resourceTree"+uuid+"\" class=\"tree-demo\">\n";
	    strVar += "		<\/div>\n";
	    strVar += "	<\/div>\n";
	    strVar += "	<div class=\"flow-body col-md-1\">\n";
	    strVar += "													时间:\n";
	    strVar += "		<input class=\"time\" id=\"timePicker"+uuid+"\" type=\"text\" value=\"00:00\" style=\"margin:6px;\"/>\n";
	    strVar += "	<\/div>\n";
	    strVar += "	<div class=\"flow-body col-md-5 no-blank\" style=\"padding:5px;\">\n";
	    strVar += "													文字操作:\n";
	    strVar += "		<input type=\"text\" class=\"text-op\" placeholder=\" 请输入文字操作描述\">\n";
	    strVar += "	<\/div>\n";
	    strVar += "	<div class=\"flow-body col-md-2 no-blank\" style=\"padding:5px;\">\n";
	    strVar += "													地图操作:\n";
	    strVar += "		<button class=\"map-op-btn sbtn-blue\" type=\"button\" onclick=\"editMapOp()\">编辑<\/button>\n";
	    strVar += "		<button class=\"map-op-btn sbtn-blue\" type=\"button\" onclick=\"clearMapOp()\">清除<\/button>\n";
	    strVar += "	<\/div>\n";
	    strVar += "	<div class=\"flow-del-btn\" onclick=\"confirmDelFlow(this);\" title=\"删除此流程\">\n";
	    strVar += "		×\n";
	    strVar += "	<\/div>\n";
	    strVar += "<\/div>\n";
	$("#"+fatherId).append(strVar);
	addTree("resourceTree"+uuid);
	$('#timePicker'+uuid).clockTimePicker({});
}

function delFlow(){
	var conId = $("#curFlowId").val();
	$("#"+conId).remove();
	$("#flowDelModal").modal('hide');
}


function delPeriod(){
	var conId = $("#curPeriodId").val();
	$("#"+conId).remove();
	$("#periodDelModal").modal('hide');
}

function editMapOp() {
	window.location.href = "/EMS-Prototype/pages/sandTable/drillEditor.jsp";
}

function clearMapOp() {
	alert("已清除地图操作！")
}
		
	




