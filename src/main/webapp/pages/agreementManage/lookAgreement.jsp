<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>合同协议查看</title>
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
        <li><a href="#">合同协议查看</a></li>
    </ul>
</div>
<form name="moduleForm" class="form-horizontal" id="moduleForm" action="<c:url value='/module/update' />" method="post">
    <div class="row" style="margin-top: 20px;">
    	<div class="form-group">
            <span class="col-sm-4 control-label">合同协议编号</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="001" placeholder="合同协议编号" readonly="readonly"  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议名称</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="医疗资源合同" placeholder="合同协议名称" readonly="readonly"  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议甲方</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="机场医疗部" placeholder="合同协议甲方" readonly="readonly"  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议乙方</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="协和医院" placeholder="合同协议乙方" readonly="readonly"  aria-describedby="sizing-addon2">
            </div>
        </div>
         <div class="form-group">
            <span class="col-sm-4 control-label">部门</span>
            <div class="col-md-4">
            	<input type="text" class="form-control" id="" name="" value="医疗部" placeholder="合同协议乙方" readonly="readonly"  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议签订时间</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="2016-12-20" placeholder="合同协议签订时间" readonly="readonly"  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议履行时间</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="2017-01-01" placeholder="合同协议履行时间" readonly="readonly"  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议截止时间</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="2018-03-25" placeholder="合同协议截止时间" readonly="readonly"  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">合同协议要求</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="合同双方必须依照合同，保质保量完成合同中的所有要求。" placeholder="合同协议要求" readonly="readonly"  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">简介</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="合同双方必须依照合同，保质保量完成合同中的所有要求。" placeholder="简介" readonly="readonly"  aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
            <span class="col-sm-4 control-label">备注</span>
            <div class="col-md-4">
                <input type="text" class="form-control" id="" name="" value="该合同用于医疗医院与机场医疗部关于医疗物资的协议。" placeholder="备注" readonly="readonly"   aria-describedby="sizing-addon2">
            </div>
        </div>
        <div class="form-group">
			 <span class="col-sm-4 control-label">附件</span>
			<input id="lefile" type="file" style="display:none">
			<div class="col-md-4">
				<input id="enclosure" class="form-control" type="text" placeholder="附件" value="医疗资源合同" readonly="readonly">
			</div>
			<div class="col-md-4">
				<div class="sbtn sbtn-blue"  >附件下载</div>
			</div>
		</div>
		
    </div>
    <div class="row" style="margin-top: 20px; margin-bottom: 20px;">
        <div class="col-md-11" style="text-align:center;">
        	<button class="sbtn sbtn-blue" type="button" id="backBtn" style="margin-left:45px;"><i class='fa fa-reply'></i>&nbsp;返回</button>
            <button class="sbtn sbtn-default" type="button" id="History" "><i class='fa fa-save'></i>&nbsp;历史记录查看</button>
        </div>
    </div>
</form>
<div class="page-container" style="display: none" id="HistoryList">
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
	<div  class="col-md-1" ></div>
    <div  class="col-md-10"  id="content_1"  >
		<div class="portlet box blue-hoki">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>历史信息查看
				</div>
			</div>
			<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
			<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
		</div>
	</div>
	<div class="col-md-1" ></div>
</div>
</div>
</div>
</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	
	var datas = [
{  "ids":"1","id":"001" , "name":"医疗资源合同","first":"机场医疗部","second":"协和医院","level":"医疗部","signTime":"2017-12-20","startTime":"2018-01-02","endTime":"2018-03-25","status":"2","synopsis":"该合同用于医疗医院与机场医疗部关于医疗物资的协议。","Remarks":"该合同必须遵循合同的规范和要求。","ooo":"下载"},
{  "ids":"2","id":"002" , "name":"医疗资源合同","first":"机场救援部","second":"协和医院","level":"医疗部","signTime":"2017-05-20","startTime":"2017-06-01","endTime":"2018-01-01","status":"1","synopsis":"该合同...","Remarks":"本合同...","ooo":"下载"},
{  "ids":"3","id":"003" , "name":"医疗资源合同","first":"机场消防部","second":"协和医院","level":"医疗部","signTime":"2016-12-20","startTime":"2017-01-01","endTime":"2017-05-31","status":"1","synopsis":"该合同...","Remarks":"本合同...","ooo":"下载"},



];
	var gridColumns_2_1_1 = [
							{id:'ids', title:'序号', type:'number', columnClass:'text-center'},
							{id:'id', title:'合同协议编号', type:'string', columnClass:'text-center'},
	                     	{id:'name', title:'合同协议名称', type:'string', columnClass:'text-center'},
	                     	{id:'first', title:'合同协议甲方', type:'string', columnClass:'text-center'},
	                     	{id:'second', title:'合同协议乙方', type:'string', columnClass:'text-center'},
	                     	{id:'level', title:'部门', type:'string', columnClass:'text-center'},
	                     	{id:'signTime', title:'签订日期', type:'string', columnClass:'text-center'},
	                     	{id:'startTime', title:'履行日期', type:'string', columnClass:'text-center'},
	                     	{id:'endTime',title:'截止日期', type:'string', columnClass:'text-center'},
	                     	{id:'Remarks', title:'备注', type:'string', columnClass:'text-center',
	                     		resolution : function(value, record,column, grid, dataNo, columnNo) {
								// 创建字符段  用于接受 数据
	                        	var content = '';
	            				// 将数据复制给字符串
	                            content += value;
	                            var clause = '';
	            				// 创建字符段 用于接受处理好的字符串
	                            var box = '';
	                        	var j=5;  
	                        	box=checkString(content,j,'...');
	                        	function checkString(s,j,tag){  
	                        	    if(s.length>j){  
	                        	        return s.substring(0,j)+tag;  
	                        	    } else{
	                        	    	return s;
	                        	    } 
	                        	}  
	                        	clause += "<span title="
            				        + content + ">"+box+"</span>";
            	          		return clause;
            	     	  		}	
	                     	},
	                     	{id:'status',title:'状态', type:'string', columnClass:'text-center',
	                     		resolution : function(value, record,column, grid, dataNo, columnNo) {
	            				if(value == '1'){
	            					var content = '<span style="color : red;">'+'未生效'+'</span>';
	            				}else{
	            	             	var content = '<span style="color: black;">'+'已生效'+'</span>';
	            	            }
	            	          	return content;
	            	     	  }	
	                     	}, 
	                     	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center', 
	                     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
                  			        var content = ''; 	                     			
                  			        content += '<a href="#"><button class="sbtn sbtn sbtn-blue">下载</button></a>'; 	                     			
                  			    		return content;                     			
                  			    }		
 	                     	}
	                     ];
	                     var gridOption_2_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '合同协议列表',
	                     	datas : datas,
	                     	check : false,
	                     	columns : gridColumns_2_1_1,
	                     	gridContainer : 'policehold_211',
	                     	toolbarContainer : 'police_211',
	                     	tools : '',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_2_1_1 = $.fn.dlshouwen.grid.init(gridOption_2_1_1);
 	                     
    	                     $(function(){
    	                     	grid_2_1_1.load();
    	                     });
 });
</script>	
<script type="text/javascript">
var falg = true;
$("#backBtn").click(function(){
    window.history.go(-1);
})
$("#History").click(function(){
	if (falg) {
		 $("#HistoryList").css('display','block');
		 /* $("#History").css('display','block'); */
		 falg = false;
	}else {
		 $("#HistoryList").css('display','none');
		 falg = true;
	}
   
})
</script>
</html>
