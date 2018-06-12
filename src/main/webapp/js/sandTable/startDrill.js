var lushu = [];
$(function() {
	var iconUrl =  "/EMS-Prototype/img/icon/warning.png";
	var myIcon = new BMap.Icon(iconUrl, new BMap.Size(32,32));
	var marker = new BMap.Marker(new BMap.Point(116.442501,39.914603),{icon:myIcon});
	map.addOverlay(marker);
	marker.setAnimation(BMAP_ANIMATION_BOUNCE);
})

function startDrill() {
	alert("演练开始");
	setTimeout(function() {
		$(".info-body").append(strVar1);
		$('.info-body').scrollTop($('.info-body').height());
	}, 2000);
	
	setTimeout(function() {
		$(".info-body").append(strVar2);
		$('.info-body').scrollTop($('.info-body').height());
	}, 5000);
	
	setTimeout(function() {
		$(".info-body").append(strVar3);
		$('.info-body').scrollTop($('.info-body').height());
	}, 9000);
	
	setTimeout(function() {
		$(".info-body").append(strVar4);
		$('.info-body').scrollTop($('.info-body').height());
	}, 12000);
	
	setTimeout(function() {
		$(".info-body").append(strVar5);
		map.addOverlay(polyline); 
		 var icon =  new BMap.Icon('/EMS-Prototype/img/icon/policeman.png', new BMap.Size(30,30));
		 var speed = 20;
		 var rotation = false;
		 var pointArray = polyline.getPath();
		 addRoute(pointArray,icon,speed,rotation);
		 for(i in lushu){
			 lushu[i].start();
		 }
		 lushu = [];
		 $('.info-body').scrollTop($('.info-body').height());
	}, 17000);
	
	setTimeout(function() { 
		$(".info-body").append(strVar6);
		$('.info-body').scrollTop($('.info-body').height());
	}, 24000);
	
	setTimeout(function() {
		map.removeOverlay(polyline); 
		$(".info-body").append(strVar7);
		$('.info-body').scrollTop($('.info-body').height());
	}, 27000);
	
	setTimeout(function() {
		$(".info-body").append(strVar8);
		map.addOverlay(fireCarLine); 
		 var icon =  new BMap.Icon('/EMS-Prototype/img/icon/fireCar.png', new BMap.Size(30,30));
		 var speed = 30;
		 var rotation = false;
		 var pointArray = fireCarLine.getPath();
		 addRoute(pointArray,icon,speed,rotation);
		 for(i in lushu){
			 lushu[i].start();
		 }
		 lushu = [];
		 $('.info-body').scrollTop($('.info-body').height());
	}, 29000);
	
	setTimeout(function() {
		map.removeOverlay(fireCarLine); 
		$('.info-body').scrollTop($('.info-body').height());
	}, 38000);
}