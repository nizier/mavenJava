<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/deviceManage/newMap.jsp"%>
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
<!-- 右侧图标 （控制统计图和图表）-->
<link rel="stylesheet" type="text/css" href="<%=path%>/css/indexDevice.css" />
<!-- 右侧弹出窗口 （统计图和图表）-->
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/statictable.css" />
<link href="<%=path%>/css/lzz.css" rel="stylesheet" type="text/css" />
<!-- 高德css -->
<link href="<%=path%>/css/video.css" rel="stylesheet" type="text/css" />



<style type="text/css">
#map {
	width: 100%;
}
/* 绘面清除 */
.hori-menu {
	position: absolute;
	left: auto;
	right: 60px;
	top: 3%;
	height: 30px;
	width: 120px;
	border: lightgray 1px solid;
	border-radius: 3px;
	z-index: 100;
	float: left;
	background-color: white;
	overflow: hidden;
}

.op {
	width: 58px;
	height: 30px;
	background-color: white;
	float: left;
	border-radius: 5px;
	overflow: hidden;
	cursor: pointer;
	text-decoration: none;
}

.op:hover {
	background-color: ghostwhite;
}

#cop {
	margin-left: 19px;
	margin-top: 7px;
	width: 28px;
	height: 15px;
}
/* 统计图和图表 */
.main_graphic .main_table {
	position: absolute;
	right: 10px;
	top: 10px;
	height: 250px;
	width: 400px;
	border: lightgray 1px solid;
	border-radius: 5px;
	z-index: 100;
	float: left;
	background-color: white;
	overflow: hidden;
}
</style>

<script type="text/javascript">
   $(function(){  
        $('#main_table').dragDrop();
        $('#main_table').css({'position':'fixed','right':'60px','top':'8%','left':'auto'});       
        $('#tjt').dragDrop();
        $('#tjt').css({'position':'fixed','right':'60px','top':'50%','left':'auto'});
	});
	

</script>

</head>
<!-- BEGIN BODY -->
<body>
	<div class="main2">

		<!-- 承载地图的div -->
		<div id="map">
			<div id="gdmap" class="map fl"></div>
			<!--机场地理信息服务-->
			<div class="geography" style="display: none">
				<c:forEach items="${subjects}" var="parentSubject"
					varStatus="parentSubjectStatus">
					<c:if test="${parentSubject.mapSubjectLevel == 1 }">
						<div class="line1"></div>
						<div class="line2"></div>
						<div class="geography_box">
							<div class="geography_box_title clr">
								<span id="${parentSubject.mapSubjectId}"
									value="${parentSubject.mapSubjectId}" class="fl">${parentSubject.mapSubjectName}</span>
								<img class="fr title-tip-show"
									src="<%=path%>/img/GisLocation/arrow_top.png" alt=""> <img
									style="display: none" class="fr title-tip-hide"
									src="<%=path%>/img/GisLocation/arrow_bottom.png" alt="">
							</div>
							<ul>
								<c:forEach items="${subjects}" var="subject"
									varStatus="subjectStatus">
									<c:if
										test="${parentSubject.mapSubjectId == subject.mapSubjectParentId && subject.mapSubjectLevel==2}">
										<li class="clr"><label class="fl" for="">${subject.mapSubjectName}</label>
											<input id="${subject.mapSubjectId}" class="fr"
											type="checkbox" value="${subject.mapSubject}"
											title="${subject.mapSubjectName}"
											<c:if test="${subject.mapSubject == 'app'}">
					                   onclick="clickCheckbox(this,3,'<%=path %>');"
					                   </c:if>
											<c:if test="${subject.mapSubject != 'app'}">
					                   onclick="clickCheckbox(this,0,'<%=path %>');"
					                   </c:if>>
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
	<div class="floattool" style="height:120px">
		<div class="table_nav">
			<div class="icon" title="统计表">
				<img alt="" src="<%=path%>/img/tjb.png">
			</div>
			<!-- 数据按钮 -->
		</div>
		<div class="graphic_nav">
			<div class="icon" title="统计图">
				<img alt="" src="<%=path%>/img/tjt.png">
			</div>
			<!-- 统计图按钮 -->
		</div>
		<div class="access_nav">
			<div class="icon" title="门禁">
				<img alt="" src="<%=path%>/img/GisLocation/access.png">
			</div>
			<!-- 门禁按钮 -->
		</div>
	</div>

	<!-- 导航 -->

	<div class="hori-menu" id="menu">
		<div class="op" id="polygon">
			<div id="cop">绘面</div>
		</div>
		<div class="cutline" style="float: left; height: 10px;"></div>
		<div class="op" id="clearAll" onclick="clearAllCovers();">
			<div id="cop">清除</div>
		</div>
	</div>
	<!-- 右侧弹出窗口 （统计图和图表）-->
	<script type="text/javascript" src="<%=path%>/js/dragDiv.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-ui.js"></script>
	<script type="text/javascript"
		src="<%=path%>/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/scrollbar.min.js"></script>
	<script type="text/javascript" src="<%=path%>/extends/echarts.js"></script>
	<script type="text/javascript"
		src="http://webapi.amap.com/maps?v=1.3&key=d3acfe752801099b1a31afe817c6edcf&plugin=AMap.MouseTool"></script>
	<script type="text/javascript" src="<%=path%>/js/map.js"></script>
	<script type="text/javascript" src="<%=path%>/js/echarsDevice.js"></script>
	<!-- 弹出框 -->
	<script type="text/javascript" src="<%=path %>/js/dialog-plus.js" ></script>
</body>
<script>
$(document).ready( function() {
<%-- 		addAlarmMarker('<%=path %>'); --%>
<%--         addAccessMarker('<%=path %>');  --%>
	addAccessMarker('<%=path%>');
	});

$(document).ready(function(){
//点击图标呈现列表
	$(".table_nav").click(function(){
		if($(".main_table").is(":hidden")){
			$(".main_table").css("display","block");
		}else{
			$(".main_table").css("display","none");
		}
	});
	$(".graphic_nav").click(function(){
		if($(".main_graphic").is(":hidden")){
			$(".main_graphic").css("display","block");
		}else{
			$(".main_graphic").css("display","none");
		}
	});
	$(".access_nav").click(function(){
		hideAccess();
		addAccessMarker('<%=path%>');
	}); 
//结束
});
</script>
</html>