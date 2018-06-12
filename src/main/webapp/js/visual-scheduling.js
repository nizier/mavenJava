//初始化图层id集合
var cdArrayObj = new Array(); 
//初始化图层集合
var layArrayObj = new Array();
var map = new AMap.Map("scheduling_map", {resizeEnable: true,zoom: 18,center: [116.604005,40.079351]});

var eventLnglats = [
    				[116.611115, 40.077319],
    				[116.612564, 40.077286],
    				[116.611221, 40.076933],
    				[116.611229, 40.076933],
    				[116.611345, 40.076933]
    				
    			];
var alarm2 = [
              [116.608678,40.078864],
              [116.607273,40.078769],
              [116.608174,40.078465],
              [116.609575,40.078761],
              [116.613475,40.077862],
	       	   [116.614372,40.078755],
	       	   [116.609377,40.077868],
	       	   [116.610279,40.078563],
	       	   [116.610279,40.077466],
	       	   [116.612973,40.077066],
	       	   [116.610875,40.076663],
	       	   [116.612773,40.076263],
	       	   [116.611072,40.075761],
	       	   [116.612976,40.075362],
	       	   [116.611176,40.075068],
	       	   [116.613078,40.074467],
	       	   [116.611378,40.074163]
	       	   
           ];
var around2 = [
              [116.608178,40.078964],
              [116.607173,40.078969],
              [116.608074,40.078865],
              [116.609275,40.078761],
              [116.613375,40.077362],
	       	   [116.614372,40.073755],
	       	   [116.608377,40.077468],
	       	   [116.610279,40.078663],
	       	   [116.610379,40.077366],
	       	   [116.612873,40.077166],
	       	   [116.610875,40.076663],
	       	   [116.612873,40.076763],
	       	   [116.611172,40.075061],
	       	   [116.612876,40.075062],
	       	   [116.611276,40.075168],
	       	   [116.613178,40.074567],
	       	   [116.611278,40.074363]
	       	   
           ];
var lnglats = [
               [116.608668,40.078834],
               [116.607273,40.078719],
               [116.608174,40.078415],
               [116.609505,40.078711],
               [116.613485,40.077832],
	       	   [116.614322,40.078645],
	       	   [116.609387,40.077898],
	       	   [116.610299,40.078563],
	       	   [116.610299,40.077416],
	       	   [116.612943,40.077096],
	       	   [116.610835,40.076673],
	       	   [116.612723,40.07625],
	       	   [116.611082,40.075731],
	       	   [116.612906,40.075312],
	       	   [116.611146,40.075008],
	       	   [116.613088,40.074417],
	       	   [116.611318,40.074113],
	       	   
				
	       	   
           ];
var access2 = [
               [116.603668,40.078234],
               [116.605273,40.078319],
               [116.607174,40.078415],
               [116.602505,40.078311],
               [116.610485,40.077882],
	       	   [116.614422,40.078645],
	       	   [116.609397,40.077848],
	       	   [116.610299,40.078663],
	       	   [116.610399,40.077416],
	       	   [116.612843,40.077996],
	       	   [116.610235,40.076173],
	       	   [116.612323,40.07635],
	       	   [116.611882,40.075331],
	       	   [116.612006,40.075512],
	       	   [116.611046,40.075108],
	       	   [116.613188,40.074417],
	       	   [116.611218,40.074913],
	       	   [116.611908,40.076207]
	       	   
           ];
var errorSxtlnglats = [
               [116.610985,40.077319],
               [116.612514,40.077286],
               [116.611221,40.076933]
           ];
var outLinelnglats = [
               [116.611398,40.07704],
               [116.612557,40.076966],
               [116.611441,40.076527],
               [116.611629,40.075324],
               [116.612198,40.077327],
               [116.61246,40.07539]
           ];
var jylnglats = [
               [116.611747,40.075501],
               [116.611709,40.076223],
               [116.611693,40.076173],
               [116.611661,40.076026],
               [116.612192,40.076227],
               [116.612198,40.076327],
               [116.612198,40.077327],
               [116.612198,40.077397],
               [116.612398,40.077397],
               [116.612458,40.077397],
               [116.612598,40.077457],
               [116.612698,40.077507]
               
	       	   
           ];


var oneEventlnglat =[[116.611908,40.076207]];

var infoWindow = new AMap.InfoWindow({offset: new AMap.Pixel(0, -30)});
var icon,marker;

if (!isSupportCanvas()) {
    alert('热力图仅对支持canvas的浏览器适用,您所使用的浏览器不能使用热力图功能,请换个浏览器试试~')
}

//判断浏览区是否支持canvas
function isSupportCanvas() {
    var elem = document.createElement('canvas');
    return !!(elem.getContext && elem.getContext('2d'));
}

/*AMap.plugin(['AMap.ToolBar','AMap.Scale','AMap.OverView'],
	    function(){
	        map.addControl(new AMap.ToolBar());

	        map.addControl(new AMap.Scale()); //比例缩放

	        map.addControl(new AMap.OverView({isOpen:true}));
	});*/

map.on('indoor_create',function(){
    map.indoorMap.showIndoorMap('B0FFG18LKR',3);
})
var indoorMap = map.indoorMap;
//console.log(map.indoorMap);
//indoorMap.on('complete',function(){
//	addSxtMark('/xjyjjy');
//})

//存放生成的灭火器标记
var fireExtinguishers = new Array();

//灭火器位置
var fireExtinguisherLnglats = [
    				[116.611115, 40.077319],
    				[116.612764, 40.077286],
    				[116.613221, 40.076933],
    				[116.611640, 40.076933],
    				[116.611345, 40.076933]
    				
    			];
//地图上添加灭火器标记
function addFireExtinguisherMark(rootUrl){
	iconUrl = rootUrl+"/img/GisLocation/fire_extinguisher.png";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(20, 20),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < fireExtinguisherLnglats.length; i++) {
	    marker = new AMap.Marker({
	        position: fireExtinguisherLnglats[i],
	        map: map,
			icon:icon
	    });
		fireExtinguishers.push(marker);
		marker.hide();
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>设备名称：</th>';
		html+=  '<td>灭火器'+i+'</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备类型：</th>';
		html+=  '<td>消防</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属部门：</th>';
		html+=  '<td>消防中心</td>';
		html+='</tr>';
		html+=' <tr>';
		html+=  '<th>地址</th>';
		html+=  '<td>T1航站楼1号候机大厅</td>';
		html+= '</tr>';
		html+= '<tr>';
		html+=  '<th>状态：</th>';
		html+= ' <td>正常</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';

	    marker.content = html;
	    marker.on('mouseover', markerClick);
	}
}

//显示灭火器
function showFireExtinguisher(){
	for(var i=0;i<fireExtinguishers.length;i++){
		fireExtinguishers[i].show();
	}
}

//隐藏灭火器
function hideFireExtinguisher(){
	for(var i=0;i<fireExtinguishers.length;i++){
		fireExtinguishers[i].hide();
	}
}

//隐藏,显示各种安保资源 ---------------------------------------------->
$(document).ready(function(){
	
	
	
	$("#fire-extinguisher").click(function(){
	    if($(this).is(":checked")){
	        showFireExtinguisher();
	    }else{
	        hideFireExtinguisher();
	    }
	});
	
	$("#security-guard").click(function(){
	    if($(this).is(":checked")){
	        showSecurityGuard();
	    }else{
	        hideSecurityGuard();
	    }
	});
	
	$("#camera").click(function(){
	    if($(this).is(":checked")){
	        showCamera();
	    }else{
	        hideCamera();
	    }
	});
	$("#alarm1").click(function(){
		 if($(this).is(":checked")){
		        console.log("选中");
		        showAlarm();
		    }else{
		        console.log("未选中");
		        hideAlarm();
		    }
	});
	$("#around").click(function(){
		 if($(this).is(":checked")){
		        console.log("选中");
		        showAround();
		    }else{
		        console.log("未选中");
		        hideAround();
		    }
	});
	$("#access").click(function(){
		 if($(this).is(":checked")){
		        console.log("选中");
		        showAccess();
		    }else{
		        console.log("未选中");
		        hideAccess();
		    }
	});
	$("#alert-event").click(function(){
	    if($(this).is(":checked")){
	        showGisMarker(alertEvents);
	    }else{
	        hideGisMarker(alertEvents);
	    }
	});
	
	
});

//存放摄像机标记
var cameras = new Array();

//地图上添加摄像头
function addCameraMarker(rootUrl){
	addSxtMark(rootUrl);
}
function addSxtMark(rootUrl){
	iconUrl = rootUrl+"/img/GisLocation/camera.png";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < lnglats.length; i++) {
	    marker = new AMap.Marker({
	        position: lnglats[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("sxt");
		//layArrayObj.push(marker);
	    //隐藏摄像头
	    marker.hide();
	    cameras.push(marker);
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>设备名称：</th>';
		html+=  '<td>摄像头'+i+'</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备类型：</th>';
		html+=  '<td>视频</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>云台类型：</th>';
		html+=  '<td>枪机</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属部门：</th>';
		html+=  '<td>航站楼管理中心</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备厂家：</th>';
		html+=  '<td>博世</td>';
		html+='</tr>';
		html+=' <tr>';
		html+=  '<th>IP  地  址：</th>';
		html+=  '<td>10.168.3.55</td>';
		html+= '</tr>';
		html+= '<tr>';
		html+=  '<th>工作状态：</th>';
		html+= ' <td>正常</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>在线状态：</th>';
		html+= ' <td>在线</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';
		html+='<div class="layer-button">';
  		html+='<li onclick="changeSp(\''+i+'\')" style="cursor: pointer;"><em><img src="/sodb/img/GisLocation/real_time_video.png"></em>实时视频 </li>';
  		html+='</div>';
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
        //marker.emit('click', {target: marker});
	}
	//添加损坏摄像头
	addErrorSxtMark(rootUrl);
	//添加离线摄像头
	addOutSxtMark(rootUrl);
}


function addErrorSxtMark(rootUrl){
	iconUrl = rootUrl+"/img/GisLocation/camera.png";//_damage
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < errorSxtlnglats.length; i++) {
	    marker = new AMap.Marker({
	        position: errorSxtlnglats[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("sxt");
		//layArrayObj.push(marker);
	    marker.hide();
	    cameras.push(marker);
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>设备名称：</th>';
		html+=  '<td>摄像头'+17+i+'</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备类型：</th>';
		html+=  '<td>视频</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>云台类型：</th>';
		html+=  '<td>枪机</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属部门：</th>';
		html+=  '<td>航站楼管理中心</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备厂家：</th>';
		html+=  '<td>博世</td>';
		html+='</tr>';
		html+=' <tr>';
		html+=  '<th>IP  地  址：</th>';
		html+=  '<td>10.168.3.5</td>';
		html+= '</tr>';
		html+= '<tr>';
		html+=  '<th>工作状态：</th>';
		html+= ' <td>故障</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>在线状态：</th>';
		html+= ' <td>在线</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';
		html+='<div class="layer-button">';
  		html+='<li onclick="changeSp(\''+i+'\')" style="cursor: pointer;"><em><img src="/sodb/img/GisLocation/real_time_video.png"></em>实时视频 </li>';
  		html+='</div>';
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
//	    marker.emit('click', {target: marker});
	}
	
}


function addOutSxtMark(rootUrl){
	iconUrl = rootUrl+"/img/GisLocation/camera_offline.png";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < outLinelnglats.length; i++) {
	    marker = new AMap.Marker({
	        position: outLinelnglats[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("sxt");
		//layArrayObj.push(marker);
	    marker.hide();
	    cameras.push(marker);
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>设备名称：</th>';
		html+=  '<td>摄像头'+20+i+'</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备类型：</th>';
		html+=  '<td>视频</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>云台类型：</th>';
		html+=  '<td>枪机</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属部门：</th>';
		html+=  '<td>航站楼管理中心</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备厂家：</th>';
		html+=  '<td>博世</td>';
		html+='</tr>';
		html+=' <tr>';
		html+=  '<th>IP  地  址：</th>';
		html+=  '<td>10.168.3.5</td>';
		html+= '</tr>';
		html+= '<tr>';
		html+=  '<th>工作状态：</th>';
		html+= ' <td>正常</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>在线状态：</th>';
		html+= ' <td>离线</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';
//		html+='<div class="layer-button">';
//  		html+='<li onclick="changeSp(\''+i+'\')" style="cursor: pointer;"><em><img src="'+rootUrl+'/resources/metronic/global/gis/css/img/ico-shipin.png"></em>实时视频 </li>';
//  		html+='</div>';
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
//	    marker.emit('click', {target: marker});
	}
	
}
//存放人工报警设备
var alarms=new Array();
//地图上添加报警设备
function addAlarmMarker(rootUrl){
	addAlarm(rootUrl);
}
function addAlarm(rootUrl){
	iconUrl = rootUrl+"/img/GisLocation/alarm.jpg";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < alarm2.length; i++) {
	    marker = new AMap.Marker({
	        position: alarm2[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("rgbj");
		//layArrayObj.push(marker);
	    alarms.push(marker);
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>设备名称：</th>';
		html+=  '<td>报警器'+i+'</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备类型：</th>';
		html+=  '<td>报警系统</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>云台类型：</th>';
		html+=  '<td>枪机</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属部门：</th>';
		html+=  '<td>航站楼管理中心</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备厂家：</th>';
		html+=  '<td>博世</td>';
		html+='</tr>';
		html+=' <tr>';
		html+=  '<th>IP  地  址：</th>';
		html+=  '<td>10.168.3.55</td>';
		html+= '</tr>';
		html+= '<tr>';
		html+=  '<th>工作状态：</th>';
		html+= ' <td>正常</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>在线状态：</th>';
		html+= ' <td>在线</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
        //marker.emit('click', {target: marker});
	}
}
//存放围界设备
var arounds=new Array();
//地图上围界设备
function addAroundMarker(rootUrl){
	addAround(rootUrl);
}
function addAround(rootUrl){
	iconUrl = rootUrl+"/img/GisLocation/around.jpg";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < around2.length; i++) {
	    marker = new AMap.Marker({
	        position: around2[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("wj");
		//layArrayObj.push(marker);
	    arounds.push(marker);
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>设备名称：</th>';
		html+=  '<td>围界'+i+'</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备类型：</th>';
		html+=  '<td>安防类</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>云台类型：</th>';
		html+=  '<td>枪机</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属部门：</th>';
		html+=  '<td>飞行区管理中心</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备厂家：</th>';
		html+=  '<td>博世</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>工作状态：</th>';
		html+= ' <td>正常</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
        //marker.emit('click', {target: marker});
	}
}
//存放门禁设备
var access=new Array();
//地图上门禁设备
function addAccessMarker(rootUrl){
	addAccess(rootUrl);
}
function addAccess(rootUrl){
	iconUrl = rootUrl+"/img/GisLocation/access.jpg";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < access2.length; i++) {
	    marker = new AMap.Marker({
	        position: access2[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("mj");
		//layArrayObj.push(marker);
	    arounds.push(marker);
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>设备名称：</th>';
		html+=  '<td>门禁'+i+'</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备类型：</th>';
		html+=  '<td>安防类</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>云台类型：</th>';
		html+=  '<td>枪机</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属部门：</th>';
		html+=  '<td>航站楼管理中心</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备厂家：</th>';
		html+=  '<td>博世</td>';
		html+='</tr>';
		html+=' <tr>';
		html+=  '<th>IP  地  址：</th>';
		html+=  '<td>10.168.3.55</td>';
		html+= '</tr>';
		html+= '<tr>'; 
		html+=  '<th>工作状态：</th>';
		html+= ' <td>正常</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>在线状态：</th>';
		html+= ' <td>在线</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
        //marker.emit('click', {target: marker});
	}
}
//显示围界设备
function showAround(){
	for(var i=0;i<arounds.length;i++){
		arounds[i].show();
	}
}
//隐藏围界设备
function hideAround(){
	for(var i=0;i<arounds.length;i++){
		arounds[i].hide();
	}
}
//显示门禁设备
function showAccess(){
	for(var i=0;i<access.length;i++){
		access[i].show();
	}
}
//隐藏门禁设备
function hideAccess(){
	for(var i=0;i<access.length;i++){
		access[i].hide();
	}
}
//显示人工报警设备
function showAlarm(){
	for(var i=0;i<alarms.length;i++){
		alarms[i].show();
	}
}
//隐藏人工报警设备
function hideAlarm(){
	for(var i=0;i<alarms.length;i++){
		alarms[i].hide();
	}
}
//显示摄像机
function showCamera(){
	for(var i=0;i<cameras.length;i++){
		cameras[i].show();
	}
}
//隐藏摄像机
function hideCamera(){
	for(var i=0;i<cameras.length;i++){
		cameras[i].hide();
	}
}

//保存安全事件的标记
var alertEvents = new Array();

//添加事件标记
function addEventMark(rootUrl){
	iconUrl = rootUrl+"/img/GisLocation/alert_event.gif";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < eventLnglats.length; i++) {
	    marker = new AMap.Marker({
	        position: lnglats[i],
	        map: map,
			icon:icon
	    });
	    alertEvents.push(marker);
	    var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>报警名称：</th>';
		html+=  '<td>摄像机故障</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>报警编号：</th>';
		html+=  '<td>102304</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>报警类型：</th>';
		html+=  '<td>视频丢失报警</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>报警级别：</th>';
		html+=  '<td>三级</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属楼层：</th>';
		html+=  '<td>T3三楼</td>';
		html+='</tr>';
		html+=' <tr>';
		html+=  '<th>报警时间：</th>';
		html+=  '<td>2017-03-02 12:32:32</td>';
		html+= '</tr>';
		html+= '<tr>';
		html+=  '<th>报警细类：</th>';
		html+= ' <td>视频丢失故障</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>处理状态：</th>';
		html+= ' <td>未处理</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备编号：</th>';
		html+= ' <td>ITC-23</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设别名称：</th>';
		html+= ' <td>ITC-23</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备类型：</th>';
		html+= ' <td>视频</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属楼层：</th>';
		html+= ' <td>T3三楼</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>报警地址：</th>';
		html+= ' <td>ITC-001</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';
		html+='<div class="layer-button">';
  		html+='<a>录入核实信息</a><a>查看预案</a><a>误报</a><a onclick="changeSp(\''+i+'\')">实时视频</a>';
  		html+='</div>';
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
//	    marker.emit('click', {target: marker});
	}
	
}

//--------------------------------->
//航班相关事件

var nearByResoureLnglat = []; //附近相关资源

function addEventMark1(rootUrl){
	iconUrl = rootUrl+"/img/GisLocation/alert_event.gif";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < errorSxtlnglats.length; i++) {
	    marker = new AMap.Marker({
	        position: errorSxtlnglats[i],
	        map: map,
			icon:icon
	    });
	    alertEvents.push(marker);
	    //marker.hide();		
		var html = '<div class="" style="width:320px;">';
		html+="<table class='table table-bordered'>";
		html+= '<tr>';
		html+=  "<th>报警名称</th>";
		html+=  '<td>登机口发现危险物品</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>报警编号</th>';
		html+=  '<td>102304</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>报警类型</th>';
		html+=  '<td>航班相关报警</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>报警级别</th>';
		html+=  '<td>三级</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属楼层</th>';
		html+=  '<td>T3航站楼3号登机口</td>';
		html+='</tr>';
		html+=' <tr>';
		html+=  '<th>报警时间</th>';
		html+=  '<td>2017-03-02 12:32:32</td>';
		html+= '</tr>';
		html+= '<tr>';
		html+=  '<th>报警细类</th>';
		html+= ' <td>发现隐蔽的危险物品</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>处理状态</th>';
		html+= ' <td>未处理</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属楼层</th>';
		html+= ' <td>T3三楼</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>报警地址</th>';
		html+= ' <td>ITC-001</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';	
		
		html+="<div class='row' style='margin-top:-12px;'>";
		html+="<div class='col-sm-9'>";
		html+="<input type='text' class='form-control' placeholder='请输入要搜索的资源类型'/>";
		html+="</div>";
		html+="<div class='col-sm-3'>";
  		html+="<button  class='nearby sbtn sbtn-blue' onclick='test();'>搜资源</button><br>";
  		html+="</div>";
  		html+="</div>";
  		
  		
  		html+="<div style='width:320px;'>";	
  		html+="<input  type='checkbox' onclick='showCameras(this)'/>调视频(摄像机)";
  		html+="<input  type='checkbox' onclick='showWatchers(this);'>发指令(值班人员,值班车辆)";
  		//html+="<input class='vehicle_list' type='checkbox'/>";
  		//html+="<input class='hydrant_list' type='checkbox'/>消防栓";
  		html+='</div>';
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
//	    marker.emit('click', {target: marker});
	}
	
}

var securityGuards = new Array();
//地图上添加安保人员
function addSecurityGuardMark(rootUrl){
	addJyMark(rootUrl);
}

function addJyMark(rootUrl){
	iconUrl = rootUrl+"/img/GisLocation/police.png";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < errorSxtlnglats.length; i++) {
	    marker = new AMap.Marker({
	        position: errorSxtlnglats[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("jlbs");
		//layArrayObj.push(marker);
	    securityGuards.push(marker);
	    marker.hide();
	/*	var html = '<div class="layer-content" style="">';
		html='<div class="layer-content-title">10010-安保人员A</div>';
		html+='<div class="layer-content-body">';
		html+='<div class="pa-p">... 18:00:00</div>';
		html+='<div class="talk-con">60岁左右男性老人，需医疗救助</div>';
		html+='<div class="pb-p">tsde 18:01:00</div>';
		html+='<div class="talk-con">尽快处理</div>';
		html+='<div class="pa-p">... 18:02:00</div>';
		html+='<div class="talk-con">收到</div>';
		html+='<div class="pb-p">tsde 18:03:00</div>';
		html+='<div class="talk-con">事件结束</div>';
		html+='</div>';
		html+='<div class="layer-content-bottom">';
  		html+='<input name="talkCon" /><button>发送</button>';
  		html+='</div>';
  		html+='</div>';
  		
	    marker.content = html;*/
	    marker.on('mouseover', markerClick);
//	    marker.emit('click', {target: marker});
	}
}

//显示安保人员
function showSecurityGuard(){
	for(var i=0;i<securityGuards.length;i++){
		securityGuards[i].show();
	}
}
//隐藏安保人员
function hideSecurityGuard(){
	for(var i=0;i<securityGuards.length;i++){
		securityGuards[i].hide();
	}
}



function addEventMark2(rootUrl){
	iconUrl = rootUrl+"/img/GisLocation/alert_event.gif";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < oneEventlnglat.length; i++) {
	    marker = new AMap.Marker({
	        position: oneEventlnglat[i],
	        map: map,
			icon:icon
	    });
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>报警名称：</th>';
		html+=  '<td>医疗救助</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>报警编号：</th>';
		html+=  '<td>102304</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>报警类型：</th>';
		html+=  '<td>医疗报警</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>报警级别：</th>';
		html+=  '<td>三级</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属楼层：</th>';
		html+=  '<td>T3三楼</td>';
		html+='</tr>';
		html+=' <tr>';
		html+=  '<th>报警时间：</th>';
		html+=  '<td>2017.04.08 18：00:00</td>';
		html+= '</tr>';
		html+= '<tr>';
		html+=  '<th>报警细类：</th>';
		html+= ' <td>旅客医疗求助</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>处理状态：</th>';
		html+= ' <td>未处理</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备编号：</th>';
		html+= ' <td>ITC-23</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设别名称：</th>';
		html+= ' <td>ITC-23</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>设备类型：</th>';
		html+= ' <td>视频</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属楼层：</th>';
		html+= ' <td>T3三楼</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>报警地址：</th>';
		html+= ' <td>ITC-001</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';
		html+='<div class="layer-button">';
  		html+='<a>录入核实信息</a><a>查看预案</a><a>误报</a><a onclick="changeSp(\''+i+'\')">实时视频</a>';
  		html+='</div>';
		
	    marker.content = html;
	    marker.on('click', markerClick);
//	    marker.emit('click', {target: marker});
	}
	
}

var hot;
//热力图
function startHot(){
	setHot();
	hot = window.setInterval(function(){setHot();},60*1000);
}

var heatmap;
function setHot(){
	heatmapDatas = new Array();
	setHeatmapDatas();
	if(heatmap){
		removePointLay(heatmap);
	}
	map.plugin(["AMap.Heatmap"], function() {
	    //初始化heatmap对象
	    heatmap = new AMap.Heatmap(map, {
	        radius: 25, //给定半径
	        opacity: [0, 0.8]
	    });
	    //设置数据集：该数据为北京部分“公园”数据
	    heatmap.setDataSet({
	        data: heatmapDatas,
	        max: 60
	    });
	});
	cdArrayObj.push("rlmd");
	layArrayObj.push(heatmap);
	heatmap.show();
}

var heatmapDatas = new Array();
function setHeatmapDatas(){
	for(i=0;i<50;i++){
		var lng = getRandomData(116.61154,116.612554);
		var lat = getRandomData(40.077114,40.074586);
		var count = 10+i;
		var data = {"lng": lng,"lat": lat,"count": count}
		heatmapDatas.push(data);
	}
}

function getRandomData(max,min){
	var Range = max - min;
    var Rand = Math.random();
    var num = min + Math.round(Rand * Range * Math.pow(10, 7)) / Math.pow(10, 7) ; //四舍五入
    return num;
}
//鼠标移动上面
function markerClick(e) {
    infoWindow.setContent(e.target.content);
    infoWindow.open(map, e.target.getPosition());
}



map.setFitView();

//画面
var polygonArr1 = [[116.610599,40.076609],[116.610604,40.076562],[116.61094,40.076702],[116.610929,40.07673]];
var polygonArr2 = [[116.612628,40.076284],[116.612861,40.076287],[116.612895,40.076244],[116.612624,40.076257]];
var polygonArr3 = [[116.610975,40.075723],[116.610975,40.075723],[116.610975,40.075723],[116.611023,40.075706]];
function addPolygon(){
	var polygonArrs = new Array();//多边形覆盖物节点坐标数组
    polygonArrs.push(polygonArr1);
    polygonArrs.push(polygonArr2);
//    polygonArrs.push(polygonArr3);
    for(i=0;i<polygonArrs.length;i++){
    	var  polygon = new AMap.Polygon({
            path: polygonArrs[i],//设置多边形边界路径
            strokeColor: "#FF33FF", //线颜色
            strokeOpacity: 0.7, //线透明度
            strokeWeight: 3,    //线宽
            fillColor: "red", //填充色
            fillOpacity: 0.35//填充透明度
        });
        polygon.setMap(map);
    }
}

//显示摄像头监控视频
function changeSp(aa){
	var d = dialog({
	    title: '实时视频',
	    content: '<div style="width:250px;height:250px;"><img width="100%" height="100%" style="border:none" src="/sodb/img/GisLocation/live_action_picture.jpg" ></div>'
	});
	d.show();
}
//青岛显示隐藏右侧列表页
function hideRightTable(obj){
	$(obj).hide().siblings().show();
	$(".right_table_div").animate({width:'0px'},"slow");
	$(".map").animate({width:'100%'},"slow");
	$(".right_table_info").animate({right:'0'},"slow");
}
function showRightTable(obj){
	$(obj).hide().siblings().show();
	$(".right_table_div").animate({width:'20%'},"slow");
	$(".map").animate({width:'80%'},"slow");
	$(".right_table_info").animate({right:'20%'},"slow");
}




//点击复选框触发事件
function clickCheckbox(obj,type){
    if(obj.checked){
 	   switch(type)
 	   {
 		 case 0://固定点
 			fillConten(obj,type);
 		 break;
 		 case 1://移动设备监控 包括人员 车辆
 			startHot();
 		 break;
 	   }
 	}else{
 		unChecked(obj);
 	} 
}

//选择复选框  --获取数据
function fillConten(checkObj,type){
	$(checkObj).prev().addClass("active");
	$(checkObj).parent().parent().prev().children().eq(0).addClass("active");
	var checkId = $(checkObj).attr("id");
	var checkValue = checkObj.value;
	var checkTile = checkObj.title;
	if(checkValue == "jlbs"){
		addJyMark("/xjyjjy");
	}else if(checkValue == "sxt"){
		addSxtMark("/xjyjjy");
	}
}

//据图层标示移出相应图层
function unChecked(obj){
	var i = 0;
	$(obj).prev().removeClass("active");
	$(obj).parent().parent().find("input").each(function(){
		if(this.checked){
			i++;
		}
	});
	if(i<=0){
		$(obj).parent().parent().prev().children().eq(0).removeClass("active");
	}
	var layName = obj.value;
	if(clearInterval == "rlmd"){
		clearInterval();
	}
   for (i=0; i<cdArrayObj.length;i++) { 
      if(cdArrayObj[i] == layName){
	    removePointLay(layArrayObj[i]);
	    cdArrayObj.splice(i,1," ");
	    layArrayObj.splice(i,1," ");
	  }
   }
}

function removePointLay(obj){
	map.remove(obj);
}

$(function(){
    //下拉框效果
    $('.geography_box_title').click(function(){
        if($(this).next().is(':hidden')){
            $(this).next().slideDown();
            $(this).find('.title-tip-hide').hide();
            $(this).find('.title-tip-show').fadeIn();
        }else{
            $(this).next().slideUp();
            $(this).find('.title-tip-show').hide();
            $(this).find('.title-tip-hide').fadeIn();

        }
    })
})
//初始化左侧菜单导航
function initLeftCon(){
	var accordion_head = $('.accordion > li > a'),
		accordion_body = $('.accordion li > .sub-menu');
	accordion_head.first().addClass('active').next().slideDown('normal');
	accordion_head.on('click', function(event) {
		event.preventDefault();
		if ($(this).attr('class') != 'active'){
			accordion_body.slideUp('normal');
			$(this).next().stop(true,true).slideToggle('normal');
			accordion_head.removeClass('active');
			$(this).addClass('active');
		}
	});
}

//初始化事件
function initEvent(){
	$(".table_nav").click(function(){
		if($("#select_id").val() != null){
			$("#main_table").toggle("slow");
		}else{
			$("#prompt").show();
		}
	});
	$(".graphic_nav").click(function(){
		if($("#select_id").val() != null){
			$("#tjt").toggle("slow");
		}else{
			$("#prompt").show();
		}
	});
	
	$(".time_nav").on(
			"click",
			function() {
				$('#icon_timeAxis').show();
		}
	);


	
	$("#menu_display").on(
		"mouseover",
		function() {
			$(".float-tool-title").css( {
				left : 240,
				top : 85
			}).find(".title").html("菜单");
			$(".float-tool-title div").last()
					.removeClass("right-arrow").addClass("up-arrow");
			$(".float-tool-title").show()
		}).on("mouseout", function() {
			$(".float-tool-title").hide();
		}).on("click",function(){
			$(".left-down").slideToggle();
		})
			
	$("#down-up").on("click",function(){
		$(".left-down").slideToggle();
	})
	
	$(".specialNav").on("click",function(){
		$(".classify-content").show();
		$(".search-content").hide();
		$("#cx").removeClass("active");
		$("#cd").addClass("active");
		$(".placeNav").removeClass("active");
		$(".specialNav").addClass("active");
	})
	$(".placeNav").on("click",function(){
		$(".classify-content").hide();
		$(".search-content").show();
		$("#cd").removeClass("active");
		$("#cx").addClass("active");
		$(".specialNav").removeClass("active");
		$(".placeNav").addClass("active");
	})
}

//显示选中区域视频
function showSelectedAreaVideo() {
	$("#testvideo").css({
		"display": "block"
	});
};

//隐藏选中区域视频
function hideSelectedAreaVideo(){
	$("#testvideo").css({
		"display": "none"
	});
}

//清楚地图所有覆盖物
function clearAllCovers(){
	map.clearMap();
}

//显示某一种标记
function showGisMarker(marker){
	for(var i=0;i<marker.length;i++){
		marker[i].show();
	}
}
//隐藏某一种标记
function hideGisMarker(marker){
	for(var i=0;i<marker.length;i++){
		marker[i].hide();
	}
}

function showPartGisMarker(marker,start,end){
	for(var i=start;i<end;i++){
		marker[i].show();
	}
}

//显示某一种标记的一部分
function hidePartGisMarker(marker,start,end){
	for(var i=start;i<end;i++){
		marker[i].hide();
	}
}

//显示右侧的值班人员
function showWatchers(obj){
	if(obj.checked){
		$("#people_list").show();
		showPartGisMarker(securityGuards, 2,3);
	}
	else{
		$("#people_list").hide();
		hidePartGisMarker(securityGuards, 2, 3);
	}
}

//显示右侧摄像机	//html+="<input class='camera_list' type='checkbox'/>摄像头";
function showCameras(obj){
	if(obj.checked){
		$("#camera_list").show();
		showPartGisMarker(cameras, 19, 20);
		
	}
	else{
		$("#camera_list").hide();
		hidePartGisMarker(cameras, 19, 20);
	}
}





