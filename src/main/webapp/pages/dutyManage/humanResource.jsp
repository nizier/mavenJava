<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/dutyManage/HumanLeftMenu.jsp" %>
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
  top:120px;
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
td  
{  
    text-align:center;  
    
}  

</style>

<script type="text/javascript">
   $(function(){  
        $('#main_table').dragDrop();
        $('#main_table').css({'position':'fixed','right':'60px','top':'8%','left':'auto'});       
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
<ul id="myTab" class="nav nav-tabs">
    <li class="active"><a href="humanResource.jsp" data-toggle="tab">
            GIS展示</a>
    </li>
    <li class="active"><a href="HumanList.jsp">信息列表</a></li>
</ul>
   
	 <!-- 承载地图的div -->
	 <div id="map">
	  <div id="humanMap" class="map fl"></div>
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
<!--        				<div class="floattool"> -->
<!-- 						<div class="table_nav"> -->
<%-- 							<div class="icon" title="业务资源列表"><img alt="" src="<%=path %>/img/tjb.png"></div><!-- 数据按钮 --> --%>
<!-- 						</div> -->
<!-- <!-- 						<div class="graphic_nav"> --> -->
<%-- <%-- 							<div class="icon" title="统计图"><img alt="" src="<%=path %>/img/tjt.png"></div><!-- 统计图按钮 --> --%> --%>
<!-- <!-- 						</div> --> -->
<!-- 					</div> -->
<!-- 										导航 -->
					
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

<script type="text/javascript" src="<%=path %>/businessJs/humanMap.js" ></script>
<script type="text/javascript" src="<%=path %>/js/echarsDevice.js"></script>
</body>
<script>
$(document).ready( function() {
		//getMapInfo("<%=path %>");//加载地图
	 addPoliceMarker("<%=path %>");
	 addFireHumanMarker("<%=path %>");
	});
// $(document).ready(function() {
// 	 if($(".showtable").is(":checked")){
// 	        console.log("选中");
// 	        $(".main_table").css("display","block");
// // 	        $(".main_graphic").css("display","block");
// 	        $("#prompt").hide();
// 	    }else{
// 	        console.log("未选中");
// 	        $("#prompt").hide();
// 	        $(".main_table").css("display","none");
// // 	        $(".main_graphic").css("display","none");
// 	    }
// 	$(".showtable").click(function(){
// 		 if($(".showtable").is(":checked")){
// 		        console.log("选中");
// 		        $(".main_table").css("display","block");
// // 		        $(".main_graphic").css("display","block");
// 		        $("#prompt").hide();
// 		    }else{
// 		        console.log("未选中");
// 		        $("#prompt").hide();
// 		        $(".main_table").css("display","none");
// // 		        $(".main_graphic").css("display","none");
// 		    }
// 	});
// });
// $(document).ready(function(){
// //点击图标呈现列表
//     	$(".table_nav").click(
//     			function(){
// 		if($(".showtable").is(":checked")){
// 			if($(".main_table").is(":hidden")){
// 			$(".main_table").css("display","block");
			
// 			}else{
// 				$(".main_table").css("display","none");
// 			}
// 			 $("#prompt").hide();
// 		}else{
						
// 			$(".main_table").css("display","none");
// 			$("#prompt").show();
// 		}
// 	     }
//     	);
// });

$(document).ready(function() {
	
	var datas = [
{ "id":"A001" , "name":"张三","part":"人力资源部"},
{ "id":"A002" , "name":"李四","part":"人力资源部"},
{ "id":"A003" , "name":"张三","part":"人力资源部"},
{ "id":"A004" , "name":"李四","part":"人力资源部"},
{ "id":"A005" , "name":"张三","part":"人力资源部"},
{ "id":"A006" , "name":"李四","part":"人力资源部"},
{ "id":"A007" , "name":"张三","part":"人力资源部"},
{ "id":"A008" , "name":"张三","part":"人力资源部"},
{ "id":"A009" , "name":"李四","part":"人力资源部"},
{ "id":"A010" , "name":"李四","part":"人力资源部"},

];
	var gridColumns_2_1_1 = [
                            {id:'photo', title:'照片', type:'string', columnClass:'text-center'
	                            , resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
	                                var content = ''; 	                     			
	                                content += '<a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a>'; 	                     			
	        	   
	                                return content;                     			
	                                }			
                            },
	                     	{id:'id', title:'员工编号', type:'number', columnClass:'text-center'},
	                     	{id:'name', title:'员工名称', type:'string', columnClass:'text-center'},
	                     	{id:'part', title:'员工部门', type:'string', columnClass:'text-center'},
 	                     	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
 	                     		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
                  			        var content = ''; 	                     			
                  			        content += '<a href="#"><button class="sbtn sbtn-default" data-toggle="modal" data-target="#addHuman">设置</button></a>'; 	                     			
                  			        content += '  ';	                     			
                  			        content += '<a onclick="fn();"><button  class="sbtn sbtn-blue">删除</button></a>'; 
                  			       
                  			        return content;                     			
                  			    }		
 	                     	}
	                     ];
	                     var gridOption_2_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	columns : gridColumns_2_1_1,
	                     	gridContainer : 'policehold_211',
	                     	toolbarContainer : 'police_211',
	                     	tools : '',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_2_1_1 = $.fn.dlshouwen.grid.init(gridOption_2_1_1);
    	                     $(function(){
    	                     	grid_2_1_1.load();
    	                     });
	                  
 });
  function fn(){
	  confirm("是否删除？");
  }

  $(function () {
	  $("ul").css("top","0");
	  $("#listhuman").css("top","10%");
  });
	
			                    
</script>
</html>