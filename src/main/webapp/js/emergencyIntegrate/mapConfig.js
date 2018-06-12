	var map = new BMap.Map("map");
	var hospitalMarker = [];
	var airplaneMarker = [];
	var ambulanceMarker = [];
	var barrierMarker = [];
	var fireStationMarker = [];
	var policemanMarker = [];
	var doctorMarker = [];
	var fireCarMarker = [];
	var firefighterMarker = [];
	var fireStation = [];
	var firewall = [];
	var hydrant = [];
	var policeCar = [];
	var policeman = [];
	var warning = [];
	// 创建地图实例  
	var point = new BMap.Point(116.618263,40.08377);
	// 创建点坐标  
	map.centerAndZoom(point, 15);
	// 初始化地图，设置中心点坐标和地图级别  
	map.addControl(new BMap.NavigationControl());    
	map.addControl(new BMap.ScaleControl());    
	map.addControl(new BMap.OverviewMapControl());    
	map.addControl(new BMap.MapTypeControl());    
	map.setCurrentCity("北京"); // 仅当设置城市信息时，MapTypeControl的切换功能才能可用   
/*	map.addEventListener("click",function(e){
		alert(e.point.lng + "," + e.point.lat);
	});*/
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
		
		return marker;
	}

