//任务日志信息按天统计
function initQuartzLogGroupDayChart(){
	var startDate = $("#startDate").val(), endDate = $("#endDate").val();
	var chartJobOption = {};
	$.ajax(
		{
			url:"chartCountGroupDay",
			type:"post",
			async:false,
			data:{
				startDate:startDate,
				endDate:endDate
			},
			success:function(result){
				chartJobOption = initChartDayOption(result);
		    }
		}
	);
	var groupJobChart = echarts.init(document.getElementById('quartzLogGroupDay'));
	groupJobChart.setOption(chartJobOption);
}

function initChartDayOption(result){
	var chartData = $.parseJSON(result);
	return chartDayOption = {
			title : {
		        text: '定时任务执行次数按天统计图',
		        x: 'center'
		    },
			tooltip:{
				trigger: 'axis'
			},
			legend:{
				data : ['成功','失败'],
				x: 'left'
			},
			dataZoom: [
		        {
		            show: true,
		            realtime: true,
		            start: 0,
		            end: 100
		        }
		    ],
			calculable: true,
			xAxis : [{
				type: 'category',
				//boundaryGap: false,
				data: chartData.xdatas, 
			}],
			yAxis : [{
				type: 'value',
			}],
			grid : {
				//left : '1%',
				//right : '3%',
				top : '60',
				bottom : '60',
				containLabel : true,
				show : true,
			},
			toolbox: {
				show: true,
				right: '3%',
				top:0,
				feature:{
		            dataView : {
		            	show: true, 
		            	readOnly: false,
		            },
		            magicType : {
		            	show: true, 
		            	type: ['line', 'bar'],
		            },
		            restore : {
		            	show: true
		            },
		            saveAsImage : {
		            	show: true
		            },
				}
			},
			series: [
				{
					name: '成功',
					type: 'line',
					//stack: 'one',
					color: ['green'],
					data: chartData.successNums
				},
				{
					name: '失败',
					type: 'line',
					//stack: 'one',
					color: ['#c23531'],
					data: chartData.faildNums
				}
				
			]
	}
}

//任务日志信息按任务名称统计
function initQuartzLogGroupJobChart(){
	var startDate = $("#startDate").val(), endDate = $("#endDate").val();
	var chartJobOption = {};
	$.ajax(
		{
			url:"chartCountGroupJob",
			type:"post",
			async:false,
			data:{
				startDate:startDate,
				endDate:endDate
			},
			success:function(result){
				chartJobOption = initChartJobOption(result);
		    }
		}
	);
	var groupJobChart = echarts.init(document.getElementById('quartzLogGroupJob'));
	groupJobChart.setOption(chartJobOption);
}

function initChartJobOption(result){
	var chartData = $.parseJSON(result);
	return chartDayOption = {
			title : {
		        text: '定时任务执行次数按任务名称统计图',
		        x: 'center'
		    },
			tooltip:{
				trigger: 'axis'
			},
			legend:{
				data : ['成功','失败'],
				x: 'left'
			},
			dataZoom: [
		        {
		            show: true,
		            realtime: true,
		            start: 0,
		            end: 100
		        }
		    ],
			calculable: true,
			xAxis : [{
				type: 'category',
				//boundaryGap: false,
				data: chartData.xdatas, 
			}],
			yAxis : [{
				type: 'value',
			}],
			grid : {
				//left : '1%',
				//right : '3%',
				top : '60',
				bottom : '60',
				containLabel : true,
				show : true,
			},
			toolbox: {
				show: true,
				right: '3%',
				top:0,
				feature:{
		            dataView : {
		            	show: true, 
		            	readOnly: false,
		            },
		            magicType : {
		            	show: true, 
		            	type: ['line', 'bar'],
		            },
		            restore : {
		            	show: true
		            },
		            saveAsImage : {
		            	show: true
		            },
				}
			},
			series: [
				{
					name: '成功',
					type: 'bar',
					//stack: 'one',
					color: ['green'],
					data: chartData.successNums
				},
				{
					name: '失败',
					type: 'bar',
					//stack: 'one',
					color: ['#c23531'],
					data: chartData.faildNums
				}
				
			]
	}
}

//任务日志信息按服务器IP统计
function initQuartzLogGroupIpChart(){
	var startDate = $("#startDate").val(), endDate = $("#endDate").val();
	var chartJobOption = {};
	$.ajax(
		{
			url:"chartCountGroupIp",
			type:"post",
			async:false,
			data:{
				startDate:startDate,
				endDate:endDate
			},
			success:function(result){
				chartJobOption = initChartIpOption(result);
		    }
		}
	);
	var groupJobChart = echarts.init(document.getElementById('quartzLogGroupIp'));
	groupJobChart.setOption(chartJobOption);
}

function initChartIpOption(result){
	var chartData = $.parseJSON(result);
	return chartDayOption = {
			title : {
		        text: '定时任务执行次数按服务器统计图',
		        x: 'center'
		    },
			tooltip:{
				trigger: 'axis'
			},
			legend:{
				data : ['成功','失败'],
				x: 'left'
			},
			dataZoom: [
		        {
		            show: true,
		            realtime: true,
		            start: 0,
		            end: 100
		        }
		    ],
			calculable: true,
			xAxis : [{
				type: 'category',
				//boundaryGap: false,
				data: chartData.xdatas, 
			}],
			yAxis : [{
				type: 'value',
			}],
			grid : {
				//left : '1%',
				//right : '3%',
				top : '60',
				bottom : '60',
				containLabel : true,
				show : true,
			},
			toolbox: {
				show: true,
				right: '3%',
				top:0,
				feature:{
		            dataView : {
		            	show: true, 
		            	readOnly: false,
		            },
		            magicType : {
		            	show: true, 
		            	type: ['line', 'bar'],
		            },
		            restore : {
		            	show: true
		            },
		            saveAsImage : {
		            	show: true
		            },
				}
			},
			series: [
				{
					name: '成功',
					type: 'bar',
					//stack: 'one',
					color: ['green'],
					data: chartData.successNums
				},
				{
					name: '失败',
					type: 'bar',
					//stack: 'one',
					color: ['#c23531'],
					data: chartData.faildNums
				}
				
			]
	}
}

