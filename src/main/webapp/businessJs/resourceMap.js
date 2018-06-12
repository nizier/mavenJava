//初始化图层id集合
var cdArrayObj = new Array(); 
//初始化图层集合
var layArrayObj = new Array();
var map = new AMap.Map("resourcemap", {resizeEnable: true,zoom: 18,center: [116.604005,40.079351]});

var firehumans = [
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
    var polices = [
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
    	       	   [116.611318,40.074113]
    	       	   
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
var fire = [
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
	       	   [116.611318,40.074113]
	       	   
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
	       	   [116.611218,40.074913]
	       	   
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
	$("#firesdevice").click(function(){
		 if($(this).is(":checked")){
		        console.log("选中");
		        showFiresDevice();
		    }else{
		        console.log("未选中");
		        hideFiresDevice();
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
	$("#ab").click(function(){
		 if($(this).is(":checked")){
		        console.log("选中");
		        showPolice();
		    }else{
		        console.log("未选中");
		        hidePolice();
		    }
	});
	$("#aj").click(function(){
		 if($(this).is(":checked")){
		        console.log("选中");
		        showAccess();
		    }else{
		        console.log("未选中");
		        hideAccess();
		    }
	});
	$("#xf").click(function(){
		 if($(this).is(":checked")){
		        console.log("选中");
		        showFirehuman();
		    }else{
		        console.log("未选中");
		        hideFirehuman();
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
	    cameras.push(marker);
	   // marker.hide();
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
	iconUrl = rootUrl+"/img/GisLocation/camera_damage.png";
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
	    cameras.push(marker);
	    //marker.hide();
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
		html+= ' <td>故障</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
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
	    cameras.push(marker);
	    //marker.hide();
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>设备名称：</th>';
		html+=  '<td>摄像头</td>';
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
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
	    //marker.emit('mouseover', {target: marker});
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
	    marker.hide();
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
        marker.emit('click', {target: marker});
	}
}
//存放灭火器设备
var fires_=new Array();
//地图上灭火器设备
function addFiresDeviceMarker(rootUrl){
	addFiresDevice(rootUrl);
}
function addFiresDevice(rootUrl){
	iconUrl = rootUrl+"/img/GisLocation/fire_extinguisher.png";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < fire.length; i++) {
	    marker = new AMap.Marker({
	        position: fire[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("wj");
		//layArrayObj.push(marker);
	    fires_.push(marker);
	    marker.hide();
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>设备名称：</th>';
		html+=  '<td>灭火器'+i+'</td>';
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
        marker.emit('click', {target: marker});
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
	    fires_.push(marker);
	    marker.hide();
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
        marker.emit('click', {target: marker});
	}
}
//存放安保人员标记
var police = new Array();

//地图上添加安保人员
function addPoliceMarker(rootUrl){
	addPoliceMark(rootUrl);
}
function addPoliceMark(rootUrl){
	iconUrl = rootUrl+"/img/sdhDutyManage/police.png";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < polices.length; i++) {
	    marker = new AMap.Marker({
	        position: polices[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("sxt");
		//layArrayObj.push(marker);
	    police.push(marker);
	    marker.hide();
	    var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>照片：</th>';
		html+=  '<td><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>安保人员姓名：</th>';
		html+=  '<td>张三'+i+'</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属部门：</th>';
		html+=  '<td>人力资源部门</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';	
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
        //marker.emit('click', {target: marker});
	}
	
}
//存放消防人员标记
var firehuman = new Array();

//地图上添加安保人员
function addFireHumanMarker(rootUrl){
	addFireHumanMark(rootUrl);
}
function addFireHumanMark(rootUrl){
	iconUrl = rootUrl+"/img/sdhDutyManage/firehuman.png";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < firehumans.length; i++) {
	    marker = new AMap.Marker({
	        position: firehumans[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("sxt");
		//layArrayObj.push(marker);
	    firehuman.push(marker);
	    marker.hide();
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>照片：</th>';
		html+=  '<td><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>消防人员姓名：</th>';
		html+=  '<td>张三'+i+'</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>所属部门：</th>';
		html+=  '<td>人力资源部门</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';	
	    marker.content = html;
	    marker.on('mouseover', markerClick);
        //marker.emit('click', {target: marker});
	}
	
}

//显示消防人员
function showFirehuman(){
	for(var i=0;i<firehuman.length;i++){
		firehuman[i].show();
	}
}
//隐藏消防人员
function hideFirehuman(){
	for(var i=0;i<firehuman.length;i++){
		firehuman[i].hide();
	}
}

//显示安保人员
function showPolice(){
	for(var i=0;i<police.length;i++){
		police[i].show();
	}
}
//隐藏安保人员
function hidePolice(){
	for(var i=0;i<police.length;i++){
		police[i].hide();
	}
}
//显示灭火器设备
function showFiresDevice(){
	for(var i=0;i<fires_.length;i++){
		fires_[i].show();
	}
}
//隐藏灭火器设备
function hideFiresDevice(){
	for(var i=0;i<fires_.length;i++){
		fires_[i].hide();
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
//画点线面

$(document).ready(function(){
	//在地图中添加MouseTool插件
	var mouseTool = new AMap.MouseTool(map);
	  //在地图中添加MouseTool插件
    map.plugin(["AMap.MouseTool"], function() {
        //鼠标工具插件添加draw事件监听
        AMap.event.addListener(mouseTool, "draw", function callback(e) {
            var eObject = e.obj;//obj属性就是鼠标事件完成所绘制的覆盖物对象。
           //描点的时候有问题
            //alert("此区域内有5架摄像机");
            //openDeviceInfo();
            openTable();
            //showSelectedAreaDevice();
        });
       mouseTool.measureArea();  //调用鼠标工具的面积量测功能
    });
    

//	AMap.event.addDomListener(document.getElementById('point'), 'click', function() {
//		 mouseTool.marker({
//			offset: new AMap.Pixel(-14, -11),
//			raiseOnDrag: true,
//			draggable: true
//		});
//	}, false);
//	AMap.event.addDomListener(document.getElementById('line'), 'click', function() {
//		mouseTool.polyline();
//	}, false);
	AMap.event.addDomListener(document.getElementById('polygon'), 'click', function() {
		mouseTool.polygon();
	}, false);	
});


function openTable(){
	if($(".showtable").is(":checked")){
		$("#prompt").hide();
		$(".main_table").css("display","block");	
		$(".main_graphic").css("display", "block");
	}else{					
		$(".main_table").css("display","none");
		$(".main_graphic").css("display", "none");
		$("#prompt").show();
	}
}
function openDeviceInfo() {
	//构建信息窗体中显示的内容
	var info = [];
	info.push("<div class='gis-content'>" +
			"<table class='table'>" +
			"<thead>" +
			"<tr>" +
			"<th>设备名称</th" +
			"><th>设备类型</th>"+
			"<th>安装位置</th>"+
			"<th>在线状态</th>"+
					"</tr>"+
				"</thead>"+
				"<tbody>"+
					"<tr class='success'>"+ 
 							"<td>摄像头</td>"+ 
 							"<td >安防类</td>"+ 
 							"<td >T1航站楼上方</td>"+ 
 							"<td>在线</td>"+ 
 					"</tr>"+ 
					"<tr class='success'>"+
						"<td>摄像头</td>"+
 							"<td >安防类</td>"+ 
 							"<td >T1航站楼上方</td>"+
 							"<td>在线</td>"+ 
					"</tr>"+
					"<tr class='error'>"+
						"<td>摄像头</td>"+ 
 							"<td >安防类</td>"+ 
 							"<td >T1航站楼上方</td>"+ 
 							"<td>故障</td>"+ 
					"</tr>"+
					"<tr class='warning'>"+
						"<td>摄像头</td>"+ 
 							"<td >安防类</td>"+ 
 							"<td >T1航站楼上方</td>"+ 
 							"<td>离线</td>"+ 
					"</tr>"+
					"<tr class='success'>"+
						"<td>摄像头</td>"+ 
 							"<td >安防类</td>"+ 
 							"<td >T1航站楼上方</td>"+ 
 							"<td>在线</td>"+ 
					"</tr>"+
				"</tbody>"+
			"</table>"+
			"<ul class='pagination' style='position:relative;bottom:23px;left:0;'>"+
	"<li>"+
		 "<a href='#'>上一页</a>"+
	"</li>"+
	"<li>"+
		 "<a href='#'>1</a>"+
	"</li>"+
	"<li>"+
		 "<a href='#'>2</a>"+
	"</li>"+
	"<li>"+
		 "<a href='#'>3</a>"+
	"</li>"+
	"<li>"+
		 "<a href='#'>4</a>"+
	"</li>"+
	"<li>"+
		 "<a href='#'>5</a>"+
	"</li>"+
	"<li>"+
		 "<a href='#'>下一页</a>"+
	"</li>"+
"</ul></div>");
	infoWindow = new AMap.InfoWindow({
		content: info.join("") //使用默认信息窗体框样式，显示信息内容
	});
	infoWindow.open(map, map.getCenter());
}

//显示选中区域视频
function showSelectedAreaDevice() {
	$("#area").css({
		"display": "block"
	});
};

//隐藏选中区域视频
function hideSelectedAreaDevice(){
	$("#area").css({
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



