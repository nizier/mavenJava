<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/css/emergencyIntegrate/processingTab.css" rel="stylesheet" type="text/css"/>
<link href="<%=path %>/css/emergencyIntegrate/info.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=OlnDygyhVGjsqw9ucsUvYGs5ZzgeLxVD"></script>
<script type="text/javascript" src="<%=path %>/js/emergencyIntegrate/dragDiv.js"></script>
<script type="text/javascript" src="<%=path %>/js/emergencyIntegrate/resourceTree.js"></script>
<script type="text/javascript">
   $(function(){  
        /* $('#processingTab').dragDrop(); */
        $('#processingTab').css({'position':'absolute','left':'42%','top':'15%'}); //window1初始位置

});
</script>
</head>
<style>
.help_step_box{background:white;height:55px;overflow:hidden;border:1px solid rgba(14, 74, 128,0.6);}
.help_step_item{float:left;height:55px;line-height:55px;padding:0 20px 0 40px;cursor:pointer;position:relative;font-size:14px;font-weight:bold;}
.help_step_num{width:19px;height:19px;line-height:19px;position:absolute;text-align:center;top:18px;left:20px;font-size:16px;font-weight:bold;color:gray;}
.help_step_set{background:rgba(14, 74, 128,1);color:#FFF;}
.help_step_hover{background:rgba(14, 74, 128,0.5);color:#FFF;}
.help_step_set .help_step_left{
	width: 0;
    height: 0;
    border-top: 10px solid transparent;
    border-bottom: 10px solid transparent;
    border-left: 10px solid white;
    position:absolute;
    left:0;
    top:17px;
}
.help_step_set .help_step_right{
	width: 0;
    height: 0;
    border-top: 10px solid transparent;
    border-bottom: 10px solid transparent;
    border-left: 10px solid rgba(14, 74, 128,1);
    position:absolute;
    right:-10px;
    top:17px;
}
</style>
<body>
	<div id="map" style="width:100%;height:820px;"></div>
	<div id="divInfo" class="info portlet box blue-hoki" style="display: block;left:5%; top: 2%;">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>机场地理信息服务
				</div>
			</div>
			
			<div class="info-body" style="height: 200px;overflow-y: scroll;">
				<div class="route-plan">
					<div class="route-plan-tit route-plan-sel" index="1">
						<div><span>人员</span></div>
					</div>
					<div class="route-plan-cnt" style="display: block;">
						<div class="route-plan-box1">
							<table class="table duty-table" style="width:100%;margin:0;">
								<thead>
									<tr>
										<th style="text-align: center;">
											类型
										</th>
										<th style="text-align: center;">
											数量
										</th>
										<th style="text-align: center;">
											标注
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>急救人员</td>
										<td>20</td>
										<td><input type="checkbox"  class="resourceCheck" id="doctor"/></td>
									</tr>
									<tr>
										<td>消防人员</td>
										<td>20</td>
										<td><input type="checkbox" class="resourceCheck" id="firefighter"/></td>
									</tr>
									<tr>
										<td>安保人员</td>
										<td>20</td>
										<td><input type="checkbox" class="resourceCheck" id="policeman"/></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				<div class="route-plan">
					<div class="route-plan-tit route-plan-sel" index="1">
						<div><span>设施</span></div>
					</div>
					<div class="route-plan-cnt" style="display: block;">
						<div class="route-plan-box1">
							<table class="table duty-table" style="width:100%;margin:0;">
								<thead>
									<tr>
										<th style="text-align: center;">
											类型
										</th>
										<th style="text-align: center;">
											数量
										</th>
										<th style="text-align: center;">
											标注
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>消防站</td>
										<td>2</td>
										<td><input type="checkbox" class="resourceCheck" id="fireStation"/></td>
									</tr>
									<tr>
										<td>航空器</td>
										<td>1</td>
										<td><input type="checkbox" class="resourceCheck" id="airplane"/></td>
									</tr>
									<tr>
										<td>路障</td>
										<td>8</td>
										<td><input type="checkbox"  class="resourceCheck" id="barrier"/></td>
									</tr>
									<tr>
										<td>医院</td>
										<td>1</td>
										<td><input type="checkbox"  class="resourceCheck" id="hospital"/></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				<div class="route-plan">
					<div class="route-plan-tit route-plan-sel" index="1">
						<div><span>设备</span></div>
					</div>
					<div class="route-plan-cnt" style="display: block;">
						<div class="route-plan-box1">
							<table class="table duty-table" style="width:100%;margin:0;">
								<thead>
									<tr>
										<th style="text-align: center;">
											类型
										</th>
										<th style="text-align: center;">
											数量
										</th>
										<th style="text-align: center;">
											标注
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>消防车</td>
										<td>2</td>
										<td><input type="checkbox"  class="resourceCheck" id="fireCar"/></td>
									</tr>
									<tr>
										<td>急救车</td>
										<td>1</td>
										<td><input type="checkbox"  class="resourceCheck" id="ambulance"/></td>
									</tr>
									<tr>
										<td>警车</td>
										<td>8</td>
										<td><input type="checkbox"  class="resourceCheck" id="policeCar"/></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div id="divInfo2" class="info portlet box blue-hoki" style="display: block;left:5%; top: 35%;">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>事件相关内容
				</div>
				<div class="getPosBtn" onclick="getPoint();">事件位置</div>
			</div>
			
			<div class="info-body" style="height: 200px;overflow-y: scroll;padding:10px;text-align: center;">
				<div class="info-form"><span>事件名称：</span><input type="text" name="eventName"/></div>
				<div class="info-form"><span>负责人：</span><input type="text" name="eventCharge"/></div>
				<div class="info-form"><span>事件级别：</span>
					<select type="text" name="eventLevel">
						<option>请选择</option>
					</select>
				</div>
				<div class="info-form"><span>纬度：</span><input type="text" name="lat" id="lat"/></div>
				<div class="info-form"><span>经度：</span><input type="text" name="lng" id="lng"/></div>
				<div class="info-form"><span>上报人：</span><input type="text" name="eventCreator"/></div>
				<div class="info-form">
					<span style="position: relative;bottom:30px;">详细位置：</span>
					<textarea name="eventLocation" style="position:relative;left:6px;width:125px;">
					</textarea>

				</div>
				<div class="info-form">
					<span style="position: relative;bottom:30px;">事件内容：</span>
					<textarea name="eventContent" style="position:relative;left:6px;width:125px;">
					</textarea>

				</div>
				<div class="route-plan">
					<div class="route-plan-tit route-plan-sel" index="3">
						<div><span>应急预案选择</span></div>
					</div>
					<div class="route-plan-cnt" style="display: block;">
						<div class="route-plan-box1">
							<div class="route-plan-start">
								<div class="route-plan-txt"><label for="plan1">预案A</label><input type="radio" name="plan" id="plan1"/></div>
							</div>
							<div class="route-plan-start">
								<div class="route-plan-txt"><label for="plan2">预案B</label><input type="radio" name="plan" id="plan2"/></div>
							</div>
							<div class="route-plan-start">
								<div class="route-plan-txt"><label for="plan3">预案C</label><input type="radio" name="plan" id="plan3"/></div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="route-plan">
					<div class="route-plan-tit route-plan-sel" index="3">
						<div><span>检查单模板选择</span></div>
					</div>
					<div class="route-plan-cnt" style="display: block;">
						<div class="route-plan-box1">
							<div class="route-plan-start">
								<div class="route-plan-txt"><label for="plan1">检查单A</label><input type="radio" name="plan" id="plan1"/></div>
							</div>
							<div class="route-plan-start">
								<div class="route-plan-txt"><label for="plan2">检查单B</label><input type="radio" name="plan" id="plan2"/></div>
							</div>
							<div class="route-plan-start">
								<div class="route-plan-txt"><label for="plan2">检查单C</label><input type="radio" name="plan" id="plan2"/></div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="route-plan">
					<div class="route-plan-tit route-plan-sel" index="3">
						<div><span>人员设备设施选择</span></div>
					</div>
					<div class="route-plan-cnt" style="display: block;">
						<div class="route-plan-box1">
							<button class="sbtn sbtn-default" style="margin:0 auto;" onclick="selectResource()">选择</button>
						</div>
						
					</div>
				</div>
				<button class="sbtn sbtn-blue" style="margin:0 auto;">保存</button>
			</div>
		</div>
		
		<div id="divInfo5" class="info portlet box blue-hoki" style="display: block;right:1%; top: 5%;">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>常规信息
				</div>
			</div>
			<div class="info-body normal-info">
				<span style="text-align: left;">气象要素</span><span style="float:right;text-align: left;">气象值</span><br>
				<span style="text-align: left;">气压(米)</span><span style="float:right;text-align: left;">913.7</span><br>
				<span style="text-align: left;">气温(℃)</span><span style="float:right;text-align: left;">0</span><br>
				<span style="text-align: left;">风速(米/秒)</span><span style="float:right;text-align: left;">2.9</span><br>
				<span style="text-align: left;">风向</span><span style="float:right;text-align: left;">169</span><br>
				<span style="text-align: left;">湿度(%)</span><span style="float:right;text-align: left;">0</span><br>
				<span style="text-align: left;">视程1M平均(米)</span><span style="float:right;text-align: left;">2500</span><br>
				<span style="text-align: left;">能见度10M平均(米)</span><span style="float:right;text-align: left;">2500</span><br>
			</div>
		</div>
		
		<div id="divInfo4" class="info portlet box blue-hoki" style="display: block;right:1%; top: 35%;width:270px;">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>常规信息
				</div>
			</div>
			<div class="info-body duty-info">
				<table class="table duty-table" style="width:247px;">
				<thead>
					<tr>
						<th>
							值班部门
						</th>
						<th style="width:80px;">
							值班领导
						</th>
						<th>
							签到时间
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							安全检查总站
						</td>
						<td>
							翟山
						</td>
						<td>
							05:51:56.0
						</td>
					</tr>
					<tr>
						<td>
							安全检查总站
						</td>
						<td>
							翟山
						</td>
						<td>
							05:51:56.0
						</td>
					</tr>
					
					<tr>
						<td>
							安全检查总站
						</td>
						<td>
							翟山
						</td>
						<td>
							05:51:56.0
						</td>
					</tr>
					
					<tr>
						<td>
							公安局
						</td>
						<td>
							万芳
						</td>
						<td>
							05:56:41.0
						</td>
					</tr>
					
					<tr>
						<td>
							公安局
						</td>
						<td>
							万芳
						</td>
						<td>
							05:56:41.0
						</td>
					</tr>
					
					<tr>
						<td>
							地面服务部
						</td>
						<td>
							董东
						</td>
						<td>
							05:45:43.0
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="modal fade" tabindex="-1" role="dialog" id="selectResource" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document" style="width:450px;">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">人员设备设施选择</h4>
		        </div>
		        <div class="modal-body" id="sodbGlobalModalBody" style="height: auto;width: 450px;">
		        	<div class="form-body">
			        	<div class="form-group row">
							<div class="col-md-12">
								<div class="portlet-body">
									<div id="resourceTree" class="tree-demo"></div>
								</div>
							</div>
						</div>
					</div>
		        </div>
		        <div class="modal-footer">
		            <button type="button" onclick="hideSelectResource();" id="hideGlobalModalBtn" class="btn btn-primary">保存</button>
		            <button type="button" onclick="hideSelectResource();" id="hideGlobalModalBtn" class="btn btn-default">取消</button>
		        </div>
	        </div>
	    </div>
	</div>
</body>
<script type="text/javascript" src="/EMS-Prototype/js/emergencyIntegrate/mapConfig.js"></script>
<script type="text/javascript" src="/EMS-Prototype/js/emergencyIntegrate/resourceTree.js"></script>
<script type="text/javascript">
$(function() {
	$(".help_step_item").on("click",function(e){
		var num = $(this).children(".help_step_num").text();
		/* step_hover(num); */
		go_fa_step(num);
		for(i=1;i<=6;i++){
			$("#dropdown-body"+i).hide();
		}
		
		$("#dropdown-body"+num).show();
	});
	
	$(".route-plan-tit").click(function(e) {
		var folder = $(this).siblings(".route-plan-cnt");
		var index = $(this).attr("index");
		/* $(".route-plan-cnt").hide(400); */
		if(folder.css("display") == "none"){ 
			folder.show(400);
		}
		else{
			folder.hide(400); 
		}
	})
	
	$(".step-btn").click(function() {
		var tab = $("#processingTab");
		var normalInfo = $("#divInfo4");
		var dutyInfo = $("#divInfo5");
		if(tab.css("display")=="none"){
			tab.show(500);
			normalInfo.hide(500);
			dutyInfo.hide(500);
		}else{
			tab.hide(500);
			normalInfo.show(500);
			dutyInfo.show(500);
		}
	})
	
	$("#air-model").click(function(e) {
		var isChecked = $(this).prop("checked");
		var folder = $(this).parent().parent().siblings(".route-plan-cnt");
		if(isChecked){
			folder.show(400);
		}else{
			folder.hide(400); 	
		}
	})
});
var sel = 1;
function go_fa_step(id){
	sel = id;
	for (i=1;i<=6;i++){
	  document.getElementById("fa_"+i).className='help_step_item';
	}
	document.getElementById("fa_"+id).className+=" help_step_set"
}

function step_hover(id){
	 for (i=1;i<=11;i++){
	  document.getElementById("fa_"+i).className='help_step_item';
	 }
	 document.getElementById("fa_"+sel).className+=" help_step_set";
	 document.getElementById("fa_"+id).className +=" help_step_hover";
}

function selectResource(){
	$('#selectResource').modal('show');
}

function hideSelectResource() {
	 $('#selectResource').modal('hide');
}

</script>
</html>