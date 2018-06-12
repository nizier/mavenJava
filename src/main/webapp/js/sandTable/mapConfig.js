var map = new BMap.Map("map");
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
var line = [];
var myIcon = new BMap.Icon("http://lbsyun.baidu.com/jsdemo/img/Mario.png", new BMap.Size(32, 70), {imageOffset: new BMap.Size(0, 0)});
// 创建地图实例  
var point = new BMap.Point(116.618263,40.08377);
// 创建点坐标  
map.centerAndZoom(point, 15);
// 初始化地图，设置中心点坐标和地图级别  
map.addControl(new BMap.NavigationControl());    
map.addControl(new BMap.ScaleControl());    
map.addControl(new BMap.OverviewMapControl());    
map.addControl(new BMap.MapTypeControl());    
map.enableScrollWheelZoom();   //启用滚轮放大缩小，默认禁用
map.enableContinuousZoom();   //启用地图惯性拖拽，默认禁用
map.setCurrentCity("北京"); // 仅当设置城市信息时，MapTypeControl的切换功能才能可用  



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
        strokeColor: "#333"
    }
 });
myDrawingManagerObject.addEventListener("overlaycomplete", function(e, overlay) {
	for(i in line){
		map.removeOverlay(line);
	}
	
    var lineArray = e.overlay.getPath();
    line.push(e.overlay);
    for(i in lineArray){
    	if(i==0){
    		var marker = createBlankMarker(lineArray[i].lng,lineArray[i].lat,'start');
        	map.addOverlay(marker);
    	}else if(i==lineArray.length - 1){
        	var marker = createBlankMarker(lineArray[i].lng,lineArray[i].lat,'end');
        	map.addOverlay(marker);
    	}else{
        	var marker = createBlankMarker(lineArray[i].lng,lineArray[i].lat,'poi');
        	map.addOverlay(marker);
        	
    	}
    }

});

var removeMarker = function(e,ee,marker){
	map.removeOverlay(marker);
}

var enableDrawLine = function(e,ee,marker){
 	myDrawingManagerObject.setDrawingMode(BMAP_DRAWING_POLYLINE);
	myDrawingManagerObject.open();
}

function getPoint() {
	map.addEventListener("click",writePoint);
	$(".getPosBtn").css("background-color","rgba(255,255,255,1)");
}	

function writePoint(e) {
	$("#lat").val(e.point.lat);
	$("#lng").val(e.point.lng);
	$(".getPosBtn").css("background-color","rgba(255,255,255,0.5)");
}

function createMarker(x,y,type) {
	var iconUrl =  "/EMS-Prototype/img/icon/"+type+".png";
	var myIcon = new BMap.Icon(iconUrl, new BMap.Size(32,32));
	var marker = new BMap.Marker(new BMap.Point(x,y),{icon:myIcon});
	var markerMenu=new BMap.ContextMenu();
	markerMenu.addItem(new BMap.MenuItem('线路设计',enableDrawLine.bind(marker)));
	markerMenu.addItem(new BMap.MenuItem('删除',removeMarker.bind(marker)));
	marker.addContextMenu(markerMenu);
	
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
	
	
	var infoWindow = new BMap.InfoWindow(strVar); 
	marker.addEventListener("click", function(){          
		   this.openInfoWindow(infoWindow);
	});
	return marker;
}

function createBlankMarker(x,y,type) {
	var iconUrl =  "/EMS-Prototype/img/icon/"+type+".png";
	var myIcon = new BMap.Icon(iconUrl, new BMap.Size(32,32));
	var marker = new BMap.Marker(new BMap.Point(x,y),{icon:myIcon});
	return marker;
}


function showFireDrill() {
	var hos = airportData.fireCar;
	for(i in hos){
		var marker = createMarker(hos[i][0],hos[i][1],"fireCar");
		fireCarMarker.push(marker);
		map.addOverlay(marker);
	}
}

function showDrill() {
	
}

function drawLine(results){
	var opacity = 0.45;
	var planObj = results.getPlan(0);
	var b = new Array();
	var addMarkerFun = function(point,imgType,index,title){
		var url;
		var width;
		var height
		var myIcon;
		// imgType:1的场合，为起点和终点的图；2的场合为车的图形
		if(imgType == 1){
			url = "http://lbsyun.baidu.com/jsdemo/img/dest_markers.png";
			width = 42;
			height = 34;
			myIcon = new BMap.Icon(url,new BMap.Size(width, height),{offset: new BMap.Size(14, 32),imageOffset: new BMap.Size(0, 0 - index * height)});
		}else{
			url = "http://lbsyun.baidu.com/jsdemo/img/trans_icons.png";
			width = 22;
			height = 25;
			var d = 25;
			var cha = 0;
			var jia = 0
			if(index == 2){
				d = 21;
				cha = 5;
				jia = 1;
			}
			myIcon = new BMap.Icon(url,new BMap.Size(width, d),{offset: new BMap.Size(10, (11 + jia)),imageOffset: new BMap.Size(0, 0 - index * height - cha)});
		}
		
		var marker = new BMap.Marker(point, {icon: myIcon});
		if(title != null && title != ""){
			marker.setTitle(title);
		}
		// 起点和终点放在最上面
		if(imgType == 1){
			/*marker.setTop(true);*/
		}
		map.addOverlay(marker);
	}
	var addPoints = function(points){
		for(var i = 0; i < points.length; i++){
			bounds.push(points[i]);
			b.push(points[i]);
		}
	}	
	// 绘制驾车步行线路
	for (var i = 0; i < planObj.getNumRoutes(); i ++){
		var route = planObj.getRoute(i);
		if (route.getDistance(false) <= 0){continue;}
		addPoints(route.getPath());
		// 驾车线路
	}	
 	map.setViewport(bounds);	
	// 终点
	linesPoints[linesPoints.length] = b;
}

function run(){
	for(var m = 0;m < linesPoints.length; m++){
		var pts = linesPoints[m];
		var len = pts.length;
		var carMk = new BMap.Marker(pts[0],{icon:myIcon});
		map.addOverlay(carMk);
		resetMkPoint(1,len,pts,carMk)
	}
	
function resetMkPoint(i,len,pts,carMk){
		carMk.setPosition(pts[i]);
		if(i < len){
			setTimeout(function(){
				i++;
				resetMkPoint(i,len,pts,carMk);
			},400);
		}
	}
}



