//初始化图层id集合
var cdArrayObj = new Array();
// 初始化图层集合
var layArrayObj = new Array();
var map = new AMap.Map("gdmap", {
	resizeEnable : true,
	zoom : 18,
	center : [ 116.604005, 40.079351 ]
});

var normalAccess = [ [ 116.608668, 40.078834 ], [ 116.607273, 40.078719 ],
		[ 116.608174, 40.078415 ], [ 116.609505, 40.078711 ],
		[ 116.613485, 40.077832 ], [ 116.614322, 40.078645 ],
		[ 116.609387, 40.077898 ], [ 116.610299, 40.078563 ],
		[ 116.610299, 40.077416 ], [ 116.612943, 40.077096 ],
		[ 116.610835, 40.076673 ], [ 116.612723, 40.07625 ],
		[ 116.611082, 40.075731 ], [ 116.612906, 40.075312 ],
		[ 116.611146, 40.075008 ], [ 116.613088, 40.074417 ],
		[ 116.611318, 40.074113 ]

];
var errorAccess = [ [ 116.610985, 40.077319 ], [ 116.612514, 40.077286 ],
		[ 116.611221, 40.076933 ] ];
var outLineAccess = [ [ 116.611398, 40.07704 ], [ 116.612557, 40.076966 ],
		[ 116.611441, 40.076527 ], [ 116.611629, 40.075324 ],
		[ 116.61246, 40.07539 ] ];

var infoWindow = new AMap.InfoWindow({
	offset : new AMap.Pixel(0, -30)
});
var icon, marker;

if (!isSupportCanvas()) {
	alert('热力图仅对支持canvas的浏览器适用,您所使用的浏览器不能使用热力图功能,请换个浏览器试试~')
}

// 判断浏览区是否支持canvas
function isSupportCanvas() {
	var elem = document.createElement('canvas');
	return !!(elem.getContext && elem.getContext('2d'));
}

map.on('indoor_create', function() {
	map.indoorMap.showIndoorMap('B0FFG18LKR', 3);
})
var indoorMap = map.indoorMap;

// 存放摄像机标记
var access = new Array();

// 地图上添加门禁
function addAccessMarker(rootUrl) {
	addSxtMark(rootUrl);
}
// 添加正常门禁
function addSxtMark(rootUrl) {
	iconUrl = rootUrl + "/img/GisLocation/access.png";
	icon = new AMap.Icon({
		size : new AMap.Size(24, 24), // 图标大小
		image : iconUrl,
	});
	for (var i = 0; i < normalAccess.length; i++) {
		marker = new AMap.Marker({
			position : normalAccess[i],
			map : map,
			icon : icon
		});
		cdArrayObj.push("sxt");
		access.push(marker);
		var html = '<div class="layer-content" style="">';
		html += '<table>';
		html += '<tr>';
		html += '<th>设备名称：</th>';
		html += '<td>门禁' + i + '</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>设备类型：</th>';
		html += '<td>安防类</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>所属部门：</th>';
		html += '<td>航站楼管理中心</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>设备厂家：</th>';
		html += '<td>博世</td>';
		html += '</tr>';
		html += ' <tr>';
		html += '<th>IP  地  址：</th>';
		html += '<td>10.168.3.55</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>工作状态：</th>';
		html += ' <td>正常</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>在线状态：</th>';
		html += ' <td>在线</td>';
		html += '</tr>';
		html += '</table>';
		html += '</div>';

		marker.content = html;
		marker.on('mouseover', markerClick);
		// marker.emit('click', {target: marker});
	}
	// 添加损坏门禁
	addErrorSxtMark(rootUrl);
	// 添加离线门禁
	addOutSxtMark(rootUrl);
}

function addErrorSxtMark(rootUrl) {
	iconUrl = rootUrl + "/img/GisLocation/access_damage.png";
	icon = new AMap.Icon({
		size : new AMap.Size(24, 24), // 图标大小
		image : iconUrl,
	});
	for (var i = 0; i < errorAccess.length; i++) {
		marker = new AMap.Marker({
			position : errorAccess[i],
			map : map,
			icon : icon
		});
		cdArrayObj.push("sxt");
		access.push(marker);
		var html = '<div class="layer-content" style="">';
		html += '<table>';
		html += '<tr>';
		html += '<th>设备名称：</th>';
		html += '<td>门禁' + 17 + i + '</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>设备类型：</th>';
		html += '<td>安防类</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>所属部门：</th>';
		html += '<td>航站楼管理中心</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>设备厂家：</th>';
		html += '<td>博世</td>';
		html += '</tr>';
		html += ' <tr>';
		html += '<th>IP  地  址：</th>';
		html += '<td>10.168.3.5</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>工作状态：</th>';
		html += ' <td>故障</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>在线状态：</th>';
		html += ' <td>故障</td>';
		html += '</tr>';
		html += '</table>';
		html += '</div>';

		marker.content = html;
		marker.on('mouseover', markerClick);
	}

}

function addOutSxtMark(rootUrl) {
	iconUrl = rootUrl + "/img/GisLocation/access_offline.png";
	icon = new AMap.Icon({
		size : new AMap.Size(24, 24), // 图标大小
		image : iconUrl,
	});
	for (var i = 0; i < outLineAccess.length; i++) {
		marker = new AMap.Marker({
			position : outLineAccess[i],
			map : map,
			icon : icon
		});
		cdArrayObj.push("sxt");
		access.push(marker);
		var html = '<div class="layer-content" style="">';
		html += '<table>';
		html += '<tr>';
		html += '<th>设备名称：</th>';
		html += '<td>门禁</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>设备类型：</th>';
		html += '<td>安防类</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>所属部门：</th>';
		html += '<td>航站楼管理中心</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>设备厂家：</th>';
		html += '<td>博世</td>';
		html += '</tr>';
		html += ' <tr>';
		html += '<th>IP  地  址：</th>';
		html += '<td>10.168.3.5</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>工作状态：</th>';
		html += ' <td>正常</td>';
		html += '</tr>';
		html += '<tr>';
		html += '<th>在线状态：</th>';
		html += ' <td>离线</td>';
		html += '</tr>';
		html += '</table>';
		html += '</div>';

		marker.content = html;
		marker.on('mouseover', markerClick);
	}

}

// 鼠标移动上面
function markerClick(e) {
	infoWindow.setContent(e.target.content);
	infoWindow.open(map, e.target.getPosition());
}

map.setFitView();

// 画点线面

$(document).ready(
		function() {
			// 在地图中添加MouseTool插件
			var mouseTool = new AMap.MouseTool(map);
			// 在地图中添加MouseTool插件
			map.plugin([ "AMap.MouseTool" ], function() {
				// 鼠标工具插件添加draw事件监听
				AMap.event.addListener(mouseTool, "draw", function callback(e) {
					var eObject = e.obj;// obj属性就是鼠标事件完成所绘制的覆盖物对象。
					// 描点的时候有问题
					openTable();
				});
				mouseTool.measureArea(); // 调用鼠标工具的面积量测功能
			});

			AMap.event.addDomListener(document.getElementById('polygon'),
					'click', function() {
						mouseTool.polygon();
					}, false);
		});

function openTable() {
	$(".main_table").css("display", "block");
	$(".main_graphic").css("display", "block");
}

// 清楚地图所有覆盖物
function clearAllCovers() {
	map.clearMap();
}
// 显示某一种标记
function showGisMarker(marker) {
	for (var i = 0; i < marker.length; i++) {
		marker[i].show();
	}
}
// 隐藏某一种标记
function hideGisMarker(marker) {
	for (var i = 0; i < marker.length; i++) {
		marker[i].hide();
	}
}

//门禁按钮 
function hideAccess(){
	hideGisMarker(access);
}

