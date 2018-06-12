/* 新增一行 */
$("#addGroup").click(function(){
	var s = $("#groupId").val();
	var i = parseInt(s);
	var n=1;
	if(i==1){
		$("#addG").append('<div class="form-group clieaXu" id="divlia_'+i+'"    style="margin-top: 2.5%;border-bottom:1px dashed #000; "contenteditable="true"> </div>');
	}else{
		$("#addG").append('<div class="form-group clieaXu" id="divlia_'+i+'"  style="margin-top: 2.5%;border-bottom:1px dashed #000; "  contenteditable="true"> </div>');
	}
	n=i+1;
	$("#groupId").val(n);
})
/*取消一行*/
$("#cancelGroup").click(function(){
	$("#addG div:last").remove();
})
/* 插入文字 */
$("#addtext").click(function(){
	var s = $("#groupId").val();
	var i = parseInt(s);
	if(i==1){
		alert("请先添加一行//正式版本会是以模态框形式");
	}else{
		$("#interposition").modal();
	}
})
/* 插入表格 */
$("#addTable").click(function(){
	var i = $("#groupId").val();
	var k=i-1;//当新增一行之后$("#groupId")val()值为“2”，所以要进行i-1的操作;
	if(i==1){//当i=1的时候说明此时没有新增一行;
		alert("请先添加一行//正式版本会是以模态框形式");
	}else{
			var flag = $("#tableId").val();
			var j = parseInt(flag);
			var trNum = $("#table-row").val();//获取填入的行数;
			var tdNum = $("#table-col").val();//获取填入的列数;
			var trNumInt = parseInt(trNum);//将获得填入的行数转化为int类型;
			var tdNumInt = parseInt(tdNum);//将获得填入的列数转化为int类型;
			var html = '<table id="table_'+k+'"  class="table table-bordered">';
			for(var z=0;z<trNumInt;z++){//循环添加trNum中所获取的行数;
				html+='<tr>';
				for(var x=0;x<tdNumInt;x++){//循环添加tdNum中所获取的列数;
					html+='<td></td>'
				}
				html+='</tr>';
			}
			html+='</table>';
			$("#table-row").val("");
			$("#table-col").val("");
			$('#divlia_'+k).append(html);
			var sum = j+1;
			$("#tableId").val(sum);
	}
})
/* 插入文字后生成的<span>标签 */
$("#okCeshi").click(function(){
	var s = $("#groupId").val();
	var i = parseInt(s);//转换成int类型
	var j=i-1;
	var flag = $("#okText").val();
	$('#divlia_'+j).append('<span id="span_'+j+'"  style="line-height:22px">'+flag+'</span>');
})
/* 根据选择的文字修改字体大小 */
function getSel(){
	/*  alert(document.queryCommandValue('FontSize'));  */
	/* var t=window.getSelection?window.getSelection():(document.getSelection?document.getSelection():(document.selection?document.selection.createRange().text:"")) */
	var fontSize = $('#fontSize option:selected').val();//获取下拉框中的内容;
	var effect="fontSize";
	var fontElements = document.getElementsByTagName("font");
	if(fontSize=="五号"){
		document.execCommand("FontSize",false,"5");
	}else if(fontSize =="小二"){
		document.execCommand("FontSize",false,"2");
	}else if(fontSize =="四号"){
		document.execCommand("FontSize",false,"4");
	}
	for (var i = 0, len = fontElements.length; i < len; ++i) {//将document.execCommand()方法中对应的字号转换为css样式中的字号;
        if (fontElements[i].size == "5") {
            fontElements[i].removeAttribute("size");
            fontElements[i].style.fontSize = "14px";
        }else if(fontElements[i].size == "2"){
        	fontElements[i].removeAttribute("size");
            fontElements[i].style.fontSize = "24px";
        }else if(fontElements[i].size == "4"){
        	fontElements[i].removeAttribute("size");
            fontElements[i].style.fontSize = "18.6px";
        }
    }
	$('#fontSize').val("---请选择---");
}
/*根据选择的文字修改字体样式*/
function getFontFamily(){
	var fontFamliy = $('#fontFamily option:selected').val();//获取下拉框中的内容;
	if(fontFamliy == "1"){
		document.execCommand("FontName","false","Microsoft YaHei");
	}else if(fontFamliy == "2"){
		document.execCommand("FontName","false","SimHei");
	}
	$('#fontFamily').val("---请选择---");
}
/*根据选择的文字修改粗细*/
function textBold(){
	document.execCommand("Bold");
}
/*根据选择的文字选择是否斜体*/
function textItalic(){
	document.execCommand("Italic");
}
/*根据选择的文字选择是否加下划线*/
function textXie(){
	document.execCommand("underline");
}
/* 增加input框 */
$("#addInput").click(function(){
	var inputArea = $("#inputArea").val();//获取下拉框中的value值;
	var s = $("#groupId").val();//获取隐藏域的value值;
	var flag = $("#inputId").val();//获取隐藏域的value值;
	var j=parseInt(flag);//转换成int类型;
	var i = parseInt(s);//转换成int类型;
	var k=i-1;//当新增一行之后$("#groupId")val()值为“2”，所以要进行i-1的操作;
	if(i==1){
		alert("请先添加一行//正式版本会是以模态框形式");
	}else if($('#span_'+k).length>0 && inputArea == "1"){//判断如果获取下拉框的值等于“1”并且有<span>标签的情况下插入到<span>标签里
		$('#span_'+k).append('<input id="input_'+j+'"  type="text" style="border:none;border-bottom:1px solid #000000;">');
	}else if($('#divlia_'+k).length>0 && inputArea == "1"){//判断如果获取下拉框的值等于“1”并且有<div>标签的情况下插入到<div>标签里
		$('#divlia_'+k).append('<input id="input_'+j+'"  type="text" style="border:none;border-bottom:1px solid #000000;">');
	}else if(inputArea == "2" && $('#table_'+k).length>0 ){//判断如果获取下拉框的值等于“1”并且有<talbe>标签的情况下插入到<td>标签里
		$('td').append('<input id="input_'+j+'"  type="text" style="border:none;border-bottom:1px solid #000000;">');
	}
	var sum = j+1;
	$("#inputId").val(sum);
})
/*插入勾选框*/
$("#addCheckBox").click(function(){
	var checkArea = $("#checkArea").val();//获取下拉框中的value值
	var s = $("#groupId").val();//获取隐藏域的value值;
	var i = parseInt(s);//转换成int类型;
	var k=i-1;//当新增一行之后$("#groupId")val()值为“2”，所以要进行i-1的操作;
	if(i==1){
		alert("请先添加一行//正式版本会是以模态框形式");
	}else if($('#span_'+k).length>0 && checkArea == "1"){//判断如果获取下拉框的值等于“1”并且有<span>标签的情况下插入到<span>标签里
		$('#span_'+k).append('<input type="checkBox">');
	}else if($('input_'+k).length>0 && checkArea == "1"){//判断如果获取下拉框的值等于“1”并且有<input>标签的情况下插入到<input>标签里
		$('input_'+k).append('<input type="checkBox">');
	}else if($('#divlia_'+k).length>0 && checkArea == "1"){//判断如果获取下拉框的值等于“1”并且有<div>标签的情况下插入到<div>标签里
		$('#divlia_'+k).append('<input type="checkBox">');
	}else if(checkArea == "2" && $('#table_'+k).length>0 ){//判断如果获取下拉框的值等于“1”并且有<talbe>标签的情况下插入到<td>标签里
		$('td').append('<input type="checkBox">');
	}
})
/*清空虚线*/
$("#clearCss").click(function(){
	$(".clieaXu").css("border-bottom","0px");
})
/*撤销*/
$("#undo").click(function(){
	document.execCommand("Undo");
})
/*重做*/
$("#refresh").click(function(){
	location.reload();
})
/* 禁用回车键 */
$(document).keypress(function(event){  
    var keycode = (event.keyCode ? event.keyCode : event.which);  //三目运算定义keycode;
    if(keycode == '13'){  
    	keycod=0;
    	return false;    
    }  
});
