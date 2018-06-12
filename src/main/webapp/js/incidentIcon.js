//初始化图层id集合
var cdArrayObj = new Array(); 
//初始化图层集合
var layArrayObj = new Array();
//var map = new AMap.Map("gdmap", {resizeEnable: true,zoom: 18,center: [116.604005,40.079351]});
var map = new AMap.Map("mymap", {resizeEnable: true,zoom: 13,center: [116.604005,40.079351]});

var incident12 = [
               [116.612976,40.075362],
               [116.611176,40.075068],
               [116.613078,40.074467],
               [116.611378,40.074163]
           ];
var incident6=[
               [116.610299,40.078563],
	       	   [116.610299,40.077416],
	       	   [116.612943,40.077096],
	       	   [116.610835,40.076673],
	       	   [116.612723,40.07625]
               ];
var incident8=[
               [116.610387,40.078673],
	       	   [116.610467,40.077566],
	       	   [116.613936,40.077186],
	       	   [116.610946,40.076563],
	       	   [116.612844,40.07655]
	       	   
               ];

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
//	add12Mark('/xjyjjy');
//})

var incident6s=new Array();
var incident12s = new Array();
var incident8s=new Array();
function add12Marker(rootUrl){
	add12Mark(rootUrl);
}
function add12Mark(rootUrl){
	iconUrl = rootUrl+"/img/home/incident.png";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < incident12.length; i++) {
	    marker = new AMap.Marker({
	        position: incident12[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("sxt");
		//layArrayObj.push(marker);
	    incident12s.push(marker);
	   // marker.hide();
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>事件名称：</th>';
		html+=  '<td>摄像头不能遥控'+i+'</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>事件类别：</th>';
		html+=  '<td>安防安全类</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>待确认事件：</th>';
		html+=  '<td>6</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>已确认事件：</th>';
		html+=  '<td>6</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
        //marker.emit('click', {target: marker});
	}
}
function add6Marker(rootUrl){
	add6Mark(rootUrl);
}
function add6Mark(rootUrl){
	iconUrl = rootUrl+"/img/home/incident6.png";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < incident6.length; i++) {
	    marker = new AMap.Marker({
	        position: incident6[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("sxt");
		//layArrayObj.push(marker);
	    incident6s.push(marker);
	   // marker.hide();
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>事件名称：</th>';
		html+=  '<td>摄像头不能遥控'+i+'</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>事件类别：</th>';
		html+=  '<td>安防安全类</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>待确认事件：</th>';
		html+=  '<td>2</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>已确认事件：</th>';
		html+=  '<td>4</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
        //marker.emit('click', {target: marker});
	}
}
function add6Marker(rootUrl){
	add6Mark(rootUrl);
}
function add8Mark(rootUrl){
	iconUrl = rootUrl+"/img/home/incident8.png";
	icon =  new AMap.Icon({            
	    size: new AMap.Size(24, 24),  //图标大小
	    image: iconUrl,
	});
	for (var i = 0; i < incident8.length; i++) {
	    marker = new AMap.Marker({
	        position: incident8[i],
	        map: map,
			icon:icon
	    });
	    cdArrayObj.push("sxt");
		//layArrayObj.push(marker);
	    incident8s.push(marker);
	   // marker.hide();
		var html = '<div class="layer-content" style="">';
		html+='<table>';
		html+= '<tr>';
		html+=  '<th>事件名称：</th>';
		html+=  '<td>摄像头不能遥控'+i+'</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>事件类别：</th>';
		html+=  '<td>安防安全类</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>待确认事件：</th>';
		html+=  '<td>6</td>';
		html+='</tr>';
		html+= '<tr>';
		html+=  '<th>已确认事件：</th>';
		html+=  '<td>2</td>';
		html+='</tr>';
		html+='</table>';
		html+='</div>';
		
	    marker.content = html;
	    marker.on('mouseover', markerClick);
        //marker.emit('click', {target: marker});
	}
}
//鼠标移动上面
function markerClick(e) {
    infoWindow.setContent(e.target.content);
    infoWindow.open(map, e.target.getPosition());
}



map.setFitView();





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



