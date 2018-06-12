var line = [];
var tempLine = [];
var hospitalMarker = [];
var airplaneMarker = [];
var ambulanceMarker = [];
var barrierMarker = [];
var fireStationMarker = [];
var policemanMarker = [];
var policeCarMarker = [];
var doctorMarker = [];
var fireCarMarker = [];
var firefighterMarker = [];
var fireStation = [];
var firewall = [];
var hydrant = [];
var policeCar = [];
var policeman = [];
var warning = [];
var linesPoints = [];
var bounds = [];
var stayMarkers = [];
var removeMarker = function(e,ee,marker){
	map.removeOverlay(marker);
}

var sy = new BMap.Symbol(BMap_Symbol_SHAPE_BACKWARD_OPEN_ARROW, {
    scale: 0.6,//图标缩放大小
    strokeColor:'#fff',//设置矢量图标的线填充颜色
    strokeWeight: '2',//设置线宽
});
var icons = new BMap.IconSequence(sy, '10', '30');

function addRoute(route,icon,speed,rotation) {
	temLu = new BMapLib.LuShu(map,route,{
	defaultContent:"",//"从天安门到百度大厦"
	autoView:true,//是否开启自动视野调整，如果开启那么路书在运动过程中会根据视野自动调整
	icon : icon,
	speed: 1300,
	enableRotation:rotation,//是否设置marker随着道路的走向进行旋转
	landmarkPois: [
       
     ]});
	lushu.push(temLu);
}

//设计路线
var start;
var end;
var tempOverlayArray = [];
var driving = new BMap.DrivingRoute(map, {renderOptions:{map: map, autoViewport: false},
	onSearchComplete:routeSearchComplete,
	setInfoHtmlSetCallback:markersSetCallback
	});

 function enableDrawLine(e){
	$("#drawLineType").val(e);
 	showMsg("请选择起点。",2000);
 	var cont = 0;
 	map.addEventListener("click",function getStartAndEnd(e){
		cont++;
		if(cont == 1){
			start = new BMap.Point(e.point.lng,e.point.lat);
			var myIcon = new BMap.Icon("/EMS-Prototype/img/icon/start.png", new BMap.Size(30,30));
			var startMarker = new BMap.Marker(start,{icon:myIcon}); 
			map.addOverlay(startMarker);   
			tempOverlayArray.push(startMarker);
			showMsg("请选择终点",2000);
		}else if(cont == 2){
			end = new BMap.Point(e.point.lng,e.point.lat);
			var myIcon = new BMap.Icon("/EMS-Prototype/img/icon/end.png", new BMap.Size(30,30));
			var endMarker = new BMap.Marker(end,{icon:myIcon}); 
			map.removeEventListener("click",getStartAndEnd);
			map.addOverlay(endMarker); 
			tempOverlayArray.push(endMarker);
			driving.search(start, end);
			for(i in tempOverlayArray){
				tempOverlayArray[i].remove();
			}
			map.enableDragging();
		}else{
			map.removeEventListener("click",getStartAndEnd);
		}
	});
}
 
 function markersSetCallback(marker) {
		alert(marker);
 } 
//路线设计完成 回调函数
function routeSearchComplete(e) {
	var drawLineType =  $("#drawLineType").val();
	var res = $(".openHandler");
	res.removeClass("openHandler");
	var index = res.children(".info-text").attr("index");
	var resLine = e.getPlan(0).getRoute(0).getPath();
	resLine.type = drawLineType;
    var sendData = {
    	array:resLine,
    	type :drawLineType,
    	method:"line"
    }
    websocket.send(JSON.stringify(sendData));
}

var myDrawingManagerObject = new BMapLib.DrawingManager(map, {isOpen: false, 
    drawingType: BMAP_DRAWING_MARKER, enableDrawingTool: true,
    enableCalculate: false,
    drawingToolOptions: {
        anchor: BMAP_ANCHOR_TOP_LEFT,
        offset: new BMap.Size(5, 5),
        drawingTypes : [
            BMAP_DRAWING_MARKER,
            BMAP_DRAWING_CIRCLE,
            BMAP_DRAWING_POLYLINE,
            BMAP_DRAWING_POLYGON,
            BMAP_DRAWING_RECTANGLE 
         ]
    },
    polylineOptions: {
        strokeColor: "red",
        strokeWeight: '4',
    }
 });

myDrawingManagerObject.addEventListener("overlaycomplete", function addRouteLine(e, overlay) {
	var drawLineType =  $("#drawLineType").val();
	var res = $(".openHandler");
	res.removeClass("openHandler");
	var index = res.children(".info-text").attr("index");
	
	/*for(i in line){
		map.removeOverlay(line[i]);
	}*/
	
    var lineArray = e.overlay.getPath();
    line.push(e.overlay);
    lineArray.type = drawLineType;
    var sendData = {
    	array:lineArray,
    	type :drawLineType,
    	method:"line"
    }
    websocket.send(JSON.stringify(sendData));
    for(i in lineArray){
    	if(i==0){
    		var marker = createBlankMarker(lineArray[i].lng,lineArray[i].lat,drawLineType);
        	map.addOverlay(marker);
        	line.push(marker);
    	}else if(i==lineArray.length - 1){
        	var marker = createBlankMarker(lineArray[i].lng,lineArray[i].lat,'end');
        	map.addOverlay(marker);
        	line.push(marker);
    	}
    	
    }
    var icon =  new BMap.Icon('/EMS-Prototype/img/icon/'+drawLineType+'.png', new BMap.Size(30,30));
    var speed = 20;
    var rotation = false;
    /*addRoute(lineArray,icon,speed,rotation);*/
});

function createBlankMarker(x,y,type) {
	var iconUrl =  "/EMS-Prototype/img/icon/"+type+".png";
	var myIcon = new BMap.Icon(iconUrl, new BMap.Size(32,32));
	var marker = new BMap.Marker(new BMap.Point(x,y),{icon:myIcon});
	return marker;
}

function createMarker(x,y,type) { 
	var iconUrl =  "/EMS-Prototype/img/icon/"+type+".png";
	var myIcon = new BMap.Icon(iconUrl, new BMap.Size(32,32),{infoWindowAnchor:new BMap.Size(15,-10)});
	var marker = new BMap.Marker(new BMap.Point(x,y),{icon:myIcon});
	var markerMenu=new BMap.ContextMenu();
	markerMenu.addItem(new BMap.MenuItem('删除',removeMarker.bind(marker)));
	marker.addContextMenu(markerMenu);
	var uuid = Math.uuid();
	stayMarkers[uuid] = marker;
	var strVar = "";
	    strVar += "<table class=\"table\" style=\"margin-top:10px;\">\n";
	    strVar += "<tbody>\n";
	    strVar += "<tr>\n";
	    strVar += "	<td>\n";
	    strVar += "		名称\n";
	    strVar += "	<\/td>\n";
	    strVar += "	<td>\n";
	    strVar += "		\n";
	    strVar += "	<\/td>\n";
	    strVar += "<\/tr>\n";
	    strVar += "\n";
	    strVar += "<tr>\n";
	    strVar += "	<td>\n";
	    strVar += "		编号\n";
	    strVar += "	<\/td>\n";
	    strVar += "	<td>\n";
	    strVar += "		\n";
	    strVar += "	<\/td>\n";
	    strVar += "<\/tr>\n";
	    strVar += "\n";
	    strVar += "<tr>\n";
	    strVar += "	<td>\n";
	    strVar += "		经度\n";
	    strVar += "	<\/td>\n";
	    strVar += "	<td>\n";
	    strVar += "		\n";
	    strVar += "	<\/td>\n";
	    strVar += "<\/tr>\n";
	    strVar += "\n";
	    strVar += "<tr>\n";
	    strVar += "	<td>\n";
	    strVar += "		纬度\n";
	    strVar += "	<\/td>\n";
	    strVar += "	<td>\n";
	    strVar += "		\n";
	    strVar += "	<\/td>\n";
	    strVar += "<\/tr>\n";
	    strVar += "<\/tbody>\n";
	    strVar += "<\/table>\n";
	    strVar += "<div style='margin-bottom:10px;float:left'>调整方向</div>\n";
	    strVar += "<button style='margin-bottom:10px; float:right;' onclick=\"stopJump(this,'"+uuid+"')\" status='stop'>跳动</button>\n";
	    strVar += "<input type=\"range\" min=\"0\" max=\"360\" value=\"0\"  onmousemove=\"rotate(this.value,'"+uuid+"')\"/>\n";
	var infoWindow = new BMap.InfoWindow(strVar); 
	marker.addEventListener("click", function(){          
		   this.openInfoWindow(infoWindow);
	});
	return marker;
}

function clearRoute() {
	for(i in line){
		map.removeOverlay(line[i]);
	}
	driving.clearResults();
	lushu = [];
}

function rotate(value,uuid){
	stayMarkers[uuid].setRotation(value);
}

function stopJump(e,uuid){
	if($(e).attr("status")=='jump'){
		$(e).html("跳动");
		$(e).attr("status","stop");
		stayMarkers[uuid].setAnimation(null);
	}else{
		$(e).html("停止跳动");
		$(e).attr("status","jump");
		stayMarkers[uuid].setAnimation(BMAP_ANIMATION_BOUNCE);
	}
	
	
}

