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
			<a href="#">通讯录管理</a>
		</li>
	</ul> 
</div>
<div class="page-container">
	<div class="page-content-wrapper">
		<div class="page-content">
			<div class="row">
<!--     			<div class="col-md-3">
				   <div class="portlet blue-hoki box" >
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>预案管理								
								</div>
							</div>
							<div class="portlet-body">
								<div id="dptree" class="tree-demo"></div>
							</div>
					</div>
				</div> -->
				
				<div class="col-md-12"  id="content_1" >
					<div class="portlet box blue-hoki">
						<div class="portlet-title">
							<div class="caption"  id="title">
								<i class="fa fa-th-list"></i>应急救援事件信息
							</div>
						</div>
						<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
						        <div class="form-group" style="line-height: 50px;margin-top:-8px">
						    		姓名：<input type="text" class="form-control" id="projectName" placeholder="请输入联系人姓名">
								</div>
								<button type="submit" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px">
									<i class="fa fa-search"></i>查询
								</button>
								
								<button type="button" id="delBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		删除
				            	</button>
				            	
				            	<!-- <button type="button" id="editBtn" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		编辑
				            	</button> -->
				            	
				            	<button type="button" id="addBtn" onclick="addEvent()" class="sbtn sbtn-blue" style="margin-right: 15px;margin-top:5px;float:right;">
				            		添加联系人
				            	</button>
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
			            <button type="button" onclick="hideColorConfig();" id="hideGlobalModalBtn" class="btn btn-default">取消</button>
			        </div>
		        </div>
		    </div>
		</div>
</div>
<script type="text/javascript" src="<%=path %>/businessJs/dutyPeopleJstree.js"></script>
<script type="text/javascript">
$(function(){
	var datas = [
		{
			"id": "A001",
			"name": "旺达",
			"phonenum":"17905738349",
			"seatnum":"0476-998866",
			"address": "双河大街与顺兴路交叉口南150米",
			"IpTel": "179.57.34.59",
			"dept":"消防部门",
			"email": "tgfc22@163.com",
			"detail": "无"
		},  {
			"id": "A002",
			"name": "刘一军",
			"phonenum":"17905738349",
			"seatnum":"0476-998877",
			"address": "双河大街与顺兴路交叉口南150米",
			"IpTel": "179.57.34.59",
			"dept":"机务工程部",
			"position":"副部长",
			"email": "tgfc22@163.com",
			"detail": "无"
		},  {
			"id": "A003",
			"name": "刘涛",
			"phonenum":"17905738349",
			"seatnum":"0476-008866",
			"address": "双河大街与顺兴路交叉口南150米",
			"IpTel": "179.57.34.59",
			"dept":"机场保障部",
			"position":"部长",
			"email": "tgfc22@163.com",
			"detail": "无"
		}, {
			"id": "A004",
			"name": "王伟方",
			"phonenum":"17905738349",
			"seatnum":"0476-995566",
			"address": "双河大街与顺兴路交叉口南150米",
			"IpTel": "179.57.34.59",
			"dept":"贵宾服务部",
			"position":"部长",
			"email": "tgfc22@163.com",
			"detail": "无"
		}, {
			"id": "A005",
			"name": "翟山",
			"phonenum":"17905738349",
			"seatnum":"0476-992266",
			"address": "双河大街与顺兴路交叉口南150米",
			"IpTel": "179.57.34.59",
			"dept":"安全检查总站",
			"position":"站长",
			"email": "tgfc22@163.com",
			"detail": "无"
		}, {
			"id": "A006",
			"name": "周德",
			"phonenum":"17905738349",
			"seatnum":"0476-998866",
			"address": "双河大街与顺兴路交叉口南150米",
			"IpTel": "179.57.34.59",
			"dept":"急救中心",
			"position":"职员",
			"email": "tgfc22@163.com",
			"detail": "无"
		}, {
			"id": "A007",
			"name": "旺达",
			"phonenum":"17905738349",
			"seatnum":"0476-118866",
			"address": "双河大街与顺兴路交叉口南150米",
			"IpTel": "179.57.34.59",
			"dept":"消防部门",
			"position":"",
			"email": "tgfc22@163.com",
			"detail": "无"
		}
	];
	var gridColumns_2_1_1 = [
		{id:'id', title:'序号', type:'string', columnClass:'text-center',resolution : function(value, record,
                column, grid, dataNo, columnNo) {
				return dataNo+1;
			},
		},
		{id:'id', title:'编号', type:'number', columnClass:'text-center'},
		{id:'name', title:'姓名', type:'string', columnClass:'text-center'},
		{id:'phonenum', title:'手机号码', type:'string', columnClass:'text-center'},
		{id:'seatnum', title:'座机号码', type:'string', columnClass:'text-center'},
		/* {id:'IpTel', title:'互联网电话(IP)', type:'string', columnClass:'text-center'}, */
		/* {id:'address', title:'住址', type:'string', columnClass:'text-center'}, */
		{id:'dept', title:'部门', type:'string', columnClass:'text-center'},
		{id:'position', title:'职位', type:'string', columnClass:'text-center'},
		{id:'email', title:'电子邮件', type:'string', columnClass:'text-center'},
		/* {id:'detail', title:'备注', type:'string', columnClass:'text-center'}, */
	    {id:'operation', title:'操作', type:'string', columnClass:'text-center',
	     	resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = ''; 	                     			
		        content += '<button class="sbtn sbtn-blue" onclick = "dynamicManage()">发送即时消息</button>'; 	                     			
		        content += '  ';	                     			
		        return content;                     			
	      	}		
	    }
	];
	var eventOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '用户列表',
		datas : datas,
		columns : gridColumns_2_1_1,
		gridContainer : 'eventListContainer',
		toolbarContainer : 'eventPageContainer',
		tools : '',
		pageSize : 10,
		pageSizeLimit : [10, 20, 50],
		check: true
		
	};
    var grid_2_1_1 = $.fn.dlshouwen.grid.init(eventOption);
	$(function(){
		grid_2_1_1.load();
	});
	
	$("#delBtn").click(function() {
		if(grid_2_1_1.getCheckedRecords().length==0){
			alert("请至少选择一条记录!");
		}else{
			confirm("是否删除？");
		}
	})
	
	$("#editBtn").click(function() {
		if(grid_2_1_1.getCheckedRecords().length==0){
			alert("请至少选择一条记录!");
		}else if(grid_2_1_1.getCheckedRecords().length==1){
			window.location.href="editContact.jsp";
		}else{
			alert("只能选择一条记录!");
		}
	})
});

function checkDelete(){
	if(grid_2_1_1.getCheckedRecords().lenght==0){
		alert("123");
	}
}

function dynamicManage(){
	window.location.href = "#";
}

function goBack() {
	window.location.href = "/EMS-Prototype/pages/emergencyIntegrate/emergencyEventManage/emergencyEventManage.jsp";
}

function addEvent() {
	window.location.href = "/EMS-Prototype/pages/emergencyIntegrate/emergencyEventManage/addContact2.jsp";
}

function contactMange() {
	window.location.href = "/EMS-Prototype/pages/emergencyIntegrate/emergencyEventManage/contactManage.jsp";
}

function hideColorConfig() {
	 $('#colorConfig').modal('hide');
}
</script>		
</body>
</html>