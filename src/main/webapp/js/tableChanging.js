var allCameraTable = 
	"<thead>"+
"<tr>"+
	"<th>编号</th>"+
	"<th>设备名称</th>"+
	"<th>区域</th>"+
	"<th>在线状态</th>"+
	"<th>运行状况</th>"+
"</tr>"+
"</thead>"+
"<tbody>"+
"<tr  onclick=\"showDataOnButton(this,'single',0);\">"+
"	<td>MT001</td>"+
"	<td>监控视频</td>"+
"	<td>航站区</td>"+
"	<td>在线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr  onclick=\"showDataOnButton(this,'single',1);\">"+
"	<td>MT002</td>"+
"	<td>监控视频</td>"+
"	<td>航站区</td>"+
"	<td>在线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr  onclick=\"showDataOnButton(this,'single',2);\">"+
"	<td>PT001</td>"+
"	<td>全景拼接视频</td>"+
"	<td>航站区</td>"+
"	<td>在线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr>  onclick=\"showDataOnButton(this,'single',3);\""+
"	<td>PT002</td>"+
"	<td>全景拼接视频</td>"+
"	<td>航站区</td>"+
"	<td>在线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr  onclick=\"showDataOnButton(this,'single',4);\">"+
"	<td>PT003</td>"+
"	<td>全景拼接视频</td>"+
"	<td>航站区</td>"+
"	<td>在线</td>"+
"	<td>正常</td>"+
"</tr>"+
"</tbody>"	

var offlineCameraTable = 
	"<thead>"+
	"<tr>"+
	"<th>编号</th>"+
	"<th>高清摄像头</th>"+
	"<th>区域</th>"+
	"<th>在线状态</th>"+
	"<th>运行状况</th>"+
"</tr>"+
"</thead>"+
"<tbody>"+
"<tr>"+
"	<td>1</td>"+
"	<td>监控视频</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr>"+
"	<td>2</td>"+
"	<td>监控视频</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr>"+
"	<td>3</td>"+
"	<td>监控视频</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr>"+
"	<td>4</td>"+
"	<td>监控视频</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr>"+
"	<td>5</td>"+
"	<td>监控视频</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>正常</td>"+
"</tr>"+
"</tbody>"	
	
var damageCameraTable = 
	"<thead>"+
	"<tr>"+
	"<th>编号</th>"+
	"<th>监控视频</th>"+
	"<th>区域</th>"+
	"<th>在线状态</th>"+
	"<th>运行状况</th>"+
"</tr>"+
"</thead>"+
"<tbody>"+
"<tr>"+
"	<td>1</td>"+
"	<td>监控视频</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>故障</td>"+
"</tr>"+
"<tr>"+
"	<td>2</td>"+
"	<td>监控视频</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>故障</td>"+
"</tr>"+
"<tr>"+
"	<td>3</td>"+
"	<td>监控视频</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>故障</td>"+
"</tr>"+
"<tr>"+
"	<td>4</td>"+
"	<td>监控视频</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>故障</td>"+
"</tr>"+
"<tr>"+
"	<td>5</td>"+
"	<td>监控视频</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>故障</td>"+
"</tr>"+
"</tbody>"	



/////
var allCameraConditionTable = 
	"<thead>"+
"<tr>"+
	"<th>设备编号</th>"+
	"<th>设备名称</th>"+
	"<th>区域</th>"+
	"<th>在线状态</th>"+
	"<th>运行状况</th>"+
"</tr>"+
"</thead>"+
"<tbody>"+
"<tr  onclick=\"showDataOnButton(this,'single',0);\">"+
"	<td>MT001</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>在线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr  onclick=\"showDataOnButton(this,'single',1);\">"+
"	<td>MT002</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>在线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr  onclick=\"showDataOnButton(this,'single',2);\">"+
"	<td>PT001</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>在线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr>  onclick=\"showDataOnButton(this,'single',3);\""+
"	<td>PT002</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>在线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr  onclick=\"showDataOnButton(this,'single',4);\">"+
"	<td>PT003</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>在线</td>"+
"	<td>正常</td>"+
"</tr>"+
"</tbody>"	

var offlineCameraConditionTable = 
	"<thead>"+
	"<tr>"+
	"<th>设备编号</th>"+
	"<th>设备名称</th>"+
	"<th>区域</th>"+
	"<th>在线状态</th>"+
	"<th>运行状况</th>"+
"</tr>"+
"</thead>"+
"<tbody>"+
"<tr>"+
"	<td>1</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr>"+
"	<td>2</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr>"+
"	<td>3</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr>"+
"	<td>4</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>正常</td>"+
"</tr>"+
"<tr>"+
"	<td>5</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>正常</td>"+
"</tr>"+
"</tbody>"	
	
var damageCameraConditionTable = 
	"<thead>"+
	"<tr>"+
	"<th>设备编号</th>"+
	"<th>监控视频</th>"+
	"<th>区域</th>"+
	"<th>在线状态</th>"+
	"<th>运行状况</th>"+
"</tr>"+
"</thead>"+
"<tbody>"+
"<tr>"+
"	<td>1</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>故障</td>"+
"</tr>"+
"<tr>"+
"	<td>2</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>故障</td>"+
"</tr>"+
"<tr>"+
"	<td>3</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>故障</td>"+
"</tr>"+
"<tr>"+
"	<td>4</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>故障</td>"+
"</tr>"+
"<tr>"+
"	<td>5</td>"+
"	<td>高清摄像头</td>"+
"	<td>航站区</td>"+
"	<td>离线</td>"+
"	<td>故障</td>"+
"</tr>"+
"</tbody>"	
	
		
	
	