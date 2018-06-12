<%@page pageEncoding="UTF-8"%>
<%-- <%@include file="/pages/inc/header.jsp"%>  --%>
<%@include file="/pages/dutyManage/dutyMonitorLeftMenu.jsp" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description" />
<meta content="" name="author" />
<link rel="stylesheet" type="text/css" href="<%=path %>/css/indexDevice.css"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/leaflet.css"/>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/leftbar.css" />

<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/css/devicemenu.css" /> --%>
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

<link href="<%=path%>/css/video.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/css/lzz.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/js/dragDiv.js"></script>


<!-- END OTHER STYLES -->
<style type="text/css">
#map_console{
  position:absolute;
  right:5%;
  top:10px;
}
#show_list{
   position:relative;
   top:-620px;
   left:80%;
   width:30px;
   height:200px;
   background-color:#2aa0de;
}
.content{
   overflow-y:auto;
   height:200px;
}
#leafletmap{
width:100%;
}
#map{
 width:100%;
}
.hori-menu {
	position: absolute;
	left: auto;
	right:60px;
	top: 3%;
	height: 30px;
	width: 120px;
	border: lightgray 1px solid;
	border-radius: 3px;
	z-index: 100;
	float:left;
	background-color:white;
	overflow:hidden;
}
.op{
	width:58px;
	height:30px;
	background-color:white;
	float:left;	
	border-radius:5px;
	overflow:hidden;
	cursor: pointer;
	text-decoration: none;
}
.op:hover{
	background-color:ghostwhite;
}
#cop{
   margin-left:19px;
   margin-top:7px;
   width:28px;
   height:15px;
}
.main_graphic .main_table {
	position: absolute;
	right: 10px;
	top: 10px;
	height: 250px;
	width: 400px;
	border: lightgray 1px solid;
	border-radius: 5px;
	z-index: 100;
	float:left;
	background-color:white;
	overflow:hidden;
}


</style>

<script type="text/javascript">
   $(function(){  
        $('#main_table').dragDrop();
        $('#main_table').css({'position':'fixed','right':'60px','top':'10%','left':'auto'});       
});

//隐藏窗口
function removeWin(e){
	e.css('display','none');	
}
//弹出窗口
function showWin(e){
	e.removeClass('hidden');
}

</script>

</head>
<!-- BEGIN BODY -->
<body>
<div id="monitorcontent" style="width:100%;height:70%;top:10%;background:white;">
<div class="row">
<div class="col-md-9" id="sp"><div style="width:100%;height:8%;background:black;"><img style="height:100%;" src="<%=path%>/img/sdhDutyManage/czsp.png"></div>
<img style="width:100%;height:84%;" src="<%=path%>/img/sdhDutyManage/dutymonitor.jpg">
<div style="width:100%;height:8%;background:black;"><img style="height:100%;" src="<%=path%>/img/sdhDutyManage/multi.png">
<img id="whole" style="height:100%;right:0" src="<%=path%>/img/sdhDutyManage/whole.png"><span>全屏显示</span>
</div>
</div>
<div class="col-md-3" id="lb">
	<div  style="display: '';width:100%;height:100%;border-radius: 8px;">
					
						<div class="title-event">
			<span>安全事件列表 </span>	
		</div>
				
		<div class="gis-content">
			<table class="table table-condensed">
			<tr>
				<th>序号</th><th>事件名称</th><th>事件级别</th><th>事件状态</th><th>视频</th>
			</tr>
			<tr><td>1</td><td>闯入门禁</td><td>三级</td><td>未处理</td><td><a href="#">查看视频</a></td></tr>
			<tr class="success"><td>2</td><td>不明危险物品</td><td>四级</td><td>已处理</td><td><a href="#">查看视频</a></td></tr>
			<tr class="error"><td>3</td><td>不明身份的人</td><td>二级</td><td>处理中</td><td><a href="#">查看视频</a></td></tr>
			<tr class="warning"><td>4</td><td>闯入门禁</td><td>三级</td><td>未处理</td><td><a href="#">查看视频</a></td></tr>
			<tr class="info"><td>5</td><td>闯入门禁</td><td>三级</td><td>未处理</td><td><a href="#">查看视频</a></td></tr>
		</table>	
		<ul class="pagination" style="position:relative;bottom:26px;left:30px;">
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

</div>
</div>
</div>
<div class="main2">
    
	 <!-- 承载地图的div -->
	 <div id="map">
<button id="monitor"class="sbtn sbtn default">视频展示</button>
	  <div id="monitormap" class="map fl"></div>
       <!--机场地理信息服务-->
       <div class="geography" style="display:none">
           <c:forEach items = "${subjects}" var = "parentSubject" varStatus="parentSubjectStatus">
				<c:if test="${parentSubject.mapSubjectLevel == 1 }">
					<div class="line1"></div>
		            <div class="line2"></div>
		            <div class="geography_box">
		                <div class="geography_box_title clr">
		                    <span id="${parentSubject.mapSubjectId}" value="${parentSubject.mapSubjectId}" class="fl">${parentSubject.mapSubjectName}</span>
		                    <img class="fr title-tip-show" src="<%=path %>/img/GisLocation/arrow_top.png" alt="">
		                    <img style="display:none" class="fr title-tip-hide" src="<%=path %>/img/GisLocation/arrow_bottom.png" alt="">
		                </div>
						<ul>
							<c:forEach items = "${subjects}" var = "subject" varStatus="subjectStatus">
								<c:if test="${parentSubject.mapSubjectId == subject.mapSubjectParentId && subject.mapSubjectLevel==2}">
				                   <li class="clr">
					                   <label class="fl" for="">${subject.mapSubjectName}</label>
					                   <input id="${subject.mapSubjectId}" class="fr" type="checkbox"  value="${subject.mapSubject}" title="${subject.mapSubjectName}"
					                   <c:if test="${subject.mapSubject == 'app'}">
					                   onclick="clickCheckbox(this,3,'<%=path %>');"
					                   </c:if>
					                   <c:if test="${subject.mapSubject != 'app'}">
					                   onclick="clickCheckbox(this,0,'<%=path %>');"
					                   </c:if>
					                   >
				                   </li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</c:if>
			 </c:forEach>
       </div>
       </div>
      
        
</div>
					
	<div class="hori-menu" id="menu">
		<div class="op" id="polygon">
			<div id="cop">绘面</div>
		</div>	
		<div class="cutline" style="float:left;height:10px;"></div>
		<div class="op" id="clearAll"onclick="clearAllCovers();">
			<div id="cop">清除</div>
		</div>		
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
<script type="text/javascript" src="<%=path %>/js/DeviceInit.js" ></script>
 <script type="text/javascript" src="<%=path %>/extends/echarts.js"></script> 
<!-- left menu related js -->
<!-- 弹出框 -->
<script type="text/javascript" src="<%=path %>/js/dialog-plus.js" ></script>
<!-- 弹出框 -->
<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=d3acfe752801099b1a31afe817c6edcf&plugin=AMap.MouseTool"></script>
<!-- <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script> -->

<script type="text/javascript" src="<%=path %>/businessJs/dutyMonitoringMap.js" ></script>
<script type="text/javascript" src="<%=path %>/js/echarsDevice.js"></script>
</body>
<script>

$(document).ready( function() {
		//getMapInfo("<%=path %>");//加载地图
	 addEventMark("<%=path %>");
	});
	var flag=0;
$(document).ready(function(){
	$("#monitorcontent").hide();
	$("#monitor").click(function(){
		$("#monitorcontent").css("height","70%");
		$("#sp").css("height","100%");
		$("#lb").css("height","100%");
		if($("#monitorcontent").is(":hidden")){
			
			$("button").innerHTML="收起视频";
			$(".left-tool").hide();
			$("#menu").hide();
			$("#main_table").hide();
		$("#monitorcontent").show();
		$(".main2").css("top","80%");	
		
		}else{
			$(".left-tool").show();
			$("button").innerHTML="视频展示";
			$("#monitorcontent").hide();
			$(".main2").css("top","0");				
			$("#menu").show();
			$("#main_table").show();
		}
	});
	$("#whole").click(function(){
		flag++;

		if((flag%2)==1){
			$("#monitorcontent").css("height","100%");
			$("#sp").css("height","100%");
			$("#lb").css("height","100%");
			$(".left-tool").hide();
		}else{
			$("#monitorcontent").css("height","70%");
			$(".left-tool").hide();
		}
		
	});
});

      
</script>
</html>