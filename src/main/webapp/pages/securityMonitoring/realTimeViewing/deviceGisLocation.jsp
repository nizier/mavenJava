<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header.jsp"%>
<%@include file="/pages/securityMonitoring/realTimeViewing/districtMenu.jsp" %>

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
<link href="<%=path %>/css/emergency2.css" rel="stylesheet" type="text/css" />
<!-- END OTHER STYLES -->
<style type="text/css">

#map_console{
   width:400px;
   height:50px;
   position:absolute;
   top:0.3%;
   left:88%;
}


#video_tab{
   z-index:99999;
   position:absolute;
   top:10%;
   left:74%;
  
} 

#slide-up{
   width:40px;
   height:30px;
   position:relative;
   
   left:140px;
} 

 #slide-down{
   width:40px;
   height:30px;
   position:relative;
   left:140px;
} 

.left_arrow{
  
   width:40px;
   height:40px;
   z-index:100000;
   position: absolute;
   top: 16%;
   left:70%;
   cursor: pointer;
}

.right_arrow{
  
   width:40px;
   height:40px;
   z-index:100000;
   position: absolute;
   top: 14%;
   left:96%;
   cursor: pointer;
}

#monitor_1{
    
    position: absolute;
    left:34%;
    top:30.33%;
}

#monitor_2{
    
    position: absolute;  
    left:24.43%;
    top:9%;
}

#monitor_3{
    
    position: absolute;
    left:68.66%;
    top:20%;
}

#monitor_4{
    
    position: absolute;
    left:65%;
    top:44%;
}

.monitor_img{
    width:150px;
    height:102px;
}
</style>
</head>
<body>

<div class="main">
      <!-- 承载地图的div -->
	  <div id="leafletmap" class="map fl"></div>    
</div>

<%-- <img id="slide_img" class="right_arrow" src="<%=path%>/img/GisLocation/right-arrow.png">


<div>
<!-- 右侧的视频 -->
<table id="video_tab" >
            <tr id="up_video">
                <td><img id="slide-up" src="<%=path%>/img/GisLocation/arrow-up.png"></td>
            </tr>
			<tr>                                                                 
				<td><img alt="" id="slide_1" class="selected_video" src="<%=path %>/img/GisLocation/slide_1.png" data-toggle="modal" data-target="#myModal" style="cursor: pointer;"></td>
			</tr>
			<tr>
				<td><img alt="" id="slide_2" class="selected_video" src="<%=path %>/img/GisLocation/slide_3.png" data-toggle="modal" data-target="#myModal" style="cursor: pointer;"></td>
			</tr>
			<tr>
				<td><img alt="" id="slide_3" class="selected_video" src="<%=path %>/img/GisLocation/slide_5.png" data-toggle="modal" data-target="#myModal" style="cursor: pointer;"></td>
			</tr>
			<tr>
				<td><img alt="" id="slide_4" class="selected_video" src="<%=path %>/img/GisLocation/slide_4.png" data-toggle="modal" data-target="#myModal" style="cursor: pointer;"></td>
			</tr>
			
			<tr id="down_video">
                <td><img id="slide-up" src="<%=path%>/img/GisLocation/arrow_down.png"></td>
            </tr>
</table>
</div> --%>


<div class="button-group" id="map_console" style="z-index:50000">
   <!--  <input type="button" class="sbtn sbtn-blue" value="绘点" id="draw_point"/>
    <input type="button" class="sbtn sbtn-blue" value="绘线" id="draw_line"/> -->
    <input type="button" class="sbtn sbtn-blue" value="绘面" id="draw_polygon"/>
    <input type="button" class="sbtn sbtn-blue" value="清除" id="clearAll" onclick="clearAllCovers();"/>
</div> 



<%-- <!-- 一级模态框（Modal） -->
<div class="modal fade container" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index:300000">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				
			</div>
			<div class="modal-body">
				<div class="row">
				     <div class="col-md-6">
				     <img alt="" class="img-responsive" src="<%=path%>/img/GisLocation/slide_1.png" data-dismiss="modal" data-toggle="modal" data-target="#zoomImgModal" style="cursor: pointer;">
				     </div>
				     <div class="col-md-6">
				     <img alt="" class="img-responsive" src="<%=path%>/img/GisLocation/slide_2.png" data-dismiss="modal" data-toggle="modal" data-target="#zoomImgModal" style="cursor: pointer;">
				     </div>
				</div>
				<div class="row" style="margin-top:15px;">
				     <div class="col-md-6">
				     <img alt="" class="img-responsive" src="<%=path%>/img/GisLocation/slide_3.png" data-dismiss="modal" data-toggle="modal" data-target="#zoomImgModal" style="cursor: pointer;">
				     </div>
				     <div class="col-md-6">
				     <img alt="" class="img-responsive" src="<%=path%>/img/GisLocation/slide_4.png" data-dismiss="modal" data-toggle="modal" data-target="#zoomImgModal" style="cursor: pointer;">
				     </div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

	
<!-- 二级模态框（Modal） -->
<div class="modal fade container" id="zoomImgModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index:400000">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				
				
			</div>
			<div class="modal-body">
				<img alt="" class="img-responsive" src="<%=path%>/img/GisLocation/zoom_image_video.png">
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div> --%>

<!-- 增加摄像机对应的画面图像 -->
<div style='z-index: 60000;' id="monitor_1">
  <img alt="" src="<%=path%>/img/GisLocation/slide_3.png" class="monitor_img" >
</div>

<div style='z-index: 60000;' id="monitor_2">
  <img alt="" src="<%=path%>/img/GisLocation/slide_2.png" class="monitor_img" >
</div>

<div style='z-index: 60000;' id="monitor_3">
  <img alt="" src="<%=path%>/img/GisLocation/slide_1.png" class="monitor_img" >
</div>

<div style='z-index: 60000;' id="monitor_4">
  <img alt="" src="<%=path%>/img/GisLocation/slide_6.png" class="monitor_img" >
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

<script type="text/javascript" src="<%=path %>/js/initQdMap.js" ></script>
</body>
<script>
	$(document).ready( function() {
	
		//添加摄像头
		addCameraMarker('<%=path %>');
		
		//添加安保人员
		//addSecurityGuardMark('<%=path %>');
		
		//添加安全事件(摄像机故障)
		//addEventMark1('<%=path %>');
		
		//添加灭火器
		//addFireExtinguisherMark('<%=path %>');
		
		showPartGisMarker(cameras,8,12);
			
		//startHot();
		
		$("#up_video").mouseover(function(){
			$("#up_video").css("cursor","pointer");
		});
		
		$("#down_video").mouseover(function(){
			$("#down_video").css("cursor","pointer");
		});
		
		var flag = 1;
		$("#up_video").click(function(){
			if(flag == 1){
				$("#slide_1").attr('src','<%=path%>/img/GisLocation/slide_2.png');
				$("#slide_2").attr('src','<%=path%>/img/GisLocation/slide_3.png');
				$("#slide_3").attr('src','<%=path%>/img/GisLocation/slide_4.png');
				$("#slide_4").attr('src','<%=path%>/img/GisLocation/slide_5.png');
				flag = 0;
				console.log(flag);
			}
			else{
				$("#slide_1").attr('src','<%=path%>/img/GisLocation/slide_3.png');
				$("#slide_2").attr('src','<%=path%>/img/GisLocation/slide_4.png');
				$("#slide_3").attr('src','<%=path%>/img/GisLocation/slide_5.png');
				$("#slide_4").attr('src','<%=path%>/img/GisLocation/slide_6.png');
				flag = 1;
			}
			
			
		});
		
		var flag2 = 1;
		$("#down_video").click(function(){
			if(flag2 = 1){
				$("#slide_1").attr('src','<%=path%>/img/GisLocation/slide_2.png');
				$("#slide_2").attr('src','<%=path%>/img/GisLocation/slide_3.png');
				$("#slide_3").attr('src','<%=path%>/img/GisLocation/slide_4.png');
				$("#slide_4").attr('src','<%=path%>/img/GisLocation/slide_5.png');
				flag2 = 0;
			}
			else{
				$("#slide_1").attr('src','<%=path%>/img/GisLocation/slide_3.png');
				$("#slide_2").attr('src','<%=path%>/img/GisLocation/slide_4.png');
				$("#slide_3").attr('src','<%=path%>/img/GisLocation/slide_5.png');
				$("#slide_4").attr('src','<%=path%>/img/GisLocation/slide_6.png');
				flag2 = 1;
			}
			
		});
		
		$(function(){
			  $('#slide_img').click(function(){
				//右侧的表格是隐藏的
			    if($('#video_tab').is(':hidden')){
			      $('#video_tab').show();
			      $("#slide_img").attr('src','<%=path%>/img/GisLocation/right-arrow.png');
			    }
			    else{
			      $('#video_tab').hide();
			      $("#slide_img").attr('src','<%=path%>/img/GisLocation/left-arrow.png');
			    }
			  })
			})
		
		
	});
</script>

</html>