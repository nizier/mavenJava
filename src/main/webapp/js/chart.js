var resizeWorldMapContainer = function () {
   document.getElementById('echart1').style.width = window.innerWidth*0.38+'px';
   document.getElementById('echart2').style.width = window.innerWidth*0.38+'px';
   document.getElementById('echart21').style.width = window.innerWidth*0.38+'px';
   document.getElementById('echart22').style.width = window.innerWidth*0.38+'px';
   document.getElementById('echart23').style.width = window.innerWidth*0.38+'px';
   document.getElementById('echart3').style.width = window.innerWidth*0.55+'px';
   document.getElementById('echart5').style.width = window.innerWidth/2+'px';
   document.getElementById('echart6').style.width = window.innerWidth*0.38+'px';
   document.getElementById('echart7').style.width = window.innerWidth*0.38+'px';
};

resizeWorldMapContainer();
var chart1 = echarts.init(document.getElementById('echart1'));
var chart2 = echarts.init(document.getElementById('echart2'));
var chart21 = echarts.init(document.getElementById('echart21'));
var chart22 = echarts.init(document.getElementById('echart22'));
var chart23 = echarts.init(document.getElementById('echart23'));
var chart3 = echarts.init(document.getElementById('echart3'));
var chart5 = echarts.init(document.getElementById('echart5'));
var chart6 = echarts.init(document.getElementById('echart6'));
var chart7 = echarts.init(document.getElementById('echart7'));
chart1.on('click', function(params) {
	city = params.name;
	if(city == '公共区') {

		$(".chart1").addClass("hidden");
		$(".chart2").removeClass("hidden");
		$(".back_btn").removeClass("hidden");
	}else if(city == '航站区') {

			$(".chart1").addClass("hidden");
			$(".chart21").removeClass("hidden");
			$(".back_btn").removeClass("hidden");
	}else if(city == '控制区') {

		$(".chart1").addClass("hidden");
		$(".chart22").removeClass("hidden");
		$(".back_btn").removeClass("hidden");
	}else if(city == '飞行区') {

		$(".chart1").addClass("hidden");
		$(".chart23").removeClass("hidden");
		$(".back_btn").removeClass("hidden");
	}

});

chart6.on('click', function(params) {
	city = params.name;
	if(city == '飞行区' || city == '航站区' || city == '公共区' || city == '控制区') {

		$(".chart6").addClass("hidden");
		$(".chart7").removeClass("hidden");
		$(".back_btn2").removeClass("hidden");
	}

});


function showPie() {
	$(".chart2").addClass("hidden");
	$(".chart21").addClass("hidden");
	$(".chart22").addClass("hidden");
	$(".chart23").addClass("hidden");
	$(".chart1").removeClass("hidden");
	$(".back_btn").addClass("hidden");
}


function showPie2() {
	$(".chart7").addClass("hidden");
	$(".chart6").removeClass("hidden");
	$(".back_btn2").addClass("hidden");
}


var option1 = {
		
		
		title:{
			text: '安全事件统计',
			subtext: '总计 :' + '544',
			x: '50%',
			y: '5%',

			textAlign: 'center'
		},

	tooltip: {
		trigger: 'item',
		formatter: "{a} <br/>{b} : {c} ({d}%)"
	},
	legend: {
		orient: 'vertical',
		left: 'left',
		data: ['航站区', '飞行区', '控制区', '公共区']
	},
	series: [{
			name: '区域安全事件数量',
			type: 'pie',
			radius: '50%',
			center: ['52%', '50%'],
			data: [{
					value: 310,
					name: '航站区'
				},
				{
					value: 234,
					name: '飞行区'
				},
				{
					value: 135,
					name: '控制区'
				},
				{
					value: 248,
					name: '公共区'
				}
			],
			itemStyle:{ 
                            normal:{ 
                                label:{ 
                                   show: true, 
                                   formatter: '{b} : {c}' 
                                }, 
                                labelLine :{show:true}
                            } 
                        } 
		},

	]
};
//公共区
var option2 = {
	tooltip: {
		trigger: 'axis',
		axisPointer: { // 坐标轴指示器，坐标轴触发有效
			type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
		}
	},
	calculable: true,
	yAxis: [{
		type: 'value'
	}],
	xAxis: [{
		type: 'category',
		data: ['视频', '门禁', '手动报警', '消防']
	}],
	series: [

		{
			name: '安全事件数量',
			type: 'bar',
			/*  stack: '总量', */
			itemStyle: {
				normal: {
					label: {
						show: true,
						position: 'top'
					}
				}
			},
			data: [45, 12, 20,45]
		}
	]
};

//航站区
var option21 = {
	tooltip: {
		trigger: 'axis',
		axisPointer: { // 坐标轴指示器，坐标轴触发有效
			type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
		}
	},
	calculable: true,
	yAxis: [{
		type: 'value'
	}],
	xAxis: [{
		type: 'category',
		data: ['视频', '门禁', '手动报警', '消防','安检']
	}],
	series: [

		{
			name: '安全事件数量',
			type: 'bar',
			/*  stack: '总量', */
			itemStyle: {
				normal: {
					label: {
						show: true,
						position: 'top'
					}
				}
			},
			data: [45, 12, 23, 20,45]
		}
	]
};


//控制区
var option22 = {
	tooltip: {
		trigger: 'axis',
		axisPointer: { // 坐标轴指示器，坐标轴触发有效
			type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
		}
	},
	calculable: true,
	yAxis: [{
		type: 'value'
	}],
	xAxis: [{
		type: 'category',
		data: ['视频', '门禁', '手动报警', '消防','安检']
	}],
	series: [

		{
			name: '安全事件数量',
			type: 'bar',
			/*  stack: '总量', */
			itemStyle: {
				normal: {
					label: {
						show: true,
						position: 'top'
					}
				}
			},
			data: [45, 12, 13,20,45]
		}
	]
};

//飞行区
var option23 = {
	tooltip: {
		trigger: 'axis',
		axisPointer: { // 坐标轴指示器，坐标轴触发有效
			type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
		}
	},
	calculable: true,
	yAxis: [{
		type: 'value'
	}],
	xAxis: [{
		type: 'category',
		data: ['视频', '门禁', '手动报警', '围界', '消防']
	}],
	series: [

		{
			name: '安全事件数量',
			type: 'bar',
			/*  stack: '总量', */
			itemStyle: {
				normal: {
					label: {
						show: true,
						position: 'top'
					}
				}
			},
			data: [45, 12, 13, 23, 45]
		}
	]
};



var builderJson = {
	"all": 500,
	"charts": {
		"待处理": 121,
		"处理中": 67,
		"处理完成": 356
	},
	"components": {
		"围界": 121,
		"安检": 45,
		"消防": 70,
		"手动报警": 32,
		"门禁": 70,
		"视频": 206
	},
	"ie": 9743
};

var downloadJson = {
	"待处理": 121,
		"处理中": 67,
		"处理完成": 356
};

var themeJson = {
	"围界": 121,
	"安检": 45,
	"消防": 70,
	"手动报警": 32,
	"门禁": 70,
	"视频": 206
};

var waterMarkText = 'ECHARTS';

var canvas = document.createElement('canvas');
var ctx = canvas.getContext('2d');
canvas.width = canvas.height = 100;
ctx.textAlign = 'center';
ctx.textBaseline = 'middle';
ctx.globalAlpha = 0.08;
ctx.font = '8px Microsoft Yahei';
ctx.translate(50, 50);
ctx.rotate(-Math.PI / 4);
ctx.fillText(waterMarkText, 0, 0);

var option3 = {
	
	tooltip: {},
	title: [ {
		text: '处理状态统计',
		subtext: '总计 :' + '544',
		x: '22%',

		textAlign: 'center'
	}, {
		text: '事件来源统计',
		subtext: '总计 :' + '544',
		x: '65%',
		
		textAlign: 'center'
	}],
	grid: [{
		top: '55%',
		width: '40%',
		bottom: 0,
		left: '0%',
		containLabel: true
	}, {
		
		top: 50,
		width: '40%',
		top:'55%',
		bottom: '0%',
		left: '45%',
		containLabel: true
	}],
	xAxis: [{
		type: 'value',
		max: builderJson.all,
		splitLine: {
			show: false
		}
	}, {
		type: 'value',
		max: builderJson.all,
		gridIndex: 1,
		splitLine: {
			show: false
		}
	}],
	yAxis: [{
		type: 'category',
		data: Object.keys(builderJson.charts),
		axisLabel: {
			interval: 0,
			rotate: 30
		},
		splitLine: {
			show: false
		}
	}, {
		gridIndex: 1,
		type: 'category',
		data: Object.keys(builderJson.components),
		axisLabel: {
			interval: 0,
			rotate: 30
		},
		splitLine: {
			show: false
		}
	}],
	series: [{
		type: 'bar',
		stack: 'chart',
		z: 3,
		label: {
			normal: {
				position: 'right',
				show: true
			}
		},
		data: Object.keys(builderJson.charts).map(function(key) {
			return builderJson.charts[key];
		})
	}, {
		type: 'bar',
		stack: 'chart',
		silent: true,
		itemStyle: {
			normal: {
				color: '#eee'
			}
		},
		data: Object.keys(builderJson.charts).map(function(key) {
			return builderJson.all - builderJson.charts[key];
		})
	}, {
		type: 'bar',
		stack: 'component',
		xAxisIndex: 1,
		yAxisIndex: 1,
		z: 3,
		label: {
			normal: {
				position: 'right',
				show: true
			}
		},
		data: Object.keys(builderJson.components).map(function(key) {
			return builderJson.components[key];
		})
	}, {
		type: 'bar',
		stack: 'component',
		silent: true,
		xAxisIndex: 1,
		yAxisIndex: 1,
		itemStyle: {
			normal: {
				color: '#eee'
			}
		},
		data: Object.keys(builderJson.components).map(function(key) {
			return builderJson.all - builderJson.components[key];
		})
	}, {
		type: 'pie',
		radius: [0, '30%'],
		center: ['22%', '32%'],
		data: Object.keys(downloadJson).map(function(key) {
			return {
				name: key.replace('.js', ''),
				value: downloadJson[key]
			}
		})
	}, {
		type: 'pie',
		radius: [0, '30%'],
		center: ['65%', '32%'],
		data: Object.keys(themeJson).map(function(key) {
			return {
				name: key.replace('.js', ''),
				value: themeJson[key]
			}
		})
	}]
}




var option5 = {
	tooltip: {
		trigger: 'axis'
	},
	legend: {
		data: ['航站区', '飞行区', '公共区', '控制区']
	},
	calculable: true,
	xAxis: [{
		type: 'category',
		boundaryGap: false,
		data: ['2017/3/31', '2017/4/1', '2017/4/2', '2017/4/3', '2017/4/4', '2017/4/5', '2017/4/6', '2017/4/7', '2017/4/8', '2017/4/9']
	}],
	yAxis: [{
		type: 'value'
	}],
	series: [{
			name: '航站区',
			type: 'line',
			stack: '总量',
			data: [5, 9, 12, 12, 1, 3, 4, 0, 23, 2],
			
		},
		{
			name: '飞行区',
			type: 'line',
			stack: '总量',
			data: [4, 8, 11, 11, 0, 2, 3, 2, 22, 1]
		},
		{
			name: '公共区',
			type: 'line',
			stack: '总量',
			data: [10, 18, 24, 24, 2, 6, 8, 3, 46, 4]
		},
		{
			name: '控制区',
			type: 'line',
			stack: '总量',
			data: [1, 6, 12, 23, 1, 2, 8, 12, 44, 4]
		},
		
	]
};

 var colorList = [
     '#59c5a7', '#51b8fe', '#fa827d'
 ];
 
 // 总和
 var total = {
     name: '总人数',
     value: '337'
 }

 var originalData = [{
     value: 113,
     name: '航站区'
 }, {
     value: 70,
     name: '公共区'
 }, {
     value: 78,
     name: "控制区"
 },
 {
     value: 86,
     name: "飞行区"
 }];

 echarts.util.each(originalData, function(item, index) {
     item.itemStyle = {
         normal: {
             color: colorList[index]
         }
     };
 });

 option6 = {
     title: [{
            text: total.name,
            left: '49%',
            top: '43%',
            textAlign: 'center',
            textBaseline: 'middle',
            textStyle: {
                color: '#999',
                fontWeight: 'normal',
                fontSize: 15
            }
        }, {
            text: total.value,
            left: '49%',
            top: '55%',
            textAlign: 'center',
            textBaseline: 'middle',
            textStyle: {
                color: '#666',
                fontWeight: 'normal',
                fontSize: 20
            }
        }],
        
        tooltip: {
		trigger: 'item',
		formatter: "{a} <br/>{b} : {c} ({d}%)"
	},
        
        legend: {
		orient: 'vertical',
		left: 'left',
		data: ['航站区', '飞行区', '控制区', '公共区']
	},
     series: [{
         hoverAnimation: true, //设置饼图默认的展开样式
         radius: [70, 110],
         name: '安保人员数量',
         type: 'pie',
         selectedOffset: 16, //选中是扇区偏移量
         clockwise: true,
         startAngle: 90,
         label: {
             normal: {
                 textStyle: {
                     fontSize: 6,
                     color: 'gray'
                 }
             }
         },
         labelLine: {
             normal: {
                 lineStyle: {
                     color: '#999',
					 
                 }
             }
         },
         
         data: originalData,
         itemStyle:{ 
                            normal:{ 
                                label:{ 
                                   show: true, 
                                   formatter: '{b} : {c}' 
                                }, 
                                labelLine :{show:true}
                            } 
                        } 
     }],
     
 };

var option7 = {
	tooltip: {
		trigger: 'axis',
		axisPointer: { // 坐标轴指示器，坐标轴触发有效
			type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
		}
	},
	calculable: true,
	yAxis: [{
		type: 'value'
	}],
	xAxis: [{
		type: 'category',
		data: ['出发大厅', '到达大厅', '候机大厅', '值机口', '安检口', '登机口','电梯扶道']
	}],
	series: [

		{
			name: '安保人员分布状况',
			type: 'bar',
			/*  stack: '总量', */
			itemStyle: {
				normal: {
					label: {
						show: true,
						position: 'top'
					}
				}
			},
			data: [45, 12, 13, 23, 20,8,5]
		}
	]
};






chart1.setOption(option1);
chart2.setOption(option2);
chart21.setOption(option21);
chart22.setOption(option22);
chart23.setOption(option23);
chart3.setOption(option3);
chart5.setOption(option5);
chart6.setOption(option6);
chart7.setOption(option7);
window.onresize = function () {
    //重置容器高宽
    resizeWorldMapContainer();
    chart1.resize();
    chart2.resize();
    chart21.resize();
    chart22.resize();
    chart23.resize();
    chart3.resize();
    chart5.resize();
    chart6.resize();
    chart7.resize();
};