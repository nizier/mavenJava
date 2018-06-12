/**
 * 按天统计审计日志
 * @returns
 */
function initDayChart(){
	var startDate = $("#startDate").val(), endDate = $("#endDate").val();
	var chartDayOption = {};
	$.ajax(
		{
			url:"chartDay",
			type:"post",
			async:false,
			data:{
				startDate:startDate,
				endDate:endDate
			},
			success:function(result){
				chartDayOption = initChartDayOption(result);
		    }
		}
	);
	var auditLogDayChart = echarts.init(document.getElementById('auditDayLog'));
	auditLogDayChart.setOption(chartDayOption);
	$(window).resize(function(){
		auditLogDayChart.resize();
	});
}

function initChartDayOption(result){
	var chartData = $.parseJSON(result);
	return chartDayOption = {
			title : {
		        text: '系统审计日志按天统计图',
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
				data: chartData.xdates, 
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
					stack: 'one',
					color: ['green'],
					data: chartData.successNums
				},
				{
					name: '失败',
					type: 'bar',
					stack: 'one',
					//color: ['green'],
					data: chartData.faildNums
				}
				
			]
	}
}

/**
 * 按操作对象统计日志
 * @returns
 */
function initObjectChart(){
	var searchDate = $("#searchDate").val();
	var chartObjectOption = {};
	$.ajax(
		{
			url:"chartObject",
			type:"post",
			async:false,
			data:{
				searchDate:searchDate
			},
			success:function(result){
				chartObjectOption = initChartObjectOption(result);
		    }
		}
	);
	var auditLogObjectChart = echarts.init(document.getElementById('auditObjectLog'));
	auditLogObjectChart.setOption(chartObjectOption);
	$(window).resize(function(){
		auditLogObjectChart.resize();
	});
}

function initChartObjectOption(result){
	var chartData = $.parseJSON(result);
	return chartObjectOption = {
			title : {
		        text: '系统审计日志按模块统计图',
		        x: 'center',
		    },
			tooltip:{
				trigger: 'axis'
			},
			legend:{
				data : ['成功','失败'],
				x: 'left'
			},
			/*dataZoom: [
		        {
		            show: true,
		            realtime: true,
		            start: 0,
		            end: 100
		        }
		    ],*/
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
					stack: 'one',
					color: ['green'],
					data: chartData.successNums
				},
				{
					name: '失败',
					type: 'bar',
					stack: 'one',
					//color: ['green'],
					data: chartData.faildNums
				}
				
			]
	}
}

/**
 * 获取操作成功次数最多的topN模块统计
 * @returns
 */
function initObjectSuccessTopNChart(){
	var startDate = $("#startDate3").val(), endDate = $("#startDate3").val();
	var chartOption = {};
	$.ajax(
		{
			url:"chartObjectSuccessTopN",
			type:"post",
			async:false,
			data:{
				startDate:startDate,
				endDate:endDate,
				topN:10
			},
			success:function(result){
				chartOption = initObjectSuccessTopNChartOption(result);
		    }
		}
	);
	var successTopNChart = echarts.init(document.getElementById('successObjTopN'));
	successTopNChart.setOption(chartOption);
	$(window).resize(function(){
		successTopNChart.resize();
	});
}

function initObjectSuccessTopNChartOption(result){
	var chartData = $.parseJSON(result);
	return chartObjectOption = {
			title : {
		        text: '系统审计日志按模块统计图',
		        x: 'center',
		    },
			tooltip:{
				trigger: 'axis'
			},
			legend:{
				data : ['成功'],
				x: 'left'
			},
			/*dataZoom: [
		        {
		            show: true,
		            realtime: true,
		            start: 0,
		            end: 100
		        }
		    ],*/
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
					stack: 'one',
					color: ['green'],
					data: chartData.successNums
				}
				
			]
	}
}

/**
 * 获取操作失败次数最多的topN模块统计
 * @returns
 */
function initObjectFaildTopNChart(){
	var startDate = $("#startDate3").val(), endDate = $("#startDate3").val();
	var chartOption = {};
	$.ajax(
		{
			url:"chartObjectFaildTopN",
			type:"post",
			async:false,
			data:{
				startDate:startDate,
				endDate:endDate,
				topN:10
			},
			success:function(result){
				chartOption = initObjectFaildTopNChartOption(result);
		    }
		}
	);
	var successTopNChart = echarts.init(document.getElementById('faildObjTopN'));
	successTopNChart.setOption(chartOption);
	$(window).resize(function(){
		successTopNChart.resize();
	});
}

function initObjectFaildTopNChartOption(result){
	var chartData = $.parseJSON(result);
	return chartObjectOption = {
			title : {
		        text: '系统审计日志按模块统计图',
		        x: 'center',
		    },
			tooltip:{
				trigger: 'axis'
			},
			legend:{
				data : ['成功'],
				x: 'left'
			},
			/*dataZoom: [
		        {
		            show: true,
		            realtime: true,
		            start: 0,
		            end: 100
		        }
		    ],*/
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
					stack: 'one',
					//color: ['red'],
					data: chartData.faildNums
				}
				
			]
	}
}
