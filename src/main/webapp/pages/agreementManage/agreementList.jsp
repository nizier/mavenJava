<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
	<meta charset="utf-8" />
	<title>${title }</title>
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
		<a href="#">合同协议管理</a>
	</ul> 
</div>
<div class="page-container">
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<div class="row">
			<!--     合同协议管理列表上方搜索框 -->
				<div  class="col-md-9"  id="content_1" style="width:100%; " >
					<div class="portlet box blue-hoki">
						<div class="portlet-title">
							<div class="caption"  id="title">
								<i class="fa fa-th-list"></i>合同协议管理
							</div>
						</div>
						<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
					            <div class="form-group" style="line-height: 50px;margin-top:-8px"> 合同协议名称：
					            	<input type="text" class="form-control" id="projectName" placeholder="请输入资料名称">
					            </div>
					            <div class="form-group" style="line-height: 50px;margin-top:-8px"> 部门：
					            	<input type="text" class="form-control" id="projectName" placeholder="请输入部门名称">
					            </div>
					            <div class="form-group" style="line-height: 50px;margin-top:-8px">合同乙方：
					            	<input type="text" class="form-control" id="projectName" placeholder="请输入合同乙方名称">
					            </div>
								<button type="button" id="searchBtn" onclick="window.location.reload()" class="sbtn sbtn-blue" style="margin-left: 15px;
									margin-top:-5px"><i class="fa fa-search"></i> 查询
								</button>
					            <button type="button" id="resetBtn" class="sbtn sbtn-blue" style="float: right ;
					            	margin-right: 15px;margin-top:3px ">删除
					            </button>
					            <button type="button" id="Invalid" class="sbtn sbtn-blue" style="float: right ;
					            	margin-right: 15px;margin-top:3px ">失效
					            </button>
					            <button type="button" id="inoperation" class="sbtn sbtn-blue" style="float: right ;
					            	margin-right: 15px;margin-top:3px ">生效
					            </button>
					            <button type="button" id="updates" class="sbtn sbtn-blue" style="float: right ;
					            	margin-right: 15px;margin-top:3px ">编辑
					            </button>
								<a href="<%=path %>/pages/agreementManage/addAgreement.jsp">
							    	<button type="button" id="updatess" class="sbtn sbtn-blue" style="float: right ;
							    		margin-right: 15px; margin-top:3px " >新增
							    	</button>
								</a>
							</form>
						</div>
										
						<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
						<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
					</div>
				</div>
							
			</div>
		</div>
	</div>

	<div class="modal fade" id="addHuman" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 
</div>
<script type="text/javascript" src="<%=path %>/businessJs/knowledge.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	var datas = [
{  "ids":"1","id":"001" , "name":"医疗资源合同","first":"机场医疗部","second":"协和医院","level":"医疗部","signTime":"2016-12-20","startTime":"2017-01-01","endTime":"2018-03-25","timeStatus":"0","status":"2","synopsis":"该合同用于医疗医院与机场医疗部关于医疗物资的协议。","Remarks":"该合同合同必须遵循合同的规范和要求。","ooo":"下载"},
{  "ids":"2","id":"002" , "name":"救援车辆合同","first":"机场救援部","second":"救援车行有限公司","level":"救援部","signTime":"2016-12-20","startTime":"2017-09-01","endTime":"2018-04-02","timeStatus":"0","status":"2","synopsis":"该合同...","Remarks":"本合同...","ooo":"下载"},
{  "ids":"3","id":"003" , "name":"消防资源合同","first":"机场消防部","second":"消防资源有限公司","level":"消防部","signTime":"2016-12-20","startTime":"2018-01-01","endTime":"2019-01-01","timeStatus":"0","status":"2","synopsis":"该合同...","Remarks":"本合同...","ooo":"下载"},
{  "ids":"4","id":"004" , "name":"医疗资源合同","first":"机场医疗部","second":"协和医院","level":"医疗部","signTime":"2016-12-20","startTime":"2018-01-01","endTime":"2019-01-01","timeStatus":"0","status":"2","synopsis":"该合同...","Remarks":"本合同...","ooo":"下载"},
{  "ids":"5","id":"005" , "name":"救援车辆合同","first":"机场救援部","second":"救援车行有限公司","level":"救援部","signTime":"2016-12-20","startTime":"2018-01-01","endTime":"2019-01-01","timeStatus":"0","status":"2","synopsis":"该合同...","Remarks":"本合同...","ooo":"下载"},
{  "ids":"6","id":"006" , "name":"消防资源合同","first":"机场消防部","second":"消防资源有限公司","level":"消防部","signTime":"2016-12-20","startTime":"2018-01-01","endTime":"2019-01-01","timeStatus":"0","status":"2","synopsis":"该合同...","Remarks":"本合同...","ooo":"下载"},
{  "ids":"7","id":"007" , "name":"救援车辆合同","first":"机场救援部","second":"救援车行有限公司","level":"救援部","signTime":"2016-12-20","startTime":"2018-01-01","endTime":"2019-01-01","timeStatus":"0","status":"1","synopsis":"该合同...","Remarks":"本合同...","ooo":"下载"},
{  "ids":"8","id":"008" , "name":"消防资源合同","first":"机场消防部","second":"消防资源有限公司","level":"消防部","signTime":"2016-12-20","startTime":"2018-01-01","endTime":"2019-01-01","timeStatus":"0","status":"1","synopsis":"该合同...","Remarks":"本合同...","ooo":"下载"},


];
	var gridColumns_2_1_1 = [
							{id:'ids', title:'序号', type:'number', columnClass:'text-center'},
							{id:'id', title:'合同协议编号', type:'string', columnClass:'text-center'},
	                     	{id:'name', title:'合同协议名称', type:'string', columnClass:'text-center',
								resolution : function(value, record,column, grid, dataNo, columnNo) {
									// 创建字符段  用于接受 数据
		                        	var content = '';
		            				// 将数据复制给字符串
		                            content += value;
		                            var clause = '';
		            				// 创建字符段 用于接受处理好的字符串
		                            var box = '';
		                        	var l=7;  
		                        	var p=document.getElementById('box');  
		                        	box=checkString(content,l,'...');
		                        	clause += "<span title="
		            				        + content + ">"+box+"</span>";
		                        	function checkString(s,l,tag){  
		                        	    if(s.length>l){  
		                        	        return s.substring(0,l)+tag;  
		                        	    } else{
		                        	    	return s;
		                        	    } 
		                        	}  
	                     		var content = '<a href="<%=path %>/pages/agreementManage/lookAgreement.jsp">'+clause+'</a>';
	            	          	return content;
	            	     	  }	},
	                     	{id:'first', title:'合同协议甲方', type:'string', columnClass:'text-center'},
	                     	{id:'second', title:'合同协议乙方', type:'string', columnClass:'text-center'},
	                     	{id:'level', title:'部门', type:'string', columnClass:'text-center'},
	                     	{id:'signTime', title:'签订日期', type:'string', columnClass:'text-center'},
	                     	{id:'startTime', title:'履行日期', type:'string', columnClass:'text-center'},
	                     	{id:'endTime',title:'截止日期', type:'string', columnClass:'text-center',
	                     		resolution : function(value, record,column, grid, dataNo, columnNo, cell) {
								var array = value.split("-");
								var myDate = new Date(array[0], array[1], array[2]);
								var currentDate = new Date();
								var currentDay = currentDate.getTime(),myDay = myDate.getTime();
								var total = (myDay - currentDay)/1000;
								var day = parseInt(total / (24*60*60));
	            				if(day < 60){
	            					record.timeStatus = 1;
	            					/* var content = '<span style="background-color : red; color : white;">'+record.endTime+'</span>'; */
	            				}else{
	            					record.timeStatus = 2;
	            	             	/* var content = '<span style="color: black;">'+record.endTime+'</span>'; */
	            	            }
	            				content = value;
	            	          	return content;
	            	     	  }	
	                     	},{
	            				id : 'timeStatus',
	            				title : '是否即将到期',
	            				type : 'string',
	            				hide : true, 
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
                  			        content += '  ';	
                  			         
	                  			    var array = record.endTime.split("-");
	   								var myDate = new Date(array[0], array[1], array[2]);
	   								var currentDate = new Date();
	   								var currentDay = currentDate.getTime(),myDay = myDate.getTime();
	   								var total = (myDay - currentDay)/1000;
	   								var day = parseInt(total / (24*60*60));
	   	            				if(day < 60){
	   	            				 	content += '<a onclick="xvyue();"><button  class="sbtn sbtn-blue">续约</button></a>'; 
	   	            				}
                  			    		return content;                     			
                  			    }		
 	                     	} 
	                     ];
	                     var gridOption_2_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '合同协议列表',
	                     	datas : datas,
	                     	check : true,
	                     	columns : gridColumns_2_1_1,
	                     	gridContainer : 'policehold_211',
	                     	toolbarContainer : 'police_211',
	                     	tools : 'refresh',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50],
	                     	onGridComplete:function(grid){
	                			for(var i = 0;i<grid.sortOriginalDatas.length;i++){
	                				var status = grid.sortOriginalDatas[i].timeStatus
	                				if(status=='1'){
	                					// 单元格背景变成红色
	                					$("#policehold_211").find("tbody").find("tr[datano='" + i + "']").find("td[columnno='8']").css({"background":"rgb(233, 104, 107)","color":"#fff"});
	                				}else if(status=='2'){
	                					// 单元格背景变成橙色
	                					/* $("#policehold_211").find("tbody").find("tr[datano='" + i + "']").find("td[columnno='8']").css({"background":"rgb(255,140,0)","color":"#fff"}); */
	                				} 
	                			}
	                			//$("#passRecordDataList").find("tbody").find("tr[datano='" + 0 + "']").css({"background":"rgb(233, 104, 107)","color":"#fff"});
	                		}
	                     };
 	                     var grid_2_1_1 = $.fn.dlshouwen.grid.init(gridOption_2_1_1);
 	                     
    	                     $(function(){
    	                     	grid_2_1_1.load();
    	                     });
    	                    /**
    	                     * 删除方法
    	                     */
    	                     $("#resetBtn").click(function(){
     	                 		//alert("111");
     	                 		var recordCount =grid_2_1_1.getCheckedRecords().length;
     	                 		 if (recordCount == 0) {
     	                 			 showMsg('请至少选择一条数据操作！',3);
								}else {
									// 获取所有复选框选中的数据
						    		 var records = grid_2_1_1.getCheckedRecords();
								     var ids = [];
							    	 var msg = "您确定要删除该数据吗？";
							    	 // 确定删除数据
							    	 if (confirm(msg)==true){
							    		 
									     for(var i = 0 ;i < records.length; i++ ){
									     // 所有要删除的id存入集合
							    		 ids.push(records[i].id);
								    	 	for (var j = 0; j < datas.length; j++) {
								    	 		// datas中的数据id与要输出的数据id比较
												if(datas[j].id === records[i].id){
													// 在datas数据中删除到选中删除id的数据
													datas.splice(j, 1);
													j -= 1;
												}
											}
	     	                 		 	}
									     // 整理datas数据序号
									     for (var i = 0; i < datas.length; i++) {
											datas[i].ids = i+1;
										}
									     // 刷新列表
								    	 grid_2_1_1.load();
							    	 }else{
							    	 	return false;
							    	 }
								}
     	                 	})
     	                 	$("#updates").click(function(){
     	                 		var recordCounts =grid_2_1_1.getCheckedRecords().length;
     	                 		 if (recordCounts != 1) {
     	                 			 showMsg('请选择一条数据操作！',3);
     	                 		 } else {
     	                 			window.location.href = "<%=path %>/pages/agreementManage/updateAgreement.jsp";
     	                 			<%-- <a href="<%=path %>/pages/pre-plancultivate/updateCultivate.jsp"><a/> --%>
     	                 		 }
     	                 	})
 	                 	 /**
						  *	合同协议失效方法
						  */
						  $("#Invalid").click(function(){
								 var recordCount = grid_2_1_1.getCheckedRecords().length;
								 
								 if (recordCount == 0) {
									 showMsg('请至少选择一条数据操作！',3);
								 } else {
								     var records = grid_2_1_1.getCheckedRecords();
								     var ids = [];
								     for(var i = 0 ;i < records.length; i++ ){
								    	 ids.push(records[i].id);
								    	 for (var j = 0; j < datas.length; j++) {
											if(datas[j].id === records[i].id){
												datas[j].status = 1;
											}
										}
								     }
								     grid_2_1_1.load();
								 }
							})
						 /**
						  *	合同协议生效方法
						  */
						  $("#inoperation").click(function(){
								 var recordCount = grid_2_1_1.getCheckedRecords().length;
								 
								 if (recordCount == 0) {
									 showMsg('请至少选择一条数据操作！',3);
								 } else {
								     var records = grid_2_1_1.getCheckedRecords();
								     var ids = [];
								     for(var i = 0 ;i < records.length; i++ ){
								    	 ids.push(records[i].id);
								    	 for (var j = 0; j < datas.length; j++) {
											if(datas[j].id === records[i].id){
												datas[j].status = 2;
											}
										}
								     }
								     grid_2_1_1.load();
								 }
							})
 });
  function fn(){
	  confirm("是否删除？");
  }
  function xvyue(){
	  window.location.href='<%=path %>/pages/agreementManage/renewAgreement.jsp';
  }
</script>		
		
</body>
</html>