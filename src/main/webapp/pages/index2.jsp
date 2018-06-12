<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/pages/inc/header3.jsp"%>
</head>
<body class="sodb_index_body">
	<div class="wrapper">
	    <div class="header">
        	<div class="logo"></div>
	        <div class="nav">
	            <ul>
	                <li class="active">
	                    <a>业务应用</a>
	                    <!-- <div class="dropDown">
	                        <a title="进程补录" class="active"  href="delayFeedback.html">进程补录</a>
	                        <a title="旅客保障监控" class="" href="safeguardMonitor.html">旅客保障监控</a>
	                        <a title="航班保障" class="" href="flightGuarantee.html">航班保障</a>
	                        <a title="现场监察" class="" href="sceneMonitor.html">现场监察</a>
	                    </div>  -->
	                </li>
	                <li>
	                    <a>系统管理</a>
	                </li>
	            </ul>
	        </div>
		        
	        <div class="user">
	            <div class="item name"><i></i>王大侠，您好！</div>
	            <div class="item post">
	                <i></i>
	                <div class="postTag">
	                    <a href="javascript:void(0)">AOC</a>
	                </div>
	            </div>
	            <div class="item logout"><i></i></div>
	        </div>
    	</div>
	</div>

<!--<script src="../js/common/commonJs_bj.js"></script>-->
<script src="../js/libs/jquery-3.2.1.js"></script>
<script>
  $(function(){
/*     initMenu();
    setIFrameHeight(); */
  })
  $(function () {

    function showFlightMsgDetail(e) {
      e.preventDefault();
      $(".flightMsgDetail").toggleClass("hidden");
      $(this).toggleClass('expand')
    }

    $('.arrows td').find('.f_arrow').click(showFlightMsgDetail);

    $(".f_star").click(function(){
      $($(this).toggleClass("on"));
    })
  })
</script>
</body>
</html>