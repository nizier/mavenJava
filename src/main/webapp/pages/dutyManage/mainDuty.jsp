<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>${title }</title>

<style>
	#bor{
	      width:100px;
	      height:100px;
	      border:1px solid black;
	      margin:auto auto;
	}
	img{
	     width:50px;
	     height:50px;
	     margin-top:10px;
	     margin-left:25px;
	}
</style>
</head>
<body>
<div class="sodb-page-home">
<ul class="sodb-page-ul">
<li>
<i class="fa fa-home"></i> 
<a href="#">青岛机场安全管理</a> 
<i class="fa fa-angle-right"></i>
</li>
<li>
<a href="#">业务资源可视化</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">值班管理</a></li>
</ul> 
</div>
<div>
<div class="row" style="height:100%;">
   <div class="col-md-12" style="height:100%;">
<div class="row" style="height:100px;padding-top:20px;">
    <div class="col-md-3"><div id="bor"><a href="dutyPeopleList.jsp"><img src="<%=path%>/img/sdhDutyManage/rygl.png"></a><div style="width:100px;text-align:center">人员管理</div></div></div>
    <div class="col-md-3"><div id="bor"><a href="sectorManagement.jsp"><img src="<%=path%>/img/sdhDutyManage/bmgl.png"></a><div style="width:100px;text-align:center">部门管理</div></div></div>
    <div class="col-md-3"><div id="bor"><a href="rota.jsp"><img src="<%=path%>/img/sdhDutyManage/pbgl.png"></a><div style="width:100px;text-align:center">排班管理</div></div></div>
    <div class="col-md-3"><div id="bor"><a href="changeShifts.jsp"><img src="<%=path%>/img/sdhDutyManage/pbgl.png"></a><div style="width:100px;text-align:center">交接班管理</div></div></div>
<%--     <div class="col-md-3"><div id="bor"><a href="rota.jsp"><img src="<%=path%>/img/sdhDutyManage/pbgl.png"></a><div style="width:100px;text-align:center">值班统计</div></div></div> --%>
<%--     <div class="col-md-2"><div id="bor"><a href=""><img src="<%=path%>/img/sdhDutyManage/pbgl.png"></a><div style="width:100px;text-align:center">通讯录维护</div></div></div> --%>
</div>
<div style="border:1px solid black;width:100%;margin-top:40px;">
</div>
<div class="row">

    <div class="col-md-12" style="height:20%;">
    <span>公告</span>
    
    </div>

</div>
<div class="row" style="height:5%;">
     <span>待办事项</span>
</div>
<div class="row" style="40%;">
     <div class="col-md-4">
     <div id="click" style="width:220px;height:220px;background:gray;">   
     <button id="btn">+</button>
     <div style="padding-top:20px;padding-left:20px;">添加待办事项</div>
     </div> 
    </div>
     <div class="col-md-4">
     <div id="second" style="width:220px;height:220px;background:gray;">
      <button id="btnj2">-</button>
     </div>
     
    </div>
     <div class="col-md-4">
     <div id="three" style="width:220px;height:220px;background:gray;">
      <button id="btnj3">-</button>
     </div>
     
    </div>
</div>
</div>
<!-- <div class="col-md-3"> -->
<!--          <div class="row"> -->
<!--             <div class="col-md-1"></div> -->
<!--             <div class="col-md-10"> -->
<%--             <img style="width:100%;height:10%;" alt="" src="<%=path%>/img/sdhDutyManage/djs.png"> --%>
<!--             <div style="width:100%;height:40%;padding-top:20px;"> -->
            
<!--                 <div style="width:100%;height:10%;background:#8C8C8C;text-align:center;border-radius:6px;border:1px solid black;">              -->
<!--                 <span>通讯录</span>  -->
<!--                 </div> -->
             
<!--    <div class="panel-group" id="accordion"> -->
<!-- 	<div class="panel panel-default"> -->
<!-- 		<div class="panel-heading"> -->
<!-- 			<h4 class="panel-title"> -->
<!-- 				<a data-toggle="collapse" data-parent="#accordion"  -->
<!-- 				   href="#collapseOne"> -->
<!-- 					行政部 -->
<!-- 				</a> -->
<!-- 			</h4> -->
<!-- 		</div> -->
<!-- 		<div id="collapseOne" class="panel-collapse collapse in"> -->
<!-- 			<div class="panel-body"> -->
<!-- 				  <table class="table"> -->
<%--       <tr><td><img style="width:20px;;height:20px;;" alt="" src="<%=path%>/img/sdhDutyManage/human.jpg">张三</td></tr> --%>
<%--       <tr><td><img style="width:20px;;height:20px;;" alt="" src="<%=path%>/img/sdhDutyManage/human.jpg">张三</td></tr> --%>
<%--       <tr><td><img style="width:20px;;height:20px;;" alt="" src="<%=path%>/img/sdhDutyManage/human.jpg">张三</td></tr> --%>
<%--       <tr><td><img style="width:20px;;height:20px;;" alt="" src="<%=path%>/img/sdhDutyManage/human.jpg">张三</td></tr> --%>
<%--       <tr><td><img style="width:20px;;height:20px;;" alt="" src="<%=path%>/img/sdhDutyManage/human.jpg">张三</td></tr> --%>
<%--       <tr><td><img style="width:20px;;height:20px;;" alt="" src="<%=path%>/img/sdhDutyManage/human.jpg">张三</td></tr> --%>
<%--       <tr><td><img style="width:20px;;height:20px;;" alt="" src="<%=path%>/img/sdhDutyManage/human.jpg">张三</td></tr> --%>
<%--       <tr><td><img style="width:20px;;height:20px;;" alt="" src="<%=path%>/img/sdhDutyManage/human.jpg">张三</td></tr> --%>
<!--    </table> -->
   
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<div class="panel panel-default"> -->
<!-- 		<div class="panel-heading"> -->
<!-- 			<h4 class="panel-title"> -->
<!-- 				<a data-toggle="collapse" data-parent="#accordion"  -->
<!-- 				   href="#collapseTwo"> -->
<!-- 					人力资源部 -->
<!-- 				</a> -->
<!-- 			</h4> -->
<!-- 		</div> -->
<!-- 		<div id="collapseTwo" class="panel-collapse collapse"> -->
<!-- 			<div class="panel-body"> -->
<!-- 				  <table class="table"> -->
<%--       <tr><td><img style="width:20px;;height:20px;;" alt="" src="<%=path%>/img/sdhDutyManage/human.jpg">张三</td></tr> --%>
<%--       <tr><td><img style="width:20px;;height:20px;;" alt="" src="<%=path%>/img/sdhDutyManage/human.jpg">张三</td></tr> --%>
<!--    </table> -->
   
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<div class="panel panel-default"> -->
<!-- 		<div class="panel-heading"> -->
<!-- 			<h4 class="panel-title"> -->
<!-- 				<a data-toggle="collapse" data-parent="#accordion"  -->
<!-- 				   href="#collapseThree"> -->
<!-- 					财务部 -->
<!-- 				</a> -->
<!-- 			</h4> -->
<!-- 		</div> -->
<!-- 		<div id="collapseThree" class="panel-collapse collapse"> -->
<!-- 			<div class="panel-body"> -->
<!-- 				  <table class="table"> -->
<%--       <tr><td><img style="width:20px;;height:20px;;" alt="" src="<%=path%>/img/sdhDutyManage/human.jpg">张三</td></tr> --%>
<%--       <tr><td><img style="width:20px;;height:20px;;" alt="" src="<%=path%>/img/sdhDutyManage/human.jpg">张三</td></tr> --%>
<!--    </table> -->
   
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->
				
		
            
<!--             </div> -->
<!--             </div> -->
<!--             <div class="col-md-1"></div> -->
<!--          </div> -->
<!-- <!--      <div style="width:50%;height:50%;margin-top:20px;margin-left:50px;"> --> -->
     
<!-- <!--      <div class="djs" style="width:50%;height:100px; border:1px solid black;border-radius:6px;"> --> -->
<%-- <%--      <img style="width:100%;height:100%;" alt="" src="<%=path%>/img/sdhDutyManage/djs.png"> --%> --%>
<!-- <!--      </div> --> -->
<!-- <!--      <div class="chatlist" style="width:50%;height:500px;;margin-top:20px; border:1px solid black;border-radius:6px;"></div> --> -->
<!-- <!--      </div> --> -->
<!-- </div> -->
</div>
</div>			
<script type="text/javascript">
   $(document).ready(function(){
	  $("#second").hide();
	  $("#three").hide();
	  $("#click").click(function(){
		  
		  if($("#second").is(":hidden")){
			  $("#second").show();
		  }else{
			  $("#three").show();
			  $("#btn").hide();
		  }
		  
	      });
	  $("#btnj2").click(function(){
		  $("#btn").show();
		  if($("#three").is(":hidden")){
			  
		  $("#second").hide();
		 
		  }else{
			  $("#three").hide();
		  }
	  });
	  $("#btnj3").click(function(){
		  $("#three").hide();
		  $("#btn").show();
	  });
   });
	
	
</script>		
		
</body>
</html>