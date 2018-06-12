bxt = {
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        orient: 'horizontal',
        left: '25%',
        data: ['在线','离线','故障']
    },
    series : [
        {
            name: '访问来源',
            type: 'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:[
                {value:100, name:'在线'},
                {value:23, name:'离线'},
                {value:5, name:'故障'},
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};
txt = {
		   tooltip: {
		       trigger: "item",
		       formatter: "{a} <br/>{b} : {c}"
		   },
		   legend: {
		       x: '25%',
		       data: ["在线", "离线","故障"]
		   },
		   xAxis: [
		       {
		           type: "category",
		           name: "x",
		           splitLine: {show: false},
		           data: ["一", "二", "三", "四", "五", "六", "七"]
		       }
		   ],
		   yAxis: [
		       {
		           type: "log",
		           name: "y"
		       }
		   ],
		   calculable: true,
		   series: [
		       {
		           name: "在线",
		           type: "line",
		           data: [1, 3, 9, 27, 81, 24, 41]

		       },
		       {
		           name: "离线",
		           type: "line",
		           data: [1, 2, 4, 8, 3, 3, 6]

		       },
		       {
		           name: "故障",
		           type: "line",
		           data: [0, 2, 3, 2, 5, 1, 1]

		       }
		   ]
		};
		  
zxt = {
	  
	    tooltip : {
	        trigger: 'axis'
	    },
	    legend: {
	    	left: '25%',
	        data:['在线','离线','故障']
	    },
	    calculable : true,
	    xAxis : [
	        {
	            type : 'category',
	            data : ['周一','周二','周三','周四','周五','周六','周天']
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : [
	        {
	            name:'在线',
	            type:'bar',
	            data:[10, 21, 22,13, 41, 23, 22],
	            
	        },
	        {
	            name:'离线',
	            type:'bar',
	            data:[10, 1, 2,3, 4, 3, 2],
	           
	        },
	        {
	            name:'故障',
	            type:'bar',
	            data:[0, 1, 2,3, 4, 2, 3],
	           
	        }
	    ]
	};
	                    
