<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description" />
<meta content="" name="author" />

<!-- BEGIN 	left menu related css -->

<!-- BEGIN THEME STYLES 替换新样式-->
<link href="<%=path %>/css/layout.css" rel="stylesheet" type="text/css" />

<link href="<%=path %>/css/custom.css" rel="stylesheet" type="text/css" />
<!-- END THEME STYLES 替换新样式结束-->

<link rel="stylesheet" type="text/css" href="<%=path %>/css/index.css"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/leaflet.css"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/leftbar.css" />
<!-- leftMenu.jsp中的样式 -->
<link rel="stylesheet" type="text/css" href="<%=path %>/css/geography-left-menu.css" />


<link rel="stylesheet" type="text/css" href="<%=path %>/css/jquery-ui.css"/>
<!-- 右侧弹出窗口 -->
<link rel="stylesheet" type="text/css" href="<%=path %>/css/statictable.css"/>
<link rel="stylesheet" href="<%=path %>/css/jquery.dataTables.css" type="text/css"/>

<!-- 二级目录的css -->
<link rel="stylesheet" href="<%=path %>/css/style.min.css" />
<link rel="stylesheet" href="<%=path %>/css/style.css" /> 
<!-- END left menu related css -->

<link href="<%=path %>/css/components.css" id="style_components" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/custom.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/layout.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/ui-dialog.css"/>

<!-- 高德css -->
<link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
<!-- BEGIN OTHER STYLES -->
<link href="<%=path %>/css/global.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/css/visual-scheduling.css" rel="stylesheet" type="text/css" />
<!-- END OTHER STYLES -->

<link href="<%=path%>/css/video.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/css/lzz.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/js/dragDiv.js"></script>

<style type="text/css">
#map_console{
   position:absolute;
   top:0.3%;
   left:77%;
}

#search_event{
  z-index:4444;
  position:absolute;
  left:77.53%;
  top:0.66666%; 
  
  
}

#basic-addon2{
  height:34px;
  cursor:pointer;
  position:relative;
  top:-34px;
  left:100%;
} 

table tr th{
   text-align: center;
}

table tr td{
   text-align: center;
}

</style>
</head>
<!-- BEGIN BODY -->
<body>

<div class="window" id="window_event">
		<div class="title-event">
			<span>安全事件列表 </span>	
	        <a style="z-index:666; margin-left: -20px;" class="glyphicon glyphicon-remove"   id="remove-btn3"  onclick="removeWin($('#window_event'));" ></a>
		</div>
				
		<div class="gis-content">
			<table class="table table-condensed">
			<tr>
				<th>序号</th><th>事件名称</th><th>事件级别</th><th>事件状态</th>
			</tr>
			<tr><td>1</td><td>闯入门禁</td><td>三级</td><td>未处理</td></tr>
			<tr class="success"><td>2</td><td>不明危险物品</td><td>四级</td><td>已处理</td></tr>
			<tr class="error"><td>3</td><td>不明身份的人</td><td>二级</td><td>处理中</td></tr>
			<tr class="warning"><td>4</td><td>闯入门禁</td><td>三级</td><td>未处理</td></tr>
			<tr class="info"><td>5</td><td>闯入门禁</td><td>三级</td><td>未处理</td></tr>
		</table>	
		<ul class="pagination" style="position:relative;bottom:26px;left:68px;">
				<li> <a href="#">上一页</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">下一页</a></li>
			</ul>	
		</div>

</div>

<div class="window" id="people_list" style="display:none;">
		<div class="title-event">
			<span>值班人员 </span>	
	        <a style="z-index:666; margin-left: -20px;" class="glyphicon glyphicon-remove"   id="remove-btn3"  onclick="removeWin($('#people_list'));" ></a>
		</div>
				
		<div class="gis-content">
			<table class="table table-condensed">
			<tr>
				<th>序号</th><th>姓名</th><th>状态</th><th>操作</th>
			</tr>
			<tr class="default"><td>1</td><td>钱建</td><td>在线</td><td><span data-toggle="modal" data-target="#handle_event" style="cursor: pointer">发布指令</span></td></tr>
			<tr class="success"><td>2</td><td>赵四</td><td>离线</td><td><span data-toggle="modal" data-target="#handle_event" style="cursor: pointer">发布指令</span></td></tr>
			<tr class="error"><td>3</td><td>孙无</td><td>在线</td><td><span data-toggle="modal" data-target="#handle_event" style="cursor: pointer">发布指令</span></td></tr>
			<tr class="warning"><td>4</td><td>周立</td><td>离线</td><td><span data-toggle="modal" data-target="#handle_event" style="cursor: pointer">发布指令</span></td></tr>
			<tr class="info"><td>5</td><td>杜贺</td><td>离线</td><td><span data-toggle="modal" data-target="#handle_event" style="cursor: pointer">发布指令</span></td></tr>
		</table>	
		<ul class="pagination" style="position:relative;bottom:26px;left:68px;">
				<li> <a href="#">上一页</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">下一页</a></li>
			</ul>	
		</div>

</div>


<div class="window" id="camera_list" style='display: none;' >
		<div class="title-event">
			<span>摄像机列表 </span>	
	        <a style="z-index:666; margin-left: -20px;" class="glyphicon glyphicon-remove"   id="remove-btn3"  onclick="removeWin($('#camera_list'));" ></a>
		</div>
				
		<div class="gis-content">
			<table class="table table-condensed">
			<tr>
				<th>序号</th><th>摄像机编号</th><th>状态</th><th>操作</th>
			</tr>
			<tr class="default"><td>1</td><td>T1-1F-001</td><td>在线</td><td><span data-toggle="modal" data-target="#look-video" style="cursor: pointer">查看视频</span></td></tr>
			<tr class="success"><td>2</td><td>T1-1F-007</td><td>离线</td><td><span data-toggle="modal" data-target="#look-video" style="cursor: pointer">查看视频</span></td></tr>
			<tr class="error"><td>3</td><td>T1-2F-009</td><td>在线</td><td><span data-toggle="modal" data-target="#look-video" style="cursor: pointer">查看视频</span></td></tr>
			<tr class="warning"><td>4</td><td>T1-2F-010</td><td>离线</td><td><span data-toggle="modal" data-target="#look-video" style="cursor: pointer">查看视频</span></td></tr>
			<tr class="info"><td>5</td><td>T1-2F-013</td><td>离线</td><td><span data-toggle="modal" data-target="#look-video" style="cursor: pointer">查看视频</span></td></tr>
		</table>	
		<ul class="pagination" style="position:relative;bottom:26px;left:68px;">
				<li> <a href="#">上一页</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">下一页</a></li>
			</ul>	
		</div>

</div>

<div class="main">
      <!-- 承载地图的div -->
	  <div id="scheduling_map" class="map "></div>     
</div>



<div class="row" id="search_event">
     <div class="" >
         <div class="input-group" >
                 <input type="text" class="form-control" placeholder="输入安全事件搜索条件">
                 <span class="input-group-addon glyphicon glyphicon-search" id="basic-addon2"></span>
          </div>
     </div>
    
</div>

<!-- 事件处理的模态框（Modal） -->
<div class="modal fade container" id="handle_event" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index:300000">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
			    <h1 style="font-size: 15px;">发布指令</h1>
				<button type="button" style="background-color: black;" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				
			</div>
			<div class="modal-body">
			<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="word_command">
				<form class="form-horizontal" role="form">
					<div class="form-group has-success">                                                    
						<label class="col-sm-2 control-label">事件名称</label>
						<div class="col-sm-10">
							<input class="form-control" id="focusedInput" type="text" value="非法门禁闯入" disabled>
						</div>
					</div>
					<div class="form-group has-success">
						<label for="inputPassword" class="col-sm-2 control-label">发生地点</label>
						<div class="col-sm-10">
							<input class="form-control" id="disabledInput" type="text" value="1号航站楼5号门禁" disabled>
						</div>
					</div>
					
					<div class="form-group has-success">
							<label for="disabledTextInput" class="col-sm-2 control-label">发布人</label>
							<div class="col-sm-10">
								<input type="text" id="disabledTextInput" class="form-control" value="李文文" disabled>
							</div>
					</div>
	
											
					<div class="form-group has-success">
							<label for="disabledTextInput" class="col-sm-2 control-label">接收人</label>
							<div class="col-sm-10">
								<input type='text' class="form-control" value='钱建' disabled="disabled"/>
							</div>
					</div>
					
					<div class="form-group has-success">
						<label class="col-sm-2 control-label" for="inputSuccess">指令</label>
						<div class="col-sm-10">
							<textarea class="form-control" rows="3" placeholder="请输入指令"></textarea>
						</div>
					</div>
					
					<div class="form-group has-success" >
						
						<div class="col-sm-offset-10">
						    <button type="submit" class="sbtn sbtn-blue sbtn30" style="margin-left:-295px;">发布</button>
						    <button type="reset"  class="sbtn sbtn-default sbtn30" style="margin-left:45px;" data-dismiss="modal" >取消</button>
							
						</div>
						
					</div>

				</form>
			</div>

		</div>
				
			<!-- </div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				
			</div> -->
		</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

<!-- 查看摄像机的模态框（Modal） -->
<div class="modal fade container" id="look-video" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index:300000">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
			    <h1 style="font-size: 15px;">摄像机:T1-1F-001</h1>
				<button type="button" style="background-color: black;" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				
			</div>
			<div class="modal-body">
			<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active">
				<form class="form-horizontal" role="form">
				   <div class="form-group">
						<img alt="" src="<%=path %>/img/GisLocation/zoom_image_video.png" style="border:3px solid black;width:560px;">
					</div>

					

				</form>
			</div>

		</div>
				
			</div>
			<div class="modal-footer">
		        
		        <button type="button"  class="btn btn-default" data-dismiss="modal">关闭
				</button>
				
			</div> 
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

<!-- left menu related js -->
<script type="text/javascript" src="<%=path %>/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=path %>/extends/leaflet-0.7.js" ></script>
<script type="text/javascript" src="<%=path %>/js/MovingMarker.js" ></script>
<script type="text/javascript" src="<%=path %>/js/Control.FullScreen.js" ></script>
<script type="text/javascript" src="<%=path %>/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="<%=path %>/js/scrollbar.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/layer.js" ></script>
<script type="text/javascript" src="<%=path %>/js/init.js" ></script>
<script type="text/javascript" src="<%=path %>/extends/echarts.js"></script>
<!-- left menu related js -->

<!-- 弹出框 -->
<script type="text/javascript" src="<%=path %>/js/dialog-plus.js" ></script>
<!-- 高德地图涉及的js-->
<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=d3acfe752801099b1a31afe817c6edcf&plugin=AMap.MouseTool"></script>
<!-- <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script> -->

<!-- 引入可以拖拽的div js -->
<script type="text/javascript" src="<%=path %>/js/dragDiv.js"></script>

<script type="text/javascript" src="<%=path %>/js/visual-scheduling.js" ></script>
</body>
<script type="text/javascript">
	$(document).ready( function() {
		
		//添加摄像头
		addCameraMarker('<%=path %>');
		
		//添加安保人员
		addSecurityGuardMark('<%=path %>');
		
		//添加安全事件(航线相关)
		addEventMark1('<%=path %>');
		
		//添加灭火器
		addFireExtinguisherMark('<%=path %>');
		
	});
</script>


<script type="text/javascript">
// test 
$(function(){  
        $('#window_event').dragDrop();
        $('#window_event').css({'position':'absolute','left':'68.33%','top':'5.36%'}); //window_event初始位置
       
});

$(function(){
	$("#people_list").dragDrop();
	$('#people_list').css({'position':'absolute','left':'68.33%','top':'34.94%'}); //window_event初始位置
})

$(function(){
	$("#camera_list").dragDrop();
	$('#camera_list').css({'position':'absolute','left':'68.33%','top':'64.53%'}); //window_event初始位置
})

//隐藏窗口
function removeWin(e){
	e.addClass('hidden');
}
//弹出窗口
function showWin(e){
	e.removeClass('hidden');
}

//搜索后显示安全事件
$('#basic-addon2').click(function(){
	showGisMarker(alertEvents);
});

	

	
	
	
	
</script>

</html>