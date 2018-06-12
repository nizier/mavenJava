$(function(){
	var datas = [
		{
			"id": "A001",
			"name": "航空器失事应急处置预案",
			"status":"未演练",
			"operator": "操作人A",
			"department":"消防部门",
			"operateTime": "2018-01-22 11:47",
			"level": "中"
		}, {
			"id": "A002",
			"name": "航空器空中遇险应急处置预案",
			"status":"未演练",
			"operator": "操作人A",
			"department":"消防部门",
			"operateTime": "2018-01-22 11:47",
			"level": "中"
		}, {
			"id": "A003",
			"name": "航空器地面事故救援应急处置预案",
			"status":"未演练",
			"operator": "操作人A",
			"department":"消防部门",
			"operateTime": "2018-01-22 11:47",
			"level": "高"
		}, {
			"id": "A004",
			"name": "航空器跑道事件应急处置预案",
			"status":"演练中",
			"operator": "操作人A",
			"department":"消防部门",
			"operateTime": "2018-01-22 11:47",
			"level": "中"
		}, {
			"id": "A005",
			"name": "航空器火警应急处置预案",
			"status":"已完成",
			"operator": "操作人A",
			"department":"消防部门",
			"operateTime": "2018-01-22 11:47",
			"level": "中"
		}
	];
	var gridColumns_2_1_1 = [
		{id:'id', title:'序号', type:'string', columnClass:'text-center',resolution : function(value, record,
                column, grid, dataNo, columnNo) {
				return dataNo+1;
			},
		},
		{id:'id', title:'编号', type:'string', columnClass:'text-center','width':'60'},
		{id:'name', title:'名称', type:'string', columnClass:'text-center',
			resolution:function(value, record, column, grid, dataNo, columnNo){ 
				return "<a onclick='showProcess();'>"+value+"</a>"
			},
		},
		{id:'status', title:'状态', type:'string', columnClass:'text-center','width':'70'},
	    {id:'operation', title:'操作', type:'string', columnClass:'text-center',width:'100',
	     	resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = '';
		        if(record.status== '已完成'){
		        	content += '<button class="sbtn sbtn-blue" onclick = "clearDisplay()">评估</button>'; 	
		        }else{
		        	content += '<button class="sbtn sbtn-blue">完成</button>'; 	
		        }
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
		pageSize : 5,
		check: 'true'
		
	};
    var grid_2_1_1 = $.fn.dlshouwen.grid.init(eventOption);
	$(function(){
		grid_2_1_1.load();
	});
	
	$("#delBtn").click(function() {
		if(grid_2_1_1.getCheckedRecords().length==0){
			alert("请至少选择一条记录!");
		}else{
			
		}
	})
	
	$("#editBtn").click(function() {
		if(grid_2_1_1.getCheckedRecords().length==0){
			alert("请至少选择一条记录!");
		}else if(grid_2_1_1.getCheckedRecords().length==1){
			editStatus();
		}else{
			alert("只能选择一条记录!");
		}
	})
});

function dynamicDisplay() {
	
}

function closeEditWin(){
	$("#editDrill").hide(400);
}