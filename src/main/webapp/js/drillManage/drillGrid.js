$(function(){
	var datas = [
		{
			"id": "A001",
			"name": "消防应急演练1",
			"type":"综合演练",
			"form":"桌面演练",
			"subject":"模拟进港航空器空中发动机故障，使用18号跑道迫降，飞机冲出跑道，受损起火。",
			"place":"会议室",
			"lifeCycle":"一年2次",
            "startTime":"2017-1-20",
            "endTime":"2018-3-20",
            "releaseStatus":"未发布",
            "status":"未演练",
			"participant": "应急救援总指挥 值班员 值班领导"
		},
		{
			"id": "A002",
			"name": "消防应急演练2",
			"type":"单体演练",
			"form":"现场演练",
			"subject":"模拟进港航空器空中发动机故障，使用18号跑道迫降，飞机冲出跑道，受损起火。",
			"place":"会议室",
			"lifeCycle":"一年2次",
			"startTime":"2018-1-20",
            "endTime":"2019-4-25",
            "releaseStatus":"未发布",
            "status":"未演练",
			"participant": "应急救援总指挥 值班员 值班领导"
		},
		{
			"id": "A003",
			"name": "消防应急演练3",
			"type":"单体演练",
			"form":"桌面演练",
			"subject":"模拟进港航空器空中发动机故障，使用18号跑道迫降，飞机冲出跑道，受损起火。",
			"place":"会议室",
			"lifeCycle":"一年2次",
			"startTime":"2017-1-25",
            "endTime":"2018-2-25",
            "releaseStatus":"未发布",
            "status":"未演练",
			"participant": "应急救援总指挥 值班员 值班领导"
		},
		{
			"id": "A001",
			"name": "消防应急演练4",
			"type":"单体演练",
			"form":"桌面演练",
			"subject":"模拟进港航空器空中发动机故障，使用18号跑道迫降，飞机冲出跑道，受损起火。",
			"place":"会议室",
			"lifeCycle":"一年2次",
			"startTime":"2018-1-20",
            "endTime":"2019-4-25",
            "releaseStatus":"已发布",
            "status":"未演练",
			"participant": "应急救援总指挥 值班员 值班领导"
		}
	];
	var gridColumns_2_1_1 = [
		{id:'id', title:'序号', type:'string', columnClass:'text-center',resolution : function(value, record,
                column, grid, dataNo, columnNo) {
				return dataNo+1;
			},
		},
		{id:'id', title:'编号', type:'string', columnClass:'text-center'},
		{id:'name', title:'演练名称', type:'string', columnClass:'text-center',
			resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = '';
		        content += "<a onclick='checkDrill()'>"+value+"</a>"
		        return content;                     			
	      	}		
		},
		{id:'type', title:'演练类型', type:'string', columnClass:'text-center'},
		{id:'form', title:'演练形式', type:'string', columnClass:'text-center'},
		{id:'place', title:'演练地点', type:'string', columnClass:'text-center'},
		{id:'lifeCycle', title:'演练周期', type:'string', columnClass:'text-center'},
		{id:'startTime', title:'开始时间', type:'string', columnClass:'text-center'},
		{id:'endTime', title:'结束时间', type:'date', columnClass:'text-center',
			resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = '';
		        if(value == "2018-3-20"){
		        	 content += '<span style="color:red">'+value+'</span>';	
		        }else{
		        	content += '<span>'+value+'</span>';	
		        }
		                             			
		        return content;                     			
	      	}		
		},
		{id:'releaseStatus', title:'发布状态', type:'string', columnClass:'text-center'},
		{id:'status', title:'演练状态', type:'string', columnClass:'text-center'},
	    {id:'operation', title:'操作', type:'string', columnClass:'text-center',width:'300',
	     	resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = '';
		        if(record.releaseStatus == '未发布'){
		        	content += '<button class="sbtn sbtn-blue start-btn" onclick="releasePlan(this);">发布</button>';	 
		        }else if(record.status == '未演练'){
		        	content += '<button class="sbtn sbtn-blue cancel-btn" style="margin-right:10px;" onclick="cancelPlan(this);">取消发布</button>';
		        	content += '<button class="sbtn sbtn-blue start-btn" onclick="startPlan(this);">开始</button>';
		        }else if(record.status == '进行中'){
		        	content += '<button class="sbtn sbtn-blue cancel-btn" onclick="cancelPlan(this);">取消发布</button>';
		        }
		        return content;                     			
	      	}		
	    }
	];
	var eventOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '应急救援演练计划列表',
		datas : datas,
		columns : gridColumns_2_1_1,
		gridContainer : 'drillListContainer',
		toolbarContainer : 'drillPageContainer',
		tools : 'refresh',
		check : true,
		pageSize : 5,
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
			window.location.href = "/EMS-Prototype/pages/drillManage/editDrill.jsp";
		}else{
			alert("只能选择一条记录!");
		}
	})
});

function dynamicDisplay() {
	
}

function checkDrill() {
	window.location.href = "/EMS-Prototype/pages/drillManage/checkDrill.jsp";
}

function releasePlan(e){
	$(e).html("取消发布");
	$(e).attr("onclick","cancelPlan(this)");
	$(e).addClass("cancel-btn")
	var content = '';
	content += '<button class="sbtn sbtn-blue start-btn" style="margin-right:10px;"  onclick="startPlan(this);">开始</button>';
	$(e).parent().append(content);
}

function startPlan(e){
	$(e).html("结束");
	$(e).attr("onclick","endPlan(this)");
	$(e).addClass("end-btn");
	$(e).siblings(".cancel-btn").remove();
	var content = '';
	content += '<button class="sbtn sbtn-blue log-btn" style="margin-right:10px;" onclick="logManage();">演练流程</button>';
	$(e).parent().append(content);
}

function endPlan(e){
	$(e).html("评估");
	$(e).attr("onclick","evaPlan(this)");
	$(e).addClass("end-btn");
	$(e).addClass("eva-btn");
}

function evaPlan(e) {
	eventEvaluate();
}

function cancelPlan(e){
	var content = '';
	content += '<button class="sbtn sbtn-blue start-btn" style="margin-right:10px;"  onclick="startPlan(this);">开始</button>';
	$(e).html("发布");
	$(e).attr("onclick","releasePlan(this)");
	$(e).addClass("release-btn");
	$(e).siblings(".start-btn").remove();
}

function logManage() {
	window.location.href = "/EMS-Prototype/pages/drillManage/logManage.jsp";
}


