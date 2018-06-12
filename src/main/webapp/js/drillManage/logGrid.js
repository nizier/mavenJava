$(function(){
	var datas = [
		{
			"id": "A001",
			"serialId": "1",
			"name": "北京国际机场应急救援综合演练",
			"period":"准备阶段",
			"content":"机场应急救援指挥中心收到信息后立即启动机场应急救援预案，命令消防、急救、公安赶赴",
			"place":"机场应急救援指挥中心",
			"lifeCycle":"一年2次",
            "recordTime":"2018-03-25 14:26:18",
            "period":"准备阶段",
            "operator":"李XX",
		},
		{
			"id": "A002",
			"serialId": "2",
			"name": "北京国际机场应急救援综合演练",
			"period":"准备阶段",
			"content":"消防、急救、公安到达1＃集结地",
			"place":"机场应急救援指挥中心",
			"lifeCycle":"一年2次",
            "recordTime":"2018-03-25 15:24:52",
            "period":"准备阶段",
            "operator":"李XX",
		},
		{
			"id": "A003",
			"serialId": "3",
			"name": "北京国际机场应急救援综合演练",
			"period":"准备阶段",
			"content":"AC898航班由西向东着陆，着陆时偏出跑道南侧土质地带30米，左翼尖触地起火，前起落架陷入土质地带并轻度受损，跑道边灯损坏3个",
			"place":"机场应急救援指挥中心",
			"lifeCycle":"一年2次",
            "recordTime":"2018-03-25 15:32:15",
            "period":"准备阶段",
            "operator":"李XX",
		},
		{
			"id": "A004",
			"serialId": "4",
			"name": "北京国际机场应急救援综合演练",
			"period":"准备阶段",
			"content":"消防、医疗、公安按照各自预案进行处置；",
			"place":"机场应急救援指挥中心",
			"lifeCycle":"一年2次",
            "recordTime":"2018-03-25 14:26:18",
            "period":"准备阶段",
            "operator":"李XX",
		},
		{
			"id": "A005",
			"serialId": "5",
			"name": "北京国际机场应急救援综合演练",
			"period":"准备阶段",
			"content":"火灾扑救完毕消防员迅速铺设救生气垫开辟救生通道，全力抢救被困遇险人员，33人顺利逃生；3名伤员由消防员抬至医疗救治区救治。",
			"place":"机场应急救援指挥中心",
			"lifeCycle":"一年2次",
            "recordTime":"2018-03-25 14:26:18",
            "period":"准备阶段",
            "operator":"李XX",
		},
	];

	var gridColumns_2_1_1 = [
		{id:'serialId', title:'序号', type:'string', columnClass:'text-center',width:'50'},
		{id:'id', title:'主键ID', type:'string', columnClass:'text-center',hide:true},
		{id:'name', title:'演练名称', type:'string', columnClass:'text-center',
			resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = '';
		        content += "<a onclick='checkLog()'>"+value+"</a>"
		        return content;                     			
	      	}		
		},
		{id:'place', title:'演练地点', type:'string', columnClass:'text-center'},
		{id:'content', title:'内容', type:'string', columnClass:'text-center'},
		{id:'period', title:'演练阶段', type:'string', columnClass:'text-center',width:'100'},
		{id:'recordTime', title:'时间', type:'string', columnClass:'text-center'},
		{id:'operator', title:'操作人', type:'string', columnClass:'text-center',width:'100'},
	];
	var eventOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '应急救援演练日志',
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
			window.location.href = "/EMS-Prototype/pages/drillManage/editLog.jsp";
		}else{
			alert("只能选择一条记录!");
		}
	})
});

function checkLog() {
	window.location.href = "/EMS-Prototype/pages/drillManage/checkLog.jsp";
}


