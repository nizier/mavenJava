<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>${title }</title>
<style>
	
</style>
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
			<a href="#">资源管理</a>
		</li>
	</ul> 
</div>
<div class="page-container">
	<div class="page-content-wrapper" >
		<div class="page-content">
			<div class="row">
    			<div class="col-md-3">
				   <div class="portlet blue-hoki box" >
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-cogs"></i>资源管理								
							</div>
						</div>
						<div class="portlet-body">
							<div id="dptree" class="tree-demo"></div>
						</div>
					</div>
				</div> 
				
				<div class="col-md-9"  id="content_1">
					<div class="portlet box blue-hoki">
						<div class="portlet-title">
							<div class="caption"  id="title">
								<i class="fa fa-th-list"></i>应急救援资源信息
							</div>
						</div>
						<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post" style="width:100%;">	
						        <div class="form-group" style="line-height: 50px;margin-top:-8px">
						    		所属部门：<input type="text" class="form-control" id="projectName" placeholder="请输入部门名称">
								</div>
								<div class="form-group" style="line-height: 50px;margin-top:-8px; margin-left: 2%;">
						    		负责人：<input type="text" class="form-control" id="projectName" placeholder="请输入负责人姓名">
								</div>
								<button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:1px">
									<i class="fa fa-search"></i>查询
								</button>
								<!-- <button type="button" id="addBtn"  class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		新增资源
				            	</button> -->
				            	 
								<button  type="button" id="resetBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		删除
				            	</button>

				            	<button type="button" id="updates"   class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:5px ">
           							编辑</button>
				            	 <a href="<%=path %>/pages/resourceManage/addResourceList.jsp"><button type="button" id="editBtn" onclick="addEvent()" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		新增
				            	</button></a>
							</form>
						</div>
						
						<div id="eventListContainer" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
						<div id="eventPageContainer" class="dlshouwen-grid-toolbar-container"></div>
					</div>
				</div>					
			</div>
		</div>
	</div>
	<div class="modal fade" tabindex="-1" role="dialog" id="colorConfig" aria-labelledby="myModalLabel">
		    <div class="modal-dialog" role="document" style="width:350px;">
		        <div class="modal-content">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                    <span aria-hidden="true">&times;</span>
		                </button>
		                <h4 class="modal-title">事件状态颜色配置</h4>
			        </div>
			        <div class="modal-body" id="sodbGlobalModalBody" style="height: 150px;width: 350px;">
			        	<div class="form-body">
				        	<div class="form-group row">
								<label class="col-md-8 control-label">准备阶段:</label>
								<div class="col-md-4">
									<input type="color" value="#FF0000"/>
								</div>
							</div>
							<div class="col-md-12" style="height:20px;"></div>
							<label class="col-md-8 control-label">处置阶段:</label>
							<div class="col-md-4">
									<input type="color" value="#1E90FF"/>
							</div>
							<div class="col-md-12" style="height:20px;"></div>
							<label class="col-md-8 control-label">已处理:</label>
							<div class="col-md-4">
									<input type="color" value="#2D9900"/>
							</div>
						</div>
			        </div>
			        <div class="modal-footer">
			            <button type="button" onclick="hideColorConfig();" id="hideGlobalModalBtn" class="btn btn-primary">保存</button>
			            <button type="button" id="hideGlobalModalBtn" class="btn btn-primary">恢复默认</button>
			            <button type="button" onclick="hideColorConfig();" id="hideGlobalModalBtn" class="btn btn-default">取消</button>
			        </div>
		        </div>
		    </div>
		</div>
</div>

<script type="text/javascript" src="<%=path %>/js/resourceManage/dutyPeopleJstree.js"></script>
<script type="text/javascript">
$(function(){
	var num = 12;
	var datas = [
		{
			"xvhao": "1",
			"id": "A001",
			"name": "救护车",
			"category":"张三", 
			"type": "进口丰田大海狮",
			"ids":"2017/2/1",
			"warehouse":"1号仓库",
			"address":"西北角",
			"date":"2018-03-25",
			"timeStatus":"0",
			"number":"3",
			"maintain": "2018/03/03",
			"bm":"救援部",
			"status":"可用"
		},
		{
			"xvhao": "2",
			"id": "A002",
			"name": "救护车",
			"category":"张三", 
			"type": "红立方急救箱",
			"ids":"2017/3/1",
			"warehouse":"2号仓库",
			"address":"西南角",
			"date":"2018-04-02",
			"timeStatus":"0",
			"number":"4",
			"maintain": "2018/03/03",
			"bm":"救援部",
			"status":"可用"
		},
		{
			"xvhao": "3",
			"id": "A003",
			"name": "救护车",
			"category":"张三",
			"type": "救护车",
			"ids":"2017/4/1",
			"warehouse":"1号仓库",
			"address":"东北角",
			"date":"2018/4/1",
			"timeStatus":"0",
			"number":"3",
			"maintain": "2018/03/03",
			"bm":"救援部",
			"status":"可用"
		},
		{
			"xvhao": "4",
			"id": "A004",
			"name": "救护车",
			"category":"李四",
			"type": "SN室内消火栓 ",
			"ids":"2017/5/1",
			"warehouse":"4号仓库",
			"address":"东北角",
			"date":"2018/5/1",
			"timeStatus":"0",
			"number":"2",
			"maintain": "2018/03/03",
			"bm":"救援部",
			"status":"不可用"
			
		},
	];
	var gridColumns_2_1_1 = [
		{id:'xvhao', title:'序号', type:'number', columnClass:'text-center'},
		{id:'id', title:'资源编号', type:'number', columnClass:'text-center'},
		{id:'name', title:'资源名称', type:'string', columnClass:'text-center',
     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = ''; 	                     			                     			
		        content += '<a href="<%=path %>/pages/resourceManage/lookResourceList.jsp">'+value+'</a>'; 
		        return content;                     			
		    }},
	 	{id:'category', title:'负责人', type:'string', columnClass:'text-center'}, 
		{id:'type', title:'型号', type:'string', columnClass:'text-center'},
		{id:'warehouse', title:'仓库名称', type:'string', columnClass:'text-center'},
		{id:'address', title:'存放地点', type:'string', columnClass:'text-center'},
		{id:'date', title:'截止日期', type:'string', columnClass:'text-center',
	    	resolution : function(value, record,column, grid, dataNo, columnNo) {
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
		{id:'number', title:'数量('+num+')', type:'number', columnClass:'text-center'},
		{id:'maintain', title:'维保时间', type:'string', columnClass:'text-center'},
		{id:'bm', title:'所属部门', type:'string', columnClass:'text-center'},
		{id:'status', title:'状态', type:'string', columnClass:'text-center'}
	];
	var eventOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '用户列表',
		datas : datas,
		check : true,
		columns : gridColumns_2_1_1,
		gridContainer : 'eventListContainer',
		toolbarContainer : 'eventPageContainer',
		tools : '',
		check: true,
		pageSize : 10,
		pageSizeLimit : [10, 20, 50],
     	onGridComplete:function(grid){
			for(var i = 0;i<grid.sortOriginalDatas.length;i++){
				var status = grid.sortOriginalDatas[i].timeStatus
				if(status=='1'){
					// 单元格背景变成红色
					$("#eventListContainer").find("tbody").find("tr[datano='" + i + "']").find("td[columnno='7']").css({"background":"rgb(233, 104, 107)","color":"#fff"});
				}else if(status=='2'){
					// 单元格背景变成橙色
					/* $("#policehold_211").find("tbody").find("tr[datano='" + i + "']").find("td[columnno='8']").css({"background":"rgb(255,140,0)","color":"#fff"}); */
				} 
			}
			//$("#passRecordDataList").find("tbody").find("tr[datano='" + 0 + "']").css({"background":"rgb(233, 104, 107)","color":"#fff"});
		}
	};
    var grid_2_1_1 = $.fn.dlshouwen.grid.init(eventOption);
	$(function(){
		grid_2_1_1.load();
	});
	 $("#resetBtn").click(function(){
   		//alert("111");
   		var recordCount =grid_2_1_1.getCheckedRecords().length;
   		 if (recordCount == 0) {
   			 showMsg('请至少选择一条数据操作！',3);
   		 } else {
   			alert("删除成功");
   			 
   		 }
   	})
   	$("#updates").click(function(){
   		var recordCounts =grid_2_1_1.getCheckedRecords().length;
   		 if (recordCounts != 1) {
   			 showMsg('请选择一条数据操作！',3);
   		 } else {
   			window.location.href = "<%=path %>/pages/resourceManage/updateResourceList.jsp.jsp";
   		 }
   	})
});
 


function addEvent() {
	window.location.href = "/EMS-Prototype/pages/emergencyIntegrate/emergencyEventManage/addNewEvent.jsp";
}



</script>		
</body>
</html>