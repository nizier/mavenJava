var sy = new BMap.Symbol(BMap_Symbol_SHAPE_BACKWARD_OPEN_ARROW, {
    scale: 0.6,//图标缩放大小
    strokeColor:'#fff',//设置矢量图标的线填充颜色
    strokeWeight: '2',//设置线宽
});
var icons = new BMap.IconSequence(sy, '10', '30');
var policemanRoute = [
	new BMap.Point(116.350658,39.938285),
	new BMap.Point(116.386446,39.939281),
	new BMap.Point(116.389034,39.913828),
	new BMap.Point(116.442501,39.914603)
];

var fireCarRoute = [
	new BMap.Point(116.524014,39.89751),
	new BMap.Point(116.524014,39.89751),
	new BMap.Point(116.495555,39.912565),
	new BMap.Point(116.441801,39.924075),
];

var polyline =new BMap.Polyline(policemanRoute, {
	   enableEditing: false,//是否启用线编辑，默认为false
	   enableClicking: true,//是否响应点击事件，默认为true
	   icons:[icons],
	   strokeWeight:'8',//折线的宽度，以像素为单位
	   strokeOpacity: 0.8,//折线的透明度，取值范围0 - 1
	   strokeColor:"#18a45b" //折线颜色
});

var fireCarLine =new BMap.Polyline(fireCarRoute, {
	   enableEditing: false,//是否启用线编辑，默认为false
	   enableClicking: true,//是否响应点击事件，默认为true
	   icons:[icons],
	   strokeWeight:'8',//折线的宽度，以像素为单位
	   strokeOpacity: 0.8,//折线的透明度，取值范围0 - 1
	   strokeColor:"#a41818" //折线颜色
});


var strVar1 = "";
strVar1 += "<div class=\"log-container col-md-12\">\n";
strVar1 += "	<div class=\"log-time\">\n";
strVar1 += "		11:30 :\n";
strVar1 += "	<\/div>\n";
strVar1 += "	<div class=\"log-content\">\n";
strVar1 += "		接到警情汇报后，立即报乌鲁木齐机场分公司启动《乌鲁木齐国际机场突发事件处置预案》和《乌鲁木齐地窝堡国际机场航空安保应急处置预案》\n";
strVar1 += "	<\/div>\n";
strVar1 += "<\/div>\n";
    
var strVar2 = "";
strVar2 += "<div class=\"log-container col-md-12\">\n";
strVar2 += "	<div class=\"log-time\">\n";
strVar2 += "		11:35 :\n";
strVar2 += "	<\/div>\n";
strVar2 += "	<div class=\"log-content\">\n";
strVar2 += "		上传下达乌鲁木齐机场分公司值班领导（总指挥）指令\n";
strVar2 += "	<\/div>\n";
strVar2 += "<\/div>\n";    


var strVar3 = "";
strVar3 += "<div class=\"log-container col-md-12\">\n";
strVar3 += "	<div class=\"log-time\">\n";
strVar3 += "		11:45 :\n";
strVar3 += "	<\/div>\n";
strVar3 += "	<div class=\"log-content\">\n";
strVar3 += "		通知南航新疆分公司、“一关两检”等驻场单位进入应急状态。\n";
strVar3 += "	<\/div>\n";
strVar3 += "<\/div>\n";

var strVar4 = "";
strVar4 += "<div class=\"log-container col-md-12\">\n";
strVar4 += "	<div class=\"log-time\">\n";
strVar4 += "		11:50 :\n";
strVar4 += "	<\/div>\n";
strVar4 += "	<div class=\"log-content\">\n";
strVar4 += "		巡逻组、候机楼派出所、交警支队先期处置的同时，均及时向公安局值班领导汇报，" +
					"公安局上报警情的同时立即启动《民航新疆机场公安局处置乌鲁木齐国际机场暴恐犯罪活动的工作预案》，" +
					"其他各组响应，" +
					"按预案分工视情开展处置。\n";
strVar4 += "	<\/div>\n";
strVar4 += "<\/div>\n";

var strVar5 = "";
strVar5 += "<div class=\"log-container col-md-12\">\n";
strVar5 += "	<div class=\"log-time\">\n";
strVar5 += "		12:05 :\n";
strVar5 += "	<\/div>\n";
strVar5 += "	<div class=\"log-content\">\n";
strVar5 += "		值班人员立即到岗到位，按照本部门预案做好航站楼疏散准备工作\n";
strVar5 += "	<\/div>\n";
strVar5 += "<\/div>\n";

var strVar6 = "";
strVar6 += "<div class=\"log-container col-md-12\">\n";
strVar6 += "	<div class=\"log-time\">\n";
strVar6 += "		12:00 :\n";
strVar6 += "	<\/div>\n";
strVar6 += "	<div class=\"log-content\">\n";
strVar6 += "	听从指令对航站楼事发区域电力等设施设备进行检修；\n";
strVar6 += "	<\/div>\n";
strVar6 += "<\/div>\n";

var strVar7 = "";
strVar7 += "<div class=\"log-container col-md-12\">\n";
strVar7 += "	<div class=\"log-time\">\n";
strVar7 += "		12:10 :\n";
strVar7 += "	<\/div>\n";
strVar7 += "	<div class=\"log-content\">\n";
strVar7 += "	T3航站楼通道值守护卫按指令封控出口包括贵宾室出入口；\n";
strVar7 += "	<\/div>\n";
strVar7 += "<\/div>\n";


var strVar8 = "";
strVar8 += "<div class=\"log-container col-md-12\">\n";
strVar8 += "	<div class=\"log-time\">\n";
strVar8 += "		12:00 :\n";
strVar8 += "	<\/div>\n";
strVar8 += "	<div class=\"log-content\">\n";
strVar8 += "	消防车辆、人员到场后按指令进行灭火，展开救援;\n";
strVar8 += "	<\/div>\n";
strVar8 += "<\/div>\n";


