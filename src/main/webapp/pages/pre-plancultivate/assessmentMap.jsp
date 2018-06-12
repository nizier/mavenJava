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
	<div class="step-btn"></div>
	<div class="processingTab" id="processingTab" style="display:block;">
		<div class="portlet box blue-hoki">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>应急救援事件信息
				</div>
			</div>
			<div class="portlet-body" style="text-align: center;">
				<div class="help_wrap" style="margin: 0 auto;">
				  	<div class="help_step_box fa">
				    	<div id="fa_1" class="help_step_item">
				      		<div class="help_step_num">1</div>
				      		事件发生
				      		<div class="help_step_right"></div>
				    	</div>
					    <div id="fa_2" class="help_step_item">
					      	<div class="help_step_left"></div>
					      	<div class="help_step_num">2</div>
					    	事件信息传递
					      	<div class="help_step_right"></div>
					    </div>
					    <div id="fa_3" class="help_step_item">
					      	<div class="help_step_left"></div>
					      	<div class="help_step_num">3</div>
					      	应急救援响应
					      	<div class="help_step_right"></div>
					    </div>
					    <div id="fa_4" class="help_step_item">
					      	<div class="help_step_left"></div>
					      	<div class="help_step_num">4</div>
					     	应急救援处置
					      	<div class="help_step_right"></div>
					    </div>
					    <div id="fa_5" class="help_step_item">
					      	<div class="help_step_left"></div>
					      	<div class="help_step_num">5</div>
					      	后期处置
					      	<div class="help_step_right"></div>
					    </div>
					    <div id="fa_6" class="help_step_item  help_step_set">
					      	<div class="help_step_left"></div>
					      	<div class="help_step_num">6</div>
					      	机场恢复
					      	<div class="help_step_right"></div>
					    </div>
				    </div>
				</div>
				
				<div class="dropdown-body" id="dropdown-body1"  style="display: none;">
					<div class="col-md-2"></div>
					<div class="step-form1 col-md-8">
						<div class="step-form"><span>事件名称：</span><input type="text" name="eventName" /></div>
						<div class="step-form"><span>上报人：</span><input type="text" name="eventCharge" /></div>
						<div class="step-form">
							<span>事件发生地点：</span>
							<input type="text" name="lat" style="width:34%;margin-left:15px;" placeholder="纬度"/>
							<input type="text" name="lng" style="width:34%" placeholder="经度"/>
						</div>
						<div class="step-form"><span>事件内容：</span><input type="text" name="eventContent" /></div>
						<div class="step-form"><span>附件：</span><input type="file" name="eventFile" /></div>
						<div class="step-form"><span>事件级别：</span>
							<select type="text" name="eventLevel">
								<option>请选择</option>
							</select>
						</div>
						<div class="step-form"><span>预案类别：</span>
							<select type="text" name="eventLevel">
								<option>请选择</option>
							</select>
						</div>
						
						<div class="step-form"><span>事件负责人：</span><input type="text" name="eventCharge" /></div>
						<div class="step-form"><span>通报单位：</span><input type="text" name="eventDept" /></div>
					</div>
					<div class="col-md-2"></div>
					<div style="margin:0 auto;position: absolute; bottom: 7%;" class="col-md-12">
						<button class="sbtn sbtn-blue">下一步</button>
						<button class="sbtn sbtn-default">返回</button>
					</div>
				</div>
				
				<div class="dropdown-body" id="dropdown-body2" style="display: none;">
					<div class="col-md-2"></div>
					<div class="step-form2 col-md-8">
						<div class="step-form"><span>部门：</span><input type="text" name="eventDept" /></div>
						<div class="step-form"><span>联系人：</span><input type="text" name="eventContact" /></div>
						<div class="step-form"><span>时间：</span><input type="date" name="eventTime" /></div>
						<div class="step-form"><span>电话：</span><input type="text" name="eventTel" /></div>
						<div class="step-form"><span>附件：</span><input type="file" name="eventFile" /></div>
					</div>
					<div class="col-md-2"></div>
					<div style="margin:0 auto;position: absolute; bottom: 7%;" class="col-md-12">
						<button class="sbtn sbtn-blue">下一步</button>
						<button class="sbtn sbtn-default">返回</button>
					</div>
				</div>
				
				<div class="dropdown-body" id="dropdown-body3" style="display: none;">
					<div class="step-form3 col-md-12">
						<div class="cut-off">值班员</div>
						
						<div class="step-form-hori" style="width:48%;"><span style="">主指挥席值班员：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span>副指挥席值班员：</span><input type="text" name="eventDept" /></div>
						
						<div class="cut-off">消防护卫部</div>
						<div class="second-cut-off">消防护卫车辆：</div>
						<div class="step-form-hori" style="width:48%;"><span style="">时间：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span>数量：</span><input type="text" name="eventDept" /></div>
						
						<div class="second-cut-off">消防护卫部人员：</div>
						<div class="step-form-hori" style="width:48%;"><span style="">时间：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span>人数：</span><input type="text" name="eventDept" /></div>
						
						<div class="cut-off">现场指挥部</div>
						<div class="step-form-hori" style="width:48%;"><span style="">成立时间：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span>人员数量：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span style="">其他部门支援：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span>航空公司营运人：</span><input type="text" name="eventDept" /></div>
					</div>
					<div style="margin:0 auto;position: absolute; bottom: 7%;" class="col-md-12">
						<button class="sbtn sbtn-blue">下一步</button>
						<button class="sbtn sbtn-default">返回</button>
					</div>
				</div>
				
				<div class="dropdown-body" id="dropdown-body4" style="display: none;">
					<div class="step-form3 col-md-12">
						<div class="cut-off">事件处置</div>
						<div class="step-form" style="width:55%;"><span>消防护卫部：</span><input type="text" name="eventName" /></div>
						
						<div class="cut-off">信息反馈</div>
						<div class="step-form-hori" style="width:48%;"><span style="">处置信息汇报：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span>现场指挥部：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span style="">指挥信息传达：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span>航行通告：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span style="">政府部门：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span>民航管理局</span><input type="text" name="eventDept" /></div>
						
						<div class="step-form"><span>附件：</span><input type="file" name="eventFile" /></div>					
					</div>
					<div style="margin:0 auto;position: absolute; bottom: 7%;" class="col-md-12">
						<button class="sbtn sbtn-blue">下一步</button>
						<button class="sbtn sbtn-default">返回</button>
					</div>
				</div>
				
				<div class="dropdown-body" id="dropdown-body4" style="display: none;">
					<div class="step-form3 col-md-12">
						<div class="cut-off">消防护卫部</div>
						<div class="step-form-hori" style="width:48%;"><span style="">撤退时间：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span>撤退说明：</span><input type="text" name="eventDept" /></div>
						
						<div class="cut-off">网络信息部</div>
						<div class="step-form-hori" style="width:48%;"><span style="">撤退时间：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span>撤退说明：</span><input type="text" name="eventDept" /></div>
						
						<div class="cut-off">急救中心</div>
						<div class="step-form-hori" style="width:48%;"><span style="">撤退时间：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span>撤退说明：</span><input type="text" name="eventDept" /></div>
						
						<div class="cut-off">其他</div>
						<div class="step-form-hori" style="width:48%;float:left;"><span style="">行李物品清理：</span><input type="text" name="eventDept" /></div>
						
						<div class="step-form"><span>附件：</span><input type="file" name="eventFile" /></div>					
					</div>
					<div style="margin:0 auto;position: absolute; bottom: 7%;" class="col-md-12">
						<button class="sbtn sbtn-default">返回</button>
						<button class="sbtn sbtn-blue">下一步</button>
					</div>
				</div>
				<div class="dropdown-body" id="dropdown-body5" style="display: none;">
					<div class="step-form3 col-md-12">
						<div class="cut-off">消防护卫部</div>
						<div class="step-form-hori" style="width:48%;"><span style="">撤退时间：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span>撤退说明：</span><input type="text" name="eventDept" /></div>
						
						<div class="cut-off">其他</div>
						<div class="step-form-hori" style="width:48%;float:left;"><span style="">行李物品清理：</span><input type="text" name="eventDept" /></div>
						
						<div class="step-form"><span>附件：</span><input type="file" name="eventFile" /></div>					
					</div>
					<div style="margin:0 auto;position: absolute; bottom: 7%;" class="col-md-12">
						<button class="sbtn sbtn-blue">下一步</button>
						<button class="sbtn sbtn-default">返回</button>
					</div>
				</div>
				
				<div class="dropdown-body" id="dropdown-body6" style="display: block;">
					<div class="step-form3 col-md-12">
						
						<div class="step-form-hori" style="width:48%;"><span style="">事件开始时间：</span><input type="date" name="eventStart" /></div>
						<div class="step-form-hori" style="width:48%;"><span>时间结束时间：</span><input type="date" name="eventEnd" /></div>
						
						<div class="cut-off">其他</div>
						<div class="step-form-hori" style="width:48%;"><span style="">发布航行通告：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span style="">申请恢复：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span style="">路面清理：</span><input type="text" name="eventDept" /></div>
						<div class="step-form-hori" style="width:48%;"><span style=""></span></div>
						<div class="step-form"><span>文件记录：</span><input type="file" name="eventFile" /></div>					
					</div>
					<div style="margin:0 auto; position: absolute; bottom: 7%;"  class="col-md-12">
						<button class="sbtn sbtn-blue">评估</button>
						<button class="sbtn sbtn-default">返回</button>
					</div>
				</div>
			</div>		
		</div>
	</div>
	
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
		
		<div id="divInfo3" class="info portlet box blue-hoki" style="display: block;left:5%; top: 33%;">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>事件相关内容
				</div>
			</div>
			
			<div class="info-body" style="height: 200px;overflow-y: scroll;padding:10px;text-align: center;">
				<div class="info-form"><span>事件名称：</span><input type="text" name="eventName" value="应急"/></div>
				<div class="info-form"><span>负责人：</span><input type="text" name="eventCharge" value="王大锤"/></div>
				<div class="info-form"><span>上报人：</span><input type="text" name="eventCreate" value="王子珩"/></div>
				<div class="info-form"><span>纬度：</span><input type="text" name="lat" id="lat" value="40.081341"/></div>
				<div class="info-form"><span>经度：</span><input type="text" name="lng" id="lng" value="116.599399"/></div>
				<div class="info-form">
					<span style="position: relative;bottom:30px;">详细位置：</span>
					<textarea name="eventLocation" style="position:relative;left:6px;width:125px;">
						航站区A区
					</textarea>

				</div>
				<div class="info-form">
					<span style="position: relative;bottom:30px;">事件内容：</span>
					<textarea name="eventContent" style="position:relative;left:6px;width:125px;">
						应急事件
					</textarea>
				</div>
				<div class="info-form"><span>预案类型：</span><input type="text" name="eventType" value="综合预案"/></div>
				<button class="sbtn sbtn-blue" style="margin:0 auto;">保存</button>
			</div>
		</div>
		
		<div id="duty-info" class="info portlet box blue-hoki" style="display: none;left:5%; top: 63%;width:520px;">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>审计信息
				</div>
			</div>
			<div class="info-body duty-info">
				<table class="table duty-table" style="width:500px;">
				<thead>
					<tr>
						<th style="text-align: center;">
							处理阶段
						</th>
						<th style="text-align: center;">
							事件内容
						</th>
						<th style="text-align: center;">
							部门
						</th>
						<th style="text-align: center;">
							操作人员
						</th>
						<th style="text-align: center;">
							操作时间
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							事件发生
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							翟章
						</td>
						<td>
							2018/02/01 16:14
						</td>
					</tr>
					
					<tr>
						<td>
							事件信息传递
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							王蛤蛤
						</td>
						<td>
							2018/02/01 16:14
						</td>
					</tr>
					
					<tr>
						<td>
							应急救援响应
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							王涛
						</td>
						<td>
							2018/02/01 16:14
						</td>
					</tr>
					
					<tr>
						<td>
							应急救援处置
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
						<td>
							董大宝
						</td>
						<td>
							2018/02/01 16:14
						</td>
					</tr>
				</tbody>
			</table>
			</div>
		</div>
		
		<div id="divInfo5" class="info portlet box blue-hoki" style="display: none;right:1%; top: 5%;">
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
		
		<div id="divInfo4" class="info portlet box blue-hoki" style="display: none;right:1%; top: 35%;width:270px;">
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
</body>
<script type="text/javascript" src="/EMS-Prototype/js/emergencyIntegrate/mapData.js"></script>
<script type="text/javascript" src="/EMS-Prototype/js/emergencyIntegrate/mapConfig.js"></script>
<script type="text/javascript">
$(function() {
	var warning = "warning";
	var warningMarker = createMarker(116.618263,40.08377,warning);
	map.addOverlay(warningMarker);
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
	
	$(".resourceCheck").click(function(){
		var type = $(this).attr("id");
		if(type=="hospital"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.hospital;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					hospitalMarker.push(marker);
					map.addOverlay(marker);
				}
			}else{
				for(i in hospitalMarker){
					map.removeOverlay(hospitalMarker[i]);
				}
			}
		}
		else if(type=="airplane"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.airplane;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					airplaneMarker.push(marker);
					map.addOverlay(marker);
				}
			}else{
				for(i in airplaneMarker){
					map.removeOverlay(airplaneMarker[i]);
				}
			}
		}
		else if(type=="ambulance"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.ambulance;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					ambulanceMarker.push(marker);
					map.addOverlay(marker);
				}
			}else{
				for(i in ambulanceMarker){
					map.removeOverlay(ambulanceMarker[i]);
				}
			}
		}
		else if(type=="barrier"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.barrier;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					barrierMarker.push(marker);
					map.addOverlay(marker);
				}
			}else{
				for(i in hospitalMarker){
					map.removeOverlay(hospitalMarker[i]);
				}
			}
		}
		else if(type=="doctor"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.doctor;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					doctorMarker.push(marker);
					map.addOverlay(marker);
				}
			}else{
				for(i in doctorMarker){
					map.removeOverlay(doctorMarker[i]);
				}
			}
		}
		else if(type=="fireCar"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.fireCar;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					fireCarMarker.push(marker);
					map.addOverlay(marker);
				}
			}else{
				for(i in fireCarMarker){
					map.removeOverlay(fireCarMarker[i]);
				}
			}
		}
		else if(type=="firefighter"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.firefighter;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					firefighterMarker.push(marker);
					map.addOverlay(marker);
				}
			}else{
				for(i in firefighterMarker){
					map.removeOverlay(firefighterMarker[i]);
				}
			}
		}
		else if(type=="fireStation"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.fireStation;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					fireStationMarker.push(marker);
					map.addOverlay(marker);
				}
			}else{
				for(i in fireStationMarker){
					map.removeOverlay(fireStationMarker[i]);
				}
			}
		}
		else if(type=="firewall"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.firewall;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					firewallMarker.push(marker);
					map.addOverlay(marker);
				}
			}else{
				for(i in firewallMarker){
					map.removeOverlay(firewallMarker[i]);
				}
			}
		}
		else if(type=="hydrant"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.hydrant;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					hydrantMarker.push(marker);
					map.addOverlay(marker);
				}
			}else{
				for(i in hydrantMarker){
					map.removeOverlay(hydrantMarker[i]);
				}
			}
		}
		else if(type=="policeCar"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.policeCar;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					policeCarMarker.push(marker);
					map.addOverlay(marker);
				}
			}else{
				for(i in policeCarMarker){
					map.removeOverlay(policeCarMarker[i]);
				}
			}
		}
		else if(type=="policeman"){
			var isChecked = $(this).prop("checked");
			if(isChecked){
				var hos = airportData.policeman;
				for(i in hos){
					var marker = createMarker(hos[i][0],hos[i][1],type);
					policemanMarker.push(marker);
					map.addOverlay(marker);
				}
			}else{
				for(i in policemanMarker){
					map.removeOverlay(policemanMarker[i]);
				}
			}
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


</script>
</html>