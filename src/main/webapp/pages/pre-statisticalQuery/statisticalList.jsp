<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<script type="text/javascript" src="<%=path%>/extends/echarts.js"></script>
<title>${title }</title>
<style>
	#echart1 {
		height: 250px;
		margin-top: 10px;
		margin-bottom: 100px;
	}
	
	.num {
	font-size: 30px;
	color: blue;
	}	
	
	.td-d {
	border-radius: 15px;
	background-color: #FF4500;
	height: 22px;
	}
	
	.td-div {
	background-color: #FFEBCD;
	border-top-right-radius: 15px;
	border-bottom-right-radius: 15px;
	float: right;
	height: 22px;
	}
	
	#echart2 {
		height: 250px;
		margin-top: 10px;
		margin-bottom: 100px;
	}
	
	#echart3 {
	height: 300px;
	margin-top: -30px;
	}
	
	#echart4 {
	height: 300px;
	margin-top: -13px;
	}
	#echart5 {
	height: 300px;
	margin-top: -13px;
	}
	#echart6 {
	height: 300px;
	margin-top: -13px;
	}
	#echart7 {
	height: 300px;
	margin-top: -13px;
	}
	#echart8 {
	height: 300px;
	margin-top: -13px;
	}
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
			<a href="#">查询统计</a>
		</li>
	</ul> 
</div>

<div class="col-md-12 clear" style="margin-left: 10%">
		<form class="form-inline" style="margin-top: 30px;">
			<div class="form-group" width="100%" style="margin-left: 20%;"> 
				<label for=" ">时间：</label> <input type="date" class="form-control" placeholder="选择起始时间" style="width: 207px;">
				&nbsp;&nbsp; - &nbsp;&nbsp; <input type="date" class="form-control" placeholder="选择结束时间" style="width: 207px;">
			</div>
			<!-- <label for=" " style="margin-left: 10px;">部门：</label> <select
				class="form-control">
				<option value="">所有</option>
				<option value="">消防护卫</option>
				<option value="">安保安全</option>
				<option value="">医疗救援</option>
				<option value="">其他</option>
			</select> -->
			<button type="button" id="searchBtn" class="sbtn sbtn-blue"
				style="margin-left: 0px;">
				<i class="fa fa-bar-chart-o"></i>&nbsp;统计
			</button>
		</form>
	</div>
	
<div class="page-container">
	<div class="page-content-wrapper">
	  <div class="page-content">
		<div class="row">
		
    	  <div class="col-md-6">
			<div class="portlet blue-hoki box" style="height: 27%;">
			  <div class="portlet-title">
				<div class="caption">
					<i class="fa fa-cogs"></i>应急事件处理情况总览								
				</div>
			  </div>
			
			  <div class="col-md-12" style="padding-top: 2%; padding-bottom: 10px;">
				<div class="col-md-6 clear" style="text-align: center">
					<span>非航空器事件</span><br /> <span class="num">100件</span>
				</div>
				<div class="col-md-6 clear" style="text-align: center">
					<span>航空器事件</span><br /> <span class="num">8件</span>
				</div>
			  </div>
							
			  <div id="echart1" ></div>
							
			  <div class="col-md-12 clear" style="padding-right: 10%; padding-bottom: 15px;">
				<table class="col-md-12 tab">
				  <tr>
					<td align="center" class="td_title">非航空器事件</td>
					<td>
					  <div class="td-d">
						<div style="width: 30%; float: left; text-align: center; color: #fff">92</div>
						<div class="td-div" style="width: 15%;">92%</div>
					  </div>
					</td>
				  </tr>
				  <tr>
					<td align="center" class="td_title">航空器事件</td>
					<td>
					  <div class="td-d">
						<div style="width: 20%; float: left; text-align: center; color: #fff">8</div>
						<div class="td-div" style="width: 80%; text-align: right;">8%</div>
					  </div>
					</td>
				  </tr>
				</table>
			  </div>
			</div>
		  </div> 
				

		 <div class="col-md-6">
			<div class="portlet blue-hoki box" style="height: 27%;">
			  <div class="portlet-title">
				<div class="caption">
					<i class="fa fa-cogs"></i>部门培训及演练统计							
				</div>
			  </div>
			  <div id="echart3" style=" margin-top: 8%"></div>
							
			  <div class="col-md-12 clear" style="padding-right: 10%; ">
			  </div>
			</div>
		  </div> 
		 
		  <!-- <div class="col-md-6">
			<div class="portlet blue-hoki box" style="height: 21%;">
			  <div class="portlet-title">
				<div class="caption">
					<i class="fa fa-cogs"></i>人员调用情况统计							
				</div>
			  </div>
			  <div id="echart5" style=" margin-top: 8%"></div>
							
			  <div class="col-md-12 clear" style="padding-right: 10%; ">
			  </div>
			</div>
		  </div>
		  <div class="col-md-6">
			<div class="portlet blue-hoki box" style="height: 21%;">
			  <div class="portlet-title">
				<div class="caption">
					<i class="fa fa-cogs"></i>资源使用情况统计							
				</div>
			  </div>
			  <div id="echart6" style=" margin-top: 8%"></div>
							
			  <div class="col-md-12 clear" style="padding-right: 10%; ">
			  </div>
			</div>
		  </div>  -->
		  
		  <div class="col-md-6">
			<div class="portlet blue-hoki box" style="height: 27%;">
			  <div class="portlet-title">
				<div class="caption">
					<i class="fa fa-cogs"></i>预案统计						
				</div>
			  </div>
			  <div id="echart7" style=" margin-top: 8%"></div>
							
			  <div class="col-md-12 clear" style="padding-right: 10%; ">
			  </div>
			</div>
		  </div>
		  
		  <div class="col-md-6">
			<div class="portlet blue-hoki box" style="height: 27%;">
			  <div class="portlet-title">
				<div class="caption">
					<i class="fa fa-cogs"></i>检查单统计						
				</div>
			  </div>
			  <div id="echart8" style=" margin-top: 8%"></div>
							
			  <div class="col-md-12 clear" style="padding-right: 10%; ">
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	</div>
</div>


<div class="page-container">
	<div class="page-content-wrapper">
	  <div class="page-content">
		<div class="row">

		 <div class="col-md-12">
			<div class="portlet blue-hoki box" style="height: 27%;">
			  <div class="portlet-title">
				<div class="caption">
					<i class="fa fa-cogs"></i>事件分类统计					
				</div>
			  </div>
							
			  <div id="echart4" style=" margin-top: 8%"></div>
							
			  <div class="col-md-12 clear" style="padding-right: 10%; ">
			  </div>
			</div>
		  </div> 
		  
		</div>
	  </div>
	</div>
</div>


<script type="text/javascript" src="<%=path %>/js/resourceManage/dutyPeopleJstree.js"></script>

<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('echart1'));
		option = {
			title : {
				text : '应急事件处理情况总览',
				left : 'center',
				top : 0,
				bottom : 5,
			},
			tooltip : {
				trigger : 'item',
				formatter : "{a} <br/>{b}: {c} ({d}%)"
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				y : '13%',
				data : [ '非航空器事件', '航空器事件' ],
			},
			series : [ {
				name : '应急事件处理统计',
				type : 'pie',
				radius : [ '50%', '70%' ],
				center : [ '50%', '60%' ],
				avoidLabelOverlap : false,
				label : {
					normal : {
						show : false,
						position : 'center'
					},
					emphasis : {
						show : true,
						textStyle : {
							fontSize : '14',
							fontWeight : 'bold'
						}
					}
				},
				labelLine : {
					normal : {
						show : false
					}
				},
				data : [ {
					value : 92,
					name : '非航空器事件'
				}, {
					value : 8,
					name : '航空器事件'
				}, ],
				itemStyle : {
					emphasis : {
						shadowBlur : 10,
						shadowOffsetX : 0,
						shadowColor : 'rgba(0, 0, 0, 0.5)'
					}
				}
			} ]
		};
		myChart.setOption(option);
	</script>
	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('echart2'));
		option = {
			title : {
				text : '应急救援人员统计',
				left : 'center',
				top : 0,
				bottom : 5,
			},
			tooltip : {
				trigger : 'item',
				formatter : "{a} <br/>{b} : {c} ({d}%)"
			},
			legend : {
				orient : 'horizontal',
				left : 'center',
				top : '10%',
				data : [ '请假', '已就位', '其他']
			},
			series : [ {
				name : '人员数量',
				type : 'pie',
				labelLine : {
					normal : {
						show : false
					}
				},
				label : {
					normal : {
						show : false,
						position : 'center'
					},
					emphasis : {
						show : true,
						textStyle : {
							fontSize : '14',
							fontWeight : 'bold'
						}
					}
				},
				radius : [ '50%', '70%' ],
				center : [ '50%', '60%' ],
				data : [ {
					value : 8,
					name : '请假'
				}, {
					value : 722,
					name : '已就位'
				}, {
					value : 270,
					name : '其他'
				} ]
			} ]
		};

		myChart.setOption(option);
	</script>
	
<script type="text/javascript">
	var myChart3 = echarts.init(document.getElementById('echart3'));

	var option = {
		tooltip : {
			trigger : 'axis',
			axisPointer : { // 坐标轴指示器，坐标轴触发有效
				type : 'shadow' // 默认为直线，可选为：'line' | 'shadow'
			}
		},
		toolbox: {
            show : true,
            
             feature : {
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar']},
                restore : {show: true},
                saveAsImage : {show: true}
            } 
        },dataZoom: [{
            type: 'inside',
            start: 0,
            end: 100
        }, {
            start: 0,
            end: 10,
            handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
            handleSize: '60%',
            handleStyle: {
                color: '#fff',
                shadowBlur: 3,
                shadowColor: 'rgba(0, 0, 0, 0.6)',
                shadowOffsetX: 2,
                shadowOffsetY: 2,
                top : '50%',
            }
        }],
		legend : {
			data : [ '培训次数', '演练次数' ],
			left : 'center',
			orient : 'vertical'
		},
		grid : {
			left: '5%',
	        right: '10%',
	        bottom: '10%',
			containLabel : true
		},
		yAxis : [ {
			type : 'value',
			name :'次数'
		} ],
		xAxis : [ {
			type : 'category',
			data : [ '消防护卫部 ', '网络信息部', '机务工程部', '机场急救中心', '商务管理部 ' ],
			name :'部门'
		} ],
		series : [ {
			name : '培训次数',
			type : 'bar',
			/*  stack: '总量', */
			itemStyle : {
				normal : {
					label : {
						show : true,
						position : 'top'
					}
				}
			},
			data : [ 32, 12, 20, 25, 45 ]
		}, {
			name : '演练次数',
			type : 'bar',
			/*  stack: '总量', */
			itemStyle : {
				normal : {
					label : {
						show : true,
						position : 'top'
					}
				}
			},
			data : [ 10, 3, 15, 23, 30 ]
		} ]
	};
	myChart3.setOption(option);
	myChart3.on('click', function(params) {
		$("#zhengchangModel").modal();
	});
</script>

<script type="text/javascript">
	var myChart = echarts.init(document.getElementById('echart4'));
	var option = {
		tooltip : {
			trigger : 'item',
			formatter : "{a} <br/>{b} 数量: {c}"
		},
		toolbox: {
            show : true,
            
             feature : {
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar']},
                restore : {show: true},
                saveAsImage : {show: true}
            } 
        },
        dataZoom: [{
            type: 'inside',
            start: 0,
            end: 100
        }, {
            start: 0,
            end: 10,
            handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
            handleSize: '60%',
            handleStyle: {
                color: '#fff',
                shadowBlur: 3,
                shadowColor: 'rgba(0, 0, 0, 0.6)',
                shadowOffsetX: 2,
                shadowOffsetY: 2,
                top : '50%',
            }
        }],
		legend : {
			data : [ '事件1', '事件2' ,'事件3','事件4']
		},
		grid : {
			top : '10%',
			left : '5%',
			right : '5%',
			bottom : '5%',
			containLabel : true
		},
		xAxis : [ {
			type : 'category',
			boundaryGap : false,
			data : [ '2017-07-01', '2017-08-01',
					'2017-09-01', '2017-10-01',
					'2017-11-01', '2017-12-01',
					'2018-01-01' ],
			name : '时间'
		} ],
		yAxis : [ {
			type : 'value',
			name : '次数'
		} ],
		series : [ {
			name : '事件1',
			type : 'line',
			stack : '数量',
			areaStyle : {
				normal : {}
			},
			data : [ 12, 16, 9, 13, 10, 12, 15 ]
		}, {
			name : '事件2',
			type : 'line',
			stack : '数量',
			label : {
				normal : {
					show : true,
					position : 'top'
				}
			},
			areaStyle : {
				normal : {}
			},
			data : [ 7, 9, 5, 8, 6, 8, 9 ]
		},
		{
			name : '事件3',
			type : 'line',
			stack : '数量',
			label : {
				normal : {
					show : true,
					position : 'top'
				}
			},
			areaStyle : {
				normal : {}
			},
			data : [ 9, 11, 7, 9, 8, 11, 12 ]
		},
		{
			name : '事件4',
			type : 'line',
			stack : '数量',
			label : {
				normal : {
					show : true,
					position : 'top'
				}
			},
			areaStyle : {
				normal : {}
			},
			data : [ 1, 2, 3, 4, 5, 4, 1 ]
		}]
	};
	myChart.setOption(option);
</script>
<script type="text/javascript">
	var myChart = echarts.init(document.getElementById('echart5'));
	var option = {
		tooltip : {
			trigger : 'item',
			formatter : "{a} 数量: {c}"
		},
		legend : {
			data : [ '参与事件次数']
		},
		grid : {
			top : '10%',
			left : '10%',
			right : '10%',
			bottom : '10%',
			containLabel : true
		},
		xAxis : [ {
			type : 'category',
			boundaryGap : false,
			data : [ '张三', '李四',
					'王五', '赵六',
					'张太油' ],
			name : '人员'
		} ],
		yAxis : [ {
			type : 'value',
			name :'参与事件数'
		} ],
		series : [ {
			name : '参与事件次数',
			type : 'line',
			stack : '数量',
			/* areaStyle : {
				normal : {}
			}, */
			data : [ 12, 16, 9, 13, 10, 12, 15 ],
			
		}
		],
		toolbox: {
            show : true,
            
             feature : {
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar']},
                restore : {show: true},
                saveAsImage : {show: true}
            } 
        },
		dataZoom: [{
            type: 'inside',
            start: 0,
            end: 100
        }, {
            start: 0,
            end: 10,
            handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
            handleSize: '80%',
            handleStyle: {
                color: '#fff',
                shadowBlur: 3,
                shadowColor: 'rgba(0, 0, 0, 0.6)',
                shadowOffsetX: 2,
                shadowOffsetY: 2,
                top : '50%',
            }
        }],
		
	};
	myChart.setOption(option);
</script>
<script type="text/javascript">
	var myChart = echarts.init(document.getElementById('echart6'));
	var option = {
		tooltip : {
			trigger : 'item',
			formatter : "{a} <br/>{b} 数量: {c}"
		},
		legend : {
			data : [ '救护车', '急救箱' ,'消防车','消防栓','进口丰田海狮'] 
		},
		grid : {
			left: '5%',
	        right: '10%',
	        bottom: '10%',
			containLabel : true
		},
		xAxis : [ {
			type : 'category',
			boundaryGap : false,
			data : [ '2017-07-01', '2017-08-01',
					'2017-09-01', '2017-10-01',
					'2017-11-01', '2017-12-01',
					'2018-01-01' ],
			name : '时间'
		} ],
		yAxis : [ {
			type : 'value',
			name : '使用次数'
		} ],
		toolbox: {
            show : true,
            
             feature : {
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar']},
                restore : {show: true},
                saveAsImage : {show: true}
            } 
        },
		dataZoom: [{
            type: 'inside',
            start: 0,
            end: 100
        }, {
            start: 0,
            end: 10,
            handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
            handleSize: '80%',
            handleStyle: {
                color: '#fff',
                shadowBlur: 3,
                shadowColor: 'rgba(0, 0, 0, 0.6)',
                shadowOffsetX: 2,
                shadowOffsetY: 2,
                top : '50%',
            }
        }],
		series : [ {
			name : '进口丰田海狮',
			type : 'line',
			stack : '数量',
			/* areaStyle : {
				normal : {}
			}, */
			data : [ 12, 16, 9, 13, 10, 12, 15 ]
		}, 
		{
			name : '消防栓',
			type : 'line',
			stack : '数量',
			/* areaStyle : {
				normal : {}
			}, */
			data : [ 6, 6, 9, 3, 1, 2, 5 ]
		},{
			name : '消防车',
			type : 'line',
			stack : '数量',
			label : {
				normal : {
					show : true,
					position : 'top'
				}
			},
			/* areaStyle : {
				normal : {}
			}, */
			data : [ 7, 9, 5, 8, 6, 8, 9 ]
		},
		{
			name : '救护车',
			type : 'line',
			stack : '数量',
			label : {
				normal : {
					show : true,
					position : 'top'
				}
			},
			/* areaStyle : {
				normal : {}
			}, */
			data : [ 9, 11, 7, 9, 8, 11, 12 ]
		},
		{
			name : '急救箱',
			type : 'line',
			stack : '数量',
			label : {
				normal : {
					show : true,
					position : 'top'
				}
			},
			/* areaStyle : {
				normal : {}
			}, */
			data : [ 12, 11, 4, 3, 2, 11, 9 ]
		}/* ,
		{
			name : '进口丰田海狮1',
			type : 'line',
			stack : '数量',
			
			data : [ 12, 16, 9, 13, 10, 12, 15 ]
		}, 
		{
			name : '消防栓1',
			type : 'line',
			stack : '数量',
			
			data : [ 6, 6, 9, 3, 1, 2, 5 ]
		},{
			name : '消防车1',
			type : 'line',
			stack : '数量',
			label : {
				normal : {
					show : true,
					position : 'top'
				}
			},
			
			data : [ 7, 9, 5, 8, 6, 8, 9 ]
		},
		{
			name : '救护车1',
			type : 'line',
			stack : '数量',
			label : {
				normal : {
					show : true,
					position : 'top'
				}
			},
			
			data : [ 9, 11, 7, 9, 8, 11, 12 ]
		},
		{
			name : '急救箱1',
			type : 'line',
			stack : '数量',
			label : {
				normal : {
					show : true,
					position : 'top'
				}
			},
			
			data : [ 12, 11, 4, 3, 2, 11, 9 ]
		} */]
	};
	myChart.setOption(option);
</script>
<script type="text/javascript">
var myChart7 = echarts.init(document.getElementById('echart7'));

var option = {
		color: ['cc3366','00ff33','000066','#ff8247'],
	    tooltip : {
	        trigger: 'axis',
	        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
	            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
	        }
	    },
	    grid: {
	        left: '5%',
	        right: '10%',
	        bottom: '10%',
	        containLabel: true
	    },
	    xAxis : [
	        {
	            type : 'category',
	            data : ['预案1', '预案2', '预案3', '预案4', '预案5', '预案6', '预案7'],
	            name : '预案',
	            axisTick: {
	                alignWithLabel: true
	            }
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value',
	            name : '预案调用次数'
	        }
	    ],
		toolbox: {
            show : true,
            
             feature : {
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar']},
                restore : {show: true},
                saveAsImage : {show: true}
            } 
        },
		dataZoom: [{
            type: 'inside',
            start: 0,
            end: 100
        }, {
            start: 0,
            end: 10,
            handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
            handleSize: '80%',
            handleStyle: {
                color: '#fff',
                shadowBlur: 3,
                shadowColor: 'rgba(0, 0, 0, 0.6)',
                shadowOffsetX: 2,
                shadowOffsetY: 2,
                top : '50%',
            }
        }],
	    series : [
	        {
	            name:'预案调用次数',
	            type:'bar',
	            barWidth: '60%',
	            data:[10, 52, 200, 334, 390, 330, 220],
	            itemStyle: {   
	                //通常情况下：
	                normal:{  
	                    color: function (params){
	                        var colorList = ['rgb(164,205,238)','rgb(42,170,227)','rgb(25,46,94)','rgb(195,229,235)','#F4A460','#EE4000','#CD00CD','#EEEE00','#DB7093'];
	                        return colorList[params.dataIndex];
	                    }
	                },
	                //鼠标悬停时：
	                emphasis: {
	                        shadowBlur: 10,
	                        shadowOffsetX: 0,
	                        shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            },
	        
	        },
	        
	    ]
};
myChart7.setOption(option);
myChart7.on('click', function(params) {
	$("#zhengchangModel").modal();
}); 
</script>	
<script type="text/javascript">
var myChart8 = echarts.init(document.getElementById('echart8'));

var option = {
		color: ['cc3366','00ff33','000066','#ff8247'],
	    tooltip : {
	        trigger: 'axis',
	        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
	            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
	        }
	    },
	    grid: {
	        left: '5%',
	        right: '10%',
	        bottom: '10%',
	        containLabel: true
	    },
	    xAxis : [
	        {
	            type : 'category',
	            data : ['检查单1', '检查单2', '检查单3', '检查单4', '检查单5', '检查单6', '检查单7'],
	            name : '检查单',
	            axisTick: {
	                alignWithLabel: true
	            }
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value',
	            name : '检查单执行次数'
	        }
	    ],
		toolbox: {
            show : true,
            
             feature : {
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar']},
                restore : {show: true},
                saveAsImage : {show: true}
            } 
        },
		dataZoom: [{
            type: 'inside',
            start: 0,
            end: 100
        }, {
            start: 0,
            end: 10,
            handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
            handleSize: '80%',
            handleStyle: {
                color: '#fff',
                shadowBlur: 3,
                shadowColor: 'rgba(0, 0, 0, 0.6)',
                shadowOffsetX: 2,
                shadowOffsetY: 2,
                top : '50%',
            }
        }],
	    series : [
	        {
	            name:'检查单执行次数',
	            type:'bar',
	            barWidth: '60%',
	            data:[10, 52, 200, 334, 390, 330, 220],
	            itemStyle: {   
	                //通常情况下：
	                normal:{  
	                    color: function (params){
	                        var colorList = ['#F4A460','#EE4000','#CD00CD','#EEEE00','#DB7093','#00008B','#87CEEB','#87CEEB','#7A7A7A'];
	                        return colorList[params.dataIndex];
	                    }
	                },
	                //鼠标悬停时：
	                emphasis: {
	                        shadowBlur: 10,
	                        shadowOffsetX: 0,
	                        shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            },
	        
	        },
	        
	    ]
};
myChart8.setOption(option);
myChart8.on('click', function(params) {
	$("#zhengchangModel").modal();
}); 
</script>	
</body>

</html>