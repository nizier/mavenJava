<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>添加设备</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet" href="<%=path %>/css/pilotcockpit.css" />
<link rel="stylesheet" href="<%=path %>/css/pagebar.css" />
<link rel="stylesheet" type="text/css"
	href="<%=path %>/css/bootstrapValidator.min.css" />
<script type="text/javascript"
	src="<%=path %>/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/bootstrap-select.js">	</script>
 <link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap-select.css">
  <script type="text/javascript">
 $(window).on('load', function () {

     
	 $('.selectpicker').selectpicker({
	                'selectedText': 'cat'
	            });

	         
	   // $('.selectpicker').selectpicker('hide');
	        });
  </script>	
<style>
.portlet.box.blue-hoki > .portlet-title {
    background-color: #67809f;
}
</style>
</head>
<body>
	<div class="sodb-page-home">
		<ul class="sodb-page-ul">
			<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#">方案管理</a> <i class="fa fa-angle-right"></i></li>
			<li><a href="#">新增方案</a></li>
		</ul>
	</div>
	<div class="page-container" style="padding-left: 0px;">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<div id="content_1">
					<div class="portlet box blue-hoki">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-th-list"></i>预案模板信息管理
							</div>
						</div>
						<div class="portlet-body form">
							<form id="form1" class="form-horizontal" role="form" action="#"
								enctype="multipart/form-data" method="post">
								<div class="form-body">
								<!-- 	111	 -->	
							<div class="tabbable" id="tabs-975144" style="">
				<ul class="nav nav-tabs">
					<li class= "active">
						 <a href="#panel-938456" data-toggle="tab">值班经理席（室内）</a>
					</li>
					<li class="activees">
						 <a href="#panel-933832" data-toggle="tab">指挥协调席（室内）</a>
					</li>

				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-938456" style="margin-top: 30px;">
						<div class="form-body" >
					
								<div class="form-group" style="margin-top:-24px;margin-left: -285px">
									<label class="col-md-4 control-label">启动：
									</label>
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-6" style="margin-left:182px">
											<input type="checkbox"/>&nbsp;<span >《航空器场外失事处置预案》，时间：<input type="text" placeholder="请输入时间"></span>&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<input type="checkbox"  style="margin-left:-190px"/>&nbsp;<span >人员分工</span>&nbsp;&nbsp;&nbsp;&nbsp;
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-6" style="margin-left:372px">
											<input type="checkbox"  style="margin-left:-190px"/>&nbsp;<span >通知塔台</span>&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										
									</div>
								
									<div class="row" style="margin-top: 20px;width:940px;margin-left:165px">
									<div class="col-md-12">
										<table class="table table-bordered" style="text-align: center">
											<thead>
											<tr><td class="hidden" style="text-align: center;font-size: 16px;"  colspan="13">专任教师校验</td></tr>
											<tr>
												<th style="width:440px;font-weight:500;">&nbsp;&nbsp;通知单位<br><br>
												（先使用“应急救援1”通报，对未回复的单位进行电话通知）
												</th>
												<th style="font-weight:500;width:135px;">姓&nbsp;名</th>
												<th style="font-weight:500;">通知时间（启动）</th>
												<th style="font-weight:500;">通知时间（结束）</th>
											</tr>
											</thead>
												<tr> 
													<td style="text-align:left"><input type="checkbox">&nbsp;&nbsp;机场消防88888888/99999999</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
												<tr> 
													<td style="text-align:left"><input type="checkbox">&nbsp;&nbsp;机场消防88888888/99999999</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
												<tr> 
													<td style="text-align:left"><input type="checkbox">&nbsp;&nbsp;机场消防88888888/99999999</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
												<tr> 
													<td style="text-align:left"><input type="checkbox">&nbsp;&nbsp;机场消防88888888/99999999</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
										</table>
								</div>
							</div>	
							<div class="form-group" style="margin-top:-24px;margin-left: -163px">
									<label class="col-md-4 control-label">启动：TMCC呼叫。
									</label>
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-6" style="margin-left:182px;width:745px">
											<input type="text" style="border: none;border-bottom: black 1px solid;" >航班已场外失事，<input type="text" style="border: none;border-bottom: black 1px solid;" >(机型)
											<input type="text" style="border: none;border-bottom: black 1px solid;" >（机号）<br>
											现启动《航空器场外失事处置预案》，立即紧急出动，前往<input type="text" style="border: none;border-bottom: black 1px solid;" >（事件地点）。<br>
											请各部门收到后按顺序回复，完毕。
										</div>
										
									</div>
							<div class="row" style="margin-top: 20px;width:940px;margin-left:165px">
									<div class="col-md-12">
										<table class="table table-bordered" style="text-align: center">
											<thead>
											<tr><td class="hidden" style="text-align: center;font-size: 16px;"  colspan="13">专任教师校验</td></tr>
											<tr>
												<th style="width:350px;font-weight:500;">&nbsp;&nbsp;电话通知
												</th>
												<th style="font-weight:500;width:135px;">姓&nbsp;名</th>
												<th style="font-weight:500;">通知时间（启动）</th>
												<th style="font-weight:500;">通知时间（结束）</th>
											</tr>
											</thead>
												<tr> 
													<td style="text-align:left">航空公司：接报人<input type="text" style="border: none;border-bottom: black 1px solid;" >；<br>
														电话：<input type="text" style="border: none;border-bottom: black 1px solid;" >；
													</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
												<tr> 
													<td style="text-align:left">生产运营总值班</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
												<tr> 
													<td style="text-align:left">股份一号值班</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
												<tr> 
													<td style="text-align:left">应急管理模块业务经理（牵头人）和主管</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
										</table>
								</div>
							</div>
								

						</div>
					</div>
					<div class="tab-pane activees" id="panel-933832" style="margin-left: 15px;margin-top: 30px;">
					<div class="form-body" >
								<div class="form-group" style="margin-top:-24px;margin-left: 123px;width:1357px">
									<label class="col-md-4 control-label">电话通知失事地点所在政府：顺义-69430000/朝阳-6500000
									</label>
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:182px">
											<input type="text" style="border: none;border-bottom: black 1px solid;" >（航班）失事，事件地点<input type="text" style="border: none;border-bottom: black 1px solid;" >
											，本场已启动航空器场外失事处置预案。
										</div>
										
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-6" style="margin-left:372px">
											<input type="checkbox"  style="margin-left:-190px"/>&nbsp;<span >询问航空公司：</span>&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										
									</div>
										<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:182px">
											旅客<input type="text" style="border: none;border-bottom: black 1px solid;" >名，机组人数<input type="text" style="border: none;border-bottom: black 1px solid;" >名，
											要客<input type="text" style="border: none;border-bottom: black 1px solid;" >名，<input type="text" style="border: none;border-bottom: black 1px solid;"  placeholder="有/无">危险品<br><br>
											装载位置<input type="text" style="border: none;border-bottom: black 1px solid;" >并告知值班经理。
										</div>
										
									</div>
										<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:372px">
											<input type="checkbox"  style="margin-left:-190px"/>&nbsp;<span >需要时，同航空公司获取乘客名单，向申请单位（公安和联检单位）提供</span>&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										
									</div>
								
									<div class="row" style="margin-top: 20px;width:940px;margin-left:165px">
									<div class="col-md-12">
										<table class="table table-bordered" style="text-align: center">
											<thead>
											<tr><td class="hidden" style="text-align: center;font-size: 16px;"  colspan="13">专任教师校验</td></tr>
											<tr>
												<th style="width:440px;font-weight:500;">电话通知
												</th>
												<th style="font-weight:500;width:135px;">姓&nbsp;名</th>
												<th style="font-weight:500;">通知时间（启动）</th>
												<th style="font-weight:500;">通知时间（结束）</th>
											</tr>
											</thead>
												<tr> 
													<td style="text-align:left"><input type="checkbox">&nbsp;&nbsp;新闻中心</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
												<tr> 
													<td style="text-align:left"><input type="checkbox">&nbsp;&nbsp;质量安全部值班领导</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
												<tr> 
													<td style="text-align:left"><input type="checkbox">&nbsp;&nbsp;北京安监局</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
												<tr> 
													<td style="text-align:left"><input type="checkbox">&nbsp;&nbsp;顺义应急办</td>
													<td style="text-align:left">
														<select style="width:125px;"class="form-control">
															<option>请选择人员</option>
															<option>张三</option>
															<option>李四</option>
														</select>
													</td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
													<td style="text-align:left"><input type="text" class="form-control" placeholder="请输入时间"></td>
												</tr>
										</table>
								</div>
							</div>	
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:182px;width:745px">
											启动：<input type="text" style="border: none;border-bottom: black 1px solid;" >（单位），这里是TMCC，<input type="text" style="border: none;border-bottom: black 1px solid;" >(航班)在<br>
											<input type="text" style="border: none;border-bottom: black 1px solid;" >（地点）
											失事，已启动《航空器场外失事处置预案》，各救援单位已紧急出动。<br>
											解除：<input type="text" style="border: none;border-bottom: black 1px solid;" >（单位），解除《航空器场外失事处置预案》。
										</div>
										
									</div>
									
									<div class="form-group" style="margin-top:15px">
										<label class="col-md-4 control-label" style="font-weight:600;margin-left:-156px">室内监控:
										</label>
										
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:182px;width:745px">
											监听对讲机“应急救援1”频率，收集汇总现场信息<br>
											现场图像上大屏并录像，信号连接成功，时间<input type="text" style="border: none;border-bottom: black 1px solid;" ><br>
											综合指挥车到位（需要时），信号连接成功，时间<input type="text" style="border: none;border-bottom: black 1px solid;" >
										</div>
										
									</div>
									<div class="form-group" style="">
										<label class="col-md-4 control-label" style="font-weight:600;margin-left:-43px">各单位到位时间及汇报情况:
										</label>
										
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:182px;width:920px">
											消防<input type="text" style="border: none;border-bottom: black 1px solid;" >
											指挥官<input type="text" style="border: none;border-bottom: black 1px solid;" >
											人数<input type="text" style="border: none;border-bottom: black 1px solid;" >
											车数<input type="text" style="border: none;border-bottom: black 1px solid;" >
											
										</div>
										
									</div>
										<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:182px;width:920px">
											急救<input type="text" style="border: none;border-bottom: black 1px solid;" >
											指挥官<input type="text" style="border: none;border-bottom: black 1px solid;" >
											人数<input type="text" style="border: none;border-bottom: black 1px solid;" >
											车数<input type="text" style="border: none;border-bottom: black 1px solid;" >
										</div>
										
									</div>
										<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:182px;width:920px">
											公安<input type="text" style="border: none;border-bottom: black 1px solid;" >
											指挥官<input type="text" style="border: none;border-bottom: black 1px solid;" >
											人数<input type="text" style="border: none;border-bottom: black 1px solid;" >
											车数<input type="text" style="border: none;border-bottom: black 1px solid;" >
										</div>
										
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:182px;width:920px">
											武警<input type="text" style="border: none;border-bottom: black 1px solid;" >
											指挥官<input type="text" style="border: none;border-bottom: black 1px solid;" >
											人数<input type="text" style="border: none;border-bottom: black 1px solid;" >
										</div>
										
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:182px;width:920px">
											飞行区（需要时）<input type="text" style="border: none;border-bottom: black 1px solid;" >
											指挥官<input type="text" style="border: none;border-bottom: black 1px solid;" >
											人数<input type="text" style="border: none;border-bottom: black 1px solid;" >
										</div>
										
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:182px;width:920px">
											地面代理<input type="text" style="border: none;border-bottom: black 1px solid;" >
											航空公司<input type="text" style="border: none;border-bottom: black 1px solid;" >
											
										</div>
										
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:182px;width:920px">
											机务（需要时）<input type="text" style="border: none;border-bottom: black 1px solid;" >
							
										</div>
										
										
									</div>
									<div class="form-group" style="margin-top:15px">
										<div class="col-md-12" style="margin-left:182px;width:920px">
											现场指挥部成立，时间：<input type="text" style="border: none;border-bottom: black 1px solid;" >
							
										</div>
										
									</div>
								

						</div>
					</div>
						
					<!-- 应急救援处置 -->
					
					
						
				</div>
			</div>
	
								<!-- 	111	 -->							
								</div>
								<div class="form-actions" style="margin-top: 30px;">
									<div class="row">
										<div class="col-md-offset-5 col-md-9">
											<button type="submit" class="sbtn sbtn-blue sbtn30">
												保存</button>
											<button style="margin-left: 45px;" type="button"
												 onclick="window.location.href='checkEvolve.jsp'"
												class="sbtn sbtn-default sbtn30">取消</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--start modal-->
			
			<!--end modal-->
		</div>
		<!-- 模板 -->
		<form name="addPlan" class="form-horizontal" id="addPlans" action="#" method="post" enctype="multipart/form-data">
	<div class="modal fade bs-example-modal-sm" id="addChilds" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
		 <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">模板选择</h4>
		        </div>
		<div class="col-md-6" style="margin-left: 70px;width: 374px;margin-top: 10px">
		
				<input type="hidden" name="projectId" id="id" >
					
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">总结人：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<input type="text" class="form-control input-radius"
							id="projectCode" name="projectCode" placeholder="请输入创建人"
							aria-describedby="sizing-addon2" required="required" disabled="true" value="管理员1">
					</div>
				</div>
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 28px;margin-left: -62px;font-weight: bolder;">上传附件：</span>
					
						<input id="lefile" type="file" style="display:none">
							<div class="col-md-4">
								<input id="enclosure" class="form-control" type="text" placeholder="附件" style="margin-top: 25px;margin-left: 0px;font-weight: bolder;width: 176px" value="应急救援管理.pdm">
							</div>
							<div class="col-md-4">
								<div class="sbtn sbtn-blue" onclick="$('input[id=lefile]').click();" style="margin-top: -34px;margin-left: 323px;font-weight: bolder;">选择附件</div>
							</div>
					
				</div>
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -61px;font-weight: bolder;">培训总结：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<textarea class="form-control input-radius"
							id="applyReason" name="applyReason" placeholder="请输入培训总结"
							aria-describedby="sizing-addon2"  style="margin-top: -6px;width: 290px;height: 80px" >打算打是的撒大大发生了国家的法律根据</textarea>
					</div>
				</div>
				<hr style="margin-left:-84px;width: 159%">
				</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 245px">
							<button style="margin-left: -266px; margin-top:28%" type="button" id="ok" 
							onclick="submitStatus()"	class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 36px; margin-top: 28%" type="button" id="oksss" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
						</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
	</div>
	<script type="text/javascript">
	function getPath(obj,fileQuery,transImg) {
	   var imgSrc = '', imgArr = [], strSrc = '' ;
	   if(window.navigator.userAgent.indexOf("MSIE")>=1){ // IE浏览器判断
	    if(obj.select){
	     obj.select();
	     var path=document.selection.createRange().text;
	     obj.removeAttribute("src");
	     imgSrc = fileQuery.value ;
	     imgArr = imgSrc.split('.') ;
	     strSrc = imgArr[imgArr.length - 1].toLowerCase() ;
	     if(strSrc.localeCompare('jpg') === 0 || strSrc.localeCompare('jpeg') === 0 || strSrc.localeCompare('gif') === 0 || strSrc.localeCompare('png') === 0){
	      obj.setAttribute("src",transImg);
	      obj.style.filter=
	       "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+path+"', sizingMethod='scale');"; // IE通过滤镜的方式实现图片显示
	     }else{
	      throw new Error('File type Error! please image file upload..'); 
	     }
	    }else{
	     imgSrc = fileQuery.value ;
	     imgArr = imgSrc.split('.') ;
	     strSrc = imgArr[imgArr.length - 1].toLowerCase() ;
	     if(strSrc.localeCompare('jpg') === 0 || strSrc.localeCompare('jpeg') === 0 || strSrc.localeCompare('gif') === 0 || strSrc.localeCompare('png') === 0){
	      obj.src = fileQuery.value ;
	     }else{
	      throw new Error('File type Error! please image file upload..') ;
	     }
	    }
	   } else{
	    var file =fileQuery.files[0];
	    var reader = new FileReader();
	    reader.onload = function(e){
	     imgSrc = fileQuery.value ;
	     imgArr = imgSrc.split('.') ;
	     strSrc = imgArr[imgArr.length - 1].toLowerCase() ;
	     if(strSrc.localeCompare('jpg') === 0 || strSrc.localeCompare('jpeg') === 0 || strSrc.localeCompare('gif') === 0 || strSrc.localeCompare('png') === 0){
	      obj.setAttribute("src", e.target.result) ;
	     }else{	  
	      throw new Error('File type Error! please image file upload..') ;
	     }
	    }
	    reader.readAsDataURL(file);
	   }
	  }
	  function show(){
	   //以下即为完整客户端路径
	   var file_img=document.getElementById("img"),
	    logo = document.getElementById("logo") ;
	   getPath(file_img,logo,file_img) ;
	  }
	  

/*  $(function(){

	$("#querenArea").hide();
	$('#securityTable a').click(function(e) {
		e.preventDefault();//阻止a链接的跳转行为 
		var area = $(this).attr("data-area-id");
		if ($(".btn-default").css("display") == "none") {
			$(".btn-default").css('display','block');
		}else{
			$(".btn-default").css('display','none');
		}
		$(".area-test").hide();
		$("#" + area).show();
		$(this).tab('show');//显示当前选中的链接及关联的content

	});
	
}); */
$('#tit li').click(function() {
    var i = $(this).index();//下标第一种写法
    $(this).addClass('select').siblings().removeClass('select');
    $('#con li').eq(i).show().siblings().hide();
});
</script>
</body>
</html>