<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<%
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>${title }</title>
<style>
	
</style>
</head>
<body>
<div class="sodb-page-home">
<ul class="sodb-page-ul">
<li>
<i class="fa fa-home"></i> 
<a href="#">北京新机场应急救援管理</a> 
<i class="fa fa-angle-right"></i>
</li>
<li>
<a href="#">应急培训管理</a>
<i class="fa fa-angle-right"></i>
</li>
<li>
<a href="#">培训计划报名管理</a>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
  <!--   <div class="col-md-3" style="width: 18%">
       <div class="portlet blue-hoki box" >
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>部门树分类								
								</div>
							</div>
							<div class="portlet-body">
								<div id="dptree" class="tree-demo"></div>
							</div>
    	</div>
    </div> -->
<!--     航空器空中遇险应急处置预案 -->
   <div  class="col-md-9"  id="content_1" style="width:100%; " >
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>应急培训计划报名管理
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 						
<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                计划名称：<input type="text" class="form-control" id="projectName" placeholder="请输入计划名称">
            </div>
            <button type="submit" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
           <!--  <button type="button" id="updates" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:3px ">
            导出</button> -->
           
        </form>
          <!--   <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:4px ">
            批量删除</button> -->
             <%-- <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:20px ">
            删除</button>
            <a href="<%=path %>/pages/pre-plancultivate/updateCultivate.jsp"><button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right ;margin-right: 15px;margin-top:20px ">
            编辑</button></a>
             <a href="<%=path %>/pages/pre-plancultivate/addPlan.jsp"><button type="button" id="searchBtn" class="sbtn sbtn-blue" style="float: right;margin-right: 15px;margin-top:20px" 
            >
            新增</button></a> --%>
        </form>
      
   	
</form>
</div>
<form name="addPlan" class="form-horizontal" id="addPlan" action="#" method="post" enctype="multipart/form-data">
	<div class="modal fade bs-example-modal-sm" id="addChild" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
		 <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	                <h4 class="modal-title">个人总结</h4>
		        </div>
		<div class="col-md-6" style="margin-left: 70px;width: 374px;margin-top: 10px">
		
				<input type="hidden" name="projectId" id="id" >
				<div class="form-group">
							<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -140px;font-weight: bolder;">附件上传：</span>
							<input id="lefile" type="file" style="display:none">
							<div class="col-md-4">
								<input id="enclosure" class="form-control" type="text" placeholder="附件" style="margin-top: 30px;width: 290px;height: 30px">
							</div>
							<div class="col-md-4">
								<div class="sbtn sbtn-blue" onclick="$('input[id=lefile]').click();" style="margin-left: 181px; margin-top: 30px">选择附件</div>
							</div>
						</div>
				<div class="form-group" >
					<span for="outerLeader" class="col-sm-6 control-label" style="margin-top: 25px;margin-left: -140px;font-weight: bolder;">个人总结：</span>
					<div class="col-md-6" style="margin-top: 30px">
						<textarea class="form-control input-radius"
							id="applyReason" name="applyReason" placeholder="请输入个人总结"
							aria-describedby="sizing-addon2"  style="margin-top: -6px;width: 290px;height: 80px" ></textarea>
					</div>
				</div>
				</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 245px">
							<button style="margin-left: -190px; margin-top:-10px" type="button" id="ok" 
							onclick="submitStatus()"	class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 60px; margin-top: -10px" type="button" id="oksss" 
								class="sbtn sbtn-default" data-dismiss="modal"><i class="fa fa-send-o"></i> 取消</button>
						</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
</form> 					
<div id="policehold_211" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_211" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div>
					
 <div  class="col-md-9"  id="content_2" style="width:81%;display: none">
						<div class="portlet box blue-hoki">
							<div class="portlet-title">
								<div class="caption"  id="title">
									<i class="fa fa-th-list"></i>管理岗
								</div>
							</div>
							<div class="portlet-body form" style="width:100%;"> 						
							<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
	  <form class="form-inline">
            <div class="form-group" style="line-height: 50px;margin-top:-8px">
                计划名称：<input type="text" class="form-control" id="projectName" placeholder="请输入计划名称">
            </div>
            <button type="button" id="searchBtn" class="sbtn sbtn-blue" style="margin-left: 15px;margin-top:-5px"><i class="fa fa-search"></i> 
            查询</button>
           
      
   	
</form>

</div>
							
<div id="policehold_311" class="dlshouwen-grid-container" style="margin-top:5px;"></div>
<div id="police_311" class="dlshouwen-grid-toolbar-container"></div>
						</div>
					</div>					
				</div>
				</div>
				</div>
		
				<div class="modal fade" id="addHuman" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 
</div>
 <div class="modal fade" id="allcourses" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							报名人员列表
						</h4>
					</div>
					<div class="modal-body">
						<div class="row clearfix" style="margin-bottom: 20px;margin-top:10px;font-family: 微软雅黑, 黑体;">
							<div class="col-md-12 form-inline">
								<form action="" method="post">
									<div class="input-group input-group-sm" style="width: 50%;margin-right: 10px;">
										<span class="input-group-addon">姓名</span>
										<input class="form-control" name="applicant" type="text" value="" >
									</div>
									
									<button type="button" class="btn btn-default btn-sm">查询</button>
									
								</form>
							</div>
						</div>
						<div class="row clearfix" style="overflow:scroll">
							<div class="col-md-12">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th ><div style="width:100%;text-align: center">
													序号
												</div></th>
											<th><div style="width:100%;text-align: center">
													姓名
												</div></th>
											<th><div style="width:100%;text-align: center">
													身份证号
												</div></th>
											<th><div style="width:100%;text-align: center">
													性别
												</div></th>
											<th><div style="width:100%;text-align: center">
													电话
												</div></th>
											<th><div style="width:100%;text-align: center">
													部门
												</div></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><div style="width:100%;text-align: center">
											1
												</div></td>
											<td>
											<div style="width:100%;text-align: center">
											张三
												</div>
											</td>
											<td><div style="width:100%;text-align: center">
											1500000000000000000
												</div>
											</td>
											<td><div style="width:100%;text-align: center">
											32时
												</div></td>
											<td><div style="width:100%;text-align: center">
											北京
												</div></td>
											<td>
												<div style="width:100%;text-align: center">
													<!-- <button type="button" class="sbtn sbtn-blue" onclick="fn()" id="conf" style="margin: 0 auto !important;">取消资格</button> -->
													救援部
												</div>
											</td>
										</tr>
										<tr>
											<td><div style="width:100%;text-align: center">
											2
												</div></td>
											<td>
											<div style="width:100%;text-align: center">
											李四
												</div>
											</td>
											<td><div style="width:100%;text-align: center">
											1500000000000000000
												</div>
											</td>
											<td><div style="width:100%;text-align: center">
											32时
												</div></td>
											<td><div style="width:100%;text-align: center">
											北京
												</div></td>
											<td>
												<div style="width:100%;text-align: center">
												救援部
												</div>
											</td>
										</tr>
										<tr>
											<td><div style="width:100%;text-align: center">
											3
												</div></td>
											<td>
											<div style="width:100%;text-align: center">
											王五
												</div>
											</td>
											<td><div style="width:100%;text-align: center">
											1500000000000000000
												</div>
											</td>
											<td><div style="width:100%;text-align: center">
											32时
												</div></td>
											<td><div style="width:100%;text-align: center">
											北京
												</div></td>
											<td>
												<div style="width:100%;text-align: center">
												救援部
												</div>
											</td>
										</tr>
										<tr>
											<td><div style="width:100%;text-align: center">
											4
												</div></td>
											<td>
											<div style="width:100%;text-align: center">
											张安
												</div>
											</td>
											<td><div style="width:100%;text-align: center">
											1500000000000000000
												</div>
											</td>
											<td><div style="width:100%;text-align: center">
											32时
												</div></td>
											<td><div style="width:100%;text-align: center">
											北京
												</div></td>
											<td>
												<div style="width:100%;text-align: center">
												救援部
												</div>
											</td>
										</tr>
										<tr>
											<td><div style="width:100%;text-align: center">
											5
												</div></td>
											<td>
											<div style="width:100%;text-align: center">
											赵丽
												</div>
											</td>
											<td><div style="width:100%;text-align: center">
											1500000000000000000
												</div>
											</td>
											<td><div style="width:100%;text-align: center">
											32时
												</div></td>
											<td><div style="width:100%;text-align: center">
											北京
												</div></td>
											<td>
												<div style="width:100%;text-align: center">
												救援部
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row clearfix">
							<div class="col-md-12">
								<!-- <span class="glyphicon glyphicon-step-backward" style="color: #5E8CE7;"></span>
								<span class="glyphicon glyphicon-triangle-left" style="color: #5E8CE7;"></span>
								<span class="glyphicon glyphicon-triangle-right" style="color: #5E8CE7;"></span>
								<span class="glyphicon glyphicon-step-forward" style="color: #5E8CE7;"></span> &nbsp;&nbsp;
								<img src="../../../images/delim.gif">&nbsp;&nbsp; -->
								<span class="glyphicon glyphicon-refresh" style="color: #5E8CE7;"></span>
								<div style="float: right;">
									<form>
		
										
										<span>每页</span>
										<select id="company" name="company" style="width: 40px;">
											<option value="0">10</option>
											<option value="1">15</option>
											<option value="2">20</option>
											<option value="4">25</option>
											<option value="5">30</option>
											<option value="6">35</option>
										</select>
										<span>条数</span>&nbsp;&nbsp;
									
										<span>共5条记录，显示1到10</span>&nbsp;
										
										<a href="#"></a><input type="text" value="1" style="width: 30px;text-align: center;" /><span>
								/1页&nbsp;</span>
										
										
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-success" data-dismiss="modal" id="conf">确定</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal" id="back">取消</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
			</div>
<div class="modal fade" tabindex="-1" role="dialog" id="colorConfig" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document" style="width:350px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">事件状态颜色配置</h4>
	        </div>
	        <div class="modal-body" id="sodbGlobalModalBody" style="height: 150px;width: 350px;">
	        	<div class="form-body">
		        	<div class="form-group row">
						<label class="col-md-8 control-label">准备阶段:</label>
						<div class="col-md-4">
							<input type="color" value="#FF0000"/>
						</div>
					</div>
					<div class="col-md-12" style="height:20px;"></div>
					<label class="col-md-8 control-label">处置阶段:</label>
					<div class="col-md-4">
							<input type="color" value="#1E90FF"/>
					</div>
					<div class="col-md-12" style="height:20px;"></div>
					<label class="col-md-8 control-label">已发布:</label>
					<div class="col-md-4">
							<input type="color" value="#2D9900"/>
					</div>
				</div>
	        </div>
	        <div class="modal-footer">
	            <button type="button" onclick="hideColorConfig();" id="hideGlobalModalBtn" class="btn btn-primary">保存</button>
	            <button type="button" onclick="hideColorConfig();" id="hideGlobalModalBtn" class="btn btn-default">取消</button>
	        </div>
        </div>
    </div>
</div>
<!-- 发布 -->
<div class="modal fade bs-example-modal-sm" id="ceshi" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<input type="text" id="fds" style="display: none;">
	
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
			<div class="col-md-6" style="margin-left: 85px;width: 374px;margin-top: 26px">
					<div class="form-group">
						<span for="outerLeader" class="col-sm-6 control-label" style="width:400px; margin-top: 15px;font-weight: bolder;font-size: 18px;margin-left: 26%" >是否报名？</span>
						</div>					
					</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 125px">
							<button style="margin-left: -70%; margin-top: -40px" type="button" id="okCeshi" 
								class="sbtn sbtn-blue" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 8%; margin-top: -40px" type="button" 
							class="sbtn sbtn-default"  data-dismiss="modal"><i class="fa fa-send-o"></i>取消</button>
								
						</div>
				</div>
			</div>
					
			
		</div>
	</div>
</div>
<!-- 取消发布 -->
<div class="modal fade bs-example-modal-sm" id="ceshiII" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<input type="text" id="qwe" style="display: none;">
	<div class="modal-dialog" style="width: 550px; height: 500px;">
		<div class="modal-content">
			<div class="col-md-6" style="margin-left: 85px;width: 374px;margin-top: 26px">
					<div class="form-group">
						<span for="outerLeader" class="col-sm-6 control-label" style="width:400px; margin-top: 15px;font-weight: bolder;font-size: 18px;margin-left: 30%" >是否撤销？</span>
						</div>					
					</div>
			<div class="form-group">
				<div style="margin-left: 35%;" >
					<div style="margin-left: 41%;margin-top: 125px">
							<button style="margin-left: -70%; margin-top: -40px" type="button" id="noOkCeshi" 
								class="sbtn sbtn-blue" data-dismiss="modal"><i class="fa fa-send-o"></i> 确定</button>
							<button style="margin-left: 8%; margin-top: -40px" type="button" 
							class="sbtn sbtn-default"  data-dismiss="modal"><i class="fa fa-send-o"></i>取消</button>
								
						</div>
				</div>
			</div>
					
			
		</div>
	</div>
</div>
<script type="text/javascript" src="<%=path %>/businessJs/cultivate.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	
	var datas = [
		{ "id":"1" ,"ids":"01培训营","idso":"A001" , "state":"已发布","states":"1","states1":"未培训","name":"常识培训","time1":"2018/01/01","time2":"2018/05/01","time3":"2018/01/01","time4":"32时","place":"北京","places":"否","number":"55","number1":"40","fujian":"无附件"},
		{ "id":"2" ,"ids":"01培训营", "idso":"A002" ,"state":"已发布","states":"1","states1":"已完成","name":"场务培训","time1":"2018/01/01","time2":"2018/05/01","time3":"2018/01/01","time4":"32时","place":"上海","places":"是","number":"40","number1":"45","fujian":"无附件"},
		{ "id":"3" ,"ids":"01培训营", "idso":"A002" ,"state":"已发布","states":"0","states1":"未培训","name":"场务培训","time1":"2018/01/01","time2":"2018/05/01","time3":"2018/01/01","time4":"32时","place":"上海","places":"否","number":"40","number1":"45","fujian":"无附件"},
		/* { "id":"3" ,"ids":"民航局培训营", "idso":"A003" ,"name":"礼仪培训","time1":"2018/01/01","time2":"2018/05/01","time3":"2018/01/01","time4":"32时","place":"广州","number":"20","number1":"10","fujian":"无附件"},
		{ "id":"4" ,"ids":"民航局培训营", "idso":"A004" ,"name":"应急措施培训","time1":"2018/01/01","time2":"2018/05/01","time3":"2018/01/01","time4":"32时","place":"深圳","number":"44","number1":"40","fujian":"无附件"},
		{ "id":"5" ,"ids":"民航局培训营", "idso":"A005" ,"name":"岗位业务培训","time1":"2018/01/01","time2":"2018/05/01","time3":"2018/01/01","time4":"32时","place":"长安","number":"5","number1":"4","fujian":"无附件"},
		{ "id":"6" ,"ids":"民航局培训营", "idso":"A006" , "name":"安全教育培训","time1":"2018/01/01","time2":"2018/05/01","time3":"2018/01/01","time4":"32时","place":"贵阳","number":"11","number1":"10","fujian":"无附件"},
		{ "id":"7" ,"ids":"民航局培训营", "idso":"A006" ,"name":"团队协作培训","time1":"2018/01/01","time2":"2018/05/01","time3":"2018/01/01","time4":"32时","place":"洛阳","number":"111","number1":"40","fujian":"无附件"}, */


];
	var gridColumns_2_1_1 = [
		{id:'id', title:'序号', type:'number', columnClass:'text-center'},
     	{id:'ids', title:'培训机构', type:'number', columnClass:'text-center'},
     	{id:'idso', title:'培训计划编号', type:'number', columnClass:'text-center'},
     	{id:'name', title:'计划名称', type:'string', columnClass:'text-center',
     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
		        var content = ''; 	                     			                     			
		        content += '<a href="<%=path %>/pages/pre-plancultivate/lookUpdateCultivate.jsp">'+value+'</a>'; 
		        return content;                     			
		    }	},
     	{id:'time1', title:'起始时间', type:'string', columnClass:'text-center'},
     	{id:'time2', title:'结束时间', type:'string', columnClass:'text-center'},
     	{id:'state', title:'计划状态', type:'string', columnClass:'text-center',
			resolution : function(value, record,column, grid, dataNo, columnNo) {
				if(value == '未发布'){
					var content = '<span style="color: #FF0000;">'+value+'</span>';
				}else if(value == '已发布'){
	   				var content = '<span style="color: #1E90FF;">'+value+'</span>';
	   			}
	   			else{
	             	var content = '<span style="color: #2D9900;">'+value+'</span>';
	            }
	          	return content;
	     	}},
	     	{id:'states', title:'报名状态', type:'string', columnClass:'text-center',
				resolution : function(value, record,column, grid, dataNo, columnNo) {
					if(value == '0'){
						var content = '<span style="color: #FF0000;">' +'未报名'+ '</span>';
					}else if(value == '1'){
		   				var content = '<span style="color: #2D9900;">'+'已报名'+'</span>';
		   			}
		          	return content;
		     	}},
	     	{id:'states1', title:'培训状态', type:'string', columnClass:'text-center',
				resolution : function(value, record,column, grid, dataNo, columnNo) {
					if(value == '未培训'){
						var content = '<span style="color: #FF0000;">'+value+'</span>';
					}else if(value == '进行中'){
		   				var content = '<span style="color: #1E90FF;">'+value+'</span>';
		   			}
		   			else if(value == '已完成'){
		             	var content = '<span style="color: #2D9900;">'+value+'</span>';
		            }
		          	return content;
		     	}},
     	{id:'time3', title:'报名截止时间', type:'string', columnClass:'text-center'},
     	{id:'time4', title:'学时', type:'string', columnClass:'text-center'},
     	{id:'place', title:'地点', type:'string', columnClass:'text-center'},
     	{id:'number', title:'人数', type:'string', columnClass:'text-center'},
    	{id:'number1', title:'已报名人数', type:'string', columnClass:'text-center',width:'90',
			resolution : function(value, record,column, grid, dataNo, columnNo) {
				 var content = ''; 	                     			                     			
			        <%-- content += '<a href="<%=path %>/pages/pre-plancultivate/lookUpdateCultivate.jsp">'+value+'</a>';  --%>
				if(record.number1 >= record.number){
					var content = '<span><a onclick="showModel();" style="color: #FF0000;">'+value+'</a></span>';
				}else{
	             	var content = '<span><a onclick="showModel();" style="color:#2D9900;">'+value+'</a></span>';
	            }
	          	return content;
	     	}},
	    {id:'places', title:'填写总结', type:'string', columnClass:'text-center'},
      	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center',width:'200'
      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
			        var content = ''; 
			        
			        if(record.states=='0'){
			        	content +="<button class='sbtn sbtn-blue btn-sm'  id='issueBtn' "
		                    + "onclick=issueApp('"
		                    + record.id
		                    + "');>报名</button>"; 
			        }else if(record.states=='1'){
			        	content += "<button class='sbtn sbtn-blue btn-sm'  id='deletesOneBtn' "
	                        + "onclick=unissueApp('"
	                        + record.id
	                        + "');>撤销</button>";
			        }
			        	
			         	/* content += '  ';
			         	if(record.states1=='已完成'){
			         		content += '<a onclick="addPlanApp();"><button  class="sbtn sbtn-blue">培训总结</button></a>';
			         	}else{
			         		
			         	} */
			        	
			        	
			        return content;                     			
			    }		
      	}
     ];
	                     var gridOption_2_1_1 = {
	                     	lang : 'zh-cn',
	                     	ajaxLoad : false,
	                     	exportFileName : '用户列表',
	                     	datas : datas,
	                     	check : true,
	                     	columns : gridColumns_2_1_1,
	                     	gridContainer : 'policehold_211',
	                     	toolbarContainer : 'police_211',
	                     	tools : 'refresh',
	                     	pageSize : 10,
	                     	pageSizeLimit : [10, 20, 50]
	                     };
 	                     var grid_2_1_1 = $.fn.dlshouwen.grid.init(gridOption_2_1_1);
    	                     $(function(){
    	                     	grid_2_1_1.load();
    	                     });
    	                     $("#updates").click(function(){
    	                    	 var records = grid_2_1_1.getCheckedRecords();
							     var ids = [];
							     var i = 0;
								    var str;
								    for( i =0 ; i<records.length;i++){
										   if(records[i].places=='否'){
											  showMsg('未总结无法导出！');
											  str = 0;
											  break;
										   }
								    }
								    for( k =0 ; k<records.length;i++){
									    if(str == 0){
									    	break;
									    }else if(records[k].places=='是'){
									    		window.location.href = "<%= basePath %>pages/pre-personnel/grpxzj.xlsx";
									    		//如果一个文件对应一个数据  将break删除  如果一个文件对应多条数据 break保留
											  break;
										   }
								    }
        	                 	})
        	                 	$("#okCeshi").click(function(){
    	                    		 var id = $("#fds").val();
	    	                    	console.log(datas);
								     for(var i = 0 ;i < datas.length; i++ ){
											if(datas[i].id == id){
												datas[i].states = 1;
											}
								     }
								     grid_2_1_1.load();

							})
							 $("#noOkCeshi").click(function(){
    	                    		 var id = $("#qwe").val();
	    	                    	console.log(datas);
								     for(var i = 0 ;i < datas.length; i++ ){
											if(datas[i].id == id){
												datas[i].states = 0;
											}
								     }
								     grid_2_1_1.load();

							})
	                  
 });
/*  发布*/
function issueApp(id){
	$("#fds").val(id);
	$("#ceshi").modal();
	 


}
/* 取消发布 */
function unissueApp(id){
	  $("#qwe").val(id);
	  $("#ceshiII").modal();
}
function addPlanApp(){
	  $("#addChild").modal();
}
  function fn(){
	  confirm("是否撤销？");
  }
  function fns(){
	  showMsg('报名成功！',3);
  }
  function fnss(){
	  showMsg('已成功撤销！',3);
  }
  function trees(){
	 
  }  
  $(document).ready(function() {
		
		var datas = [
			{ "id":"1" , "name":"常识培训","time1":"2018年1月","time2":"2018年1月","place":"北京","number":"55","number1":"40","cultivate":"办公室"},
			{ "id":"2" , "name":"场务培训","time1":"2018年1月","time2":"2018年1月","place":"上海","number":"40","number1":"40","cultivate":"财务部"},
			{ "id":"3" , "name":"礼仪培训","time1":"2018年1月","time2":"2018年1月","place":"广州","number":"20","number1":"10","cultivate":"人力资源部"},
			{ "id":"4" , "name":"应急措施培训","time1":"2018年1月","time2":"2018年1月","place":"深圳","number":"44","number1":"40","cultivate":"安检"},
			{ "id":"5" , "name":"岗位业务培训","time1":"2018年1月","time2":"2018年1月","place":"长安","number":"5","number1":"4","cultivate":"护卫"},
			{ "id":"6" , "name":"安全教育培训","time1":"2018年1月","time2":"2018年1月","place":"贵阳","number":"11","number1":"10","cultivate":"物流"},
			{ "id":"7" , "name":"团队协作培训","time1":"2018年1月","time2":"2018年1月","place":"洛阳","number":"111","number1":"40","cultivate":"信息中心"},
	

	];
		var gridColumns_3_1_1 = [
			{id:'id', title:'培训编号', type:'number', columnClass:'text-center'},
	     	{id:'name', title:'课程名称', type:'string', columnClass:'text-center',
	     		resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
			        var content = ''; 	                     			                     			
			        content += '<a href="#">'+value+'</a>'; 
			        return content;                     			
			    }	
	     	},
	     	{id:'time1', title:'起始时间', type:'string', columnClass:'text-center'},
	     	{id:'time2', title:'结束时间', type:'string', columnClass:'text-center'},
	     	{id:'place', title:'地点', type:'string', columnClass:'text-center'},
	     	{id:'number', title:'人数', type:'string', columnClass:'text-center'},
	     	{id:'number1', title:'已报名人数', type:'string', columnClass:'text-center'},
	     	{id:'cultivate', title:'部门', type:'string', columnClass:'text-center'},
	     	{id:'fujian', title:'查看附件', type:'string', columnClass:'text-center'},
	      	{id:'caozuo', title:'操作', type:'string', columnClass:'text-center'
	      		, resolution:function(value, record, column, grid, dataNo, columnNo){ 	                     			
				        var content = ''; 	                     			
				        if(record.number==record.number1){
				        	content += '<a onclick="showModel()"><button  class="sbtn sbtn-blue">查看详情</button></a>';	
				        }
				        else{
				        	content += '<a href="#"><button class="sbtn sbtn-default">报名</button></a>'; 
				        }
				        return content;                     			
				    }		
	      	}
	     ];
		                     var gridOption_3_1_1 = {
		                     	lang : 'zh-cn',
		                     	ajaxLoad : false,
		                     	exportFileName : '用户列表',
		                     	datas : datas,
		                     	check : true,
		                     	columns : gridColumns_3_1_1,
		                     	gridContainer : 'policehold_311',
		                     	toolbarContainer : 'police_311',
		                     	tools : 'refresh',
		                     	pageSize : 10,
		                     	pageSizeLimit : [10, 20, 50]
		                     };
	 	                     var grid_3_1_1 = $.fn.dlshouwen.grid.init(gridOption_3_1_1);
	    	                     $(function(){
	    	                     	grid_3_1_1.load();
	    	                     });
		          
	 }); 
 
  $("#backBtn").click(function(){
	    window.history.go(-1);
	})
	 function toList() {
			window.location = "trainingPlanList.html";
		}
		function showModel(){
			$("#allcourses").modal().show();
		}
		$('input[id=lefile]').change(function() {
			$('#enclosure').val($(this).val());
		});
		$(document).ready(function() {
			var all = $("#allcheck");
			var allcheckbox = $("input[type='checkbox']:not(:first)");
			$("input[type='checkbox']:not(:first)").click(function() {
				for(var i = 0; i < allcheckbox.length; i++) {
					if(allcheckbox[i].checked == false) {
						$("#allcheck").removeAttr("checked");
						break;
					}
				}
			});
			$("#allcheck").click(function() {
				if($(this).is(':checked')) {
					for(var i = 0; i < allcheckbox.length; i++) {
						allcheckbox[i].checked = true;
					}
				} else {
					for(var i = 0; i < allcheckbox.length; i++) {
						allcheckbox[i].checked = false;
					}
				}
			});
			$("#conf").click(function(){
				var messg="";
				for(var i = 0; i < allcheckbox.length; i++) {
					if(allcheckbox[i].checked == true) {
						var s=$(allcheckbox[i]).parent().next().next().next().children().text();
						messg=messg+"  "+s;
					}
				}
				all.removeAttr("checked");
				allcheckbox.removeAttr("checked");
				var mes=$("#trainingCt").val();
				$("#trainingCt").val(mes+" "+messg);
			});
			$("#back").click(function(){
				all.removeAttr("checked");
				allcheckbox.removeAttr("checked");
			});
		});
		 
</script>		
		
</body>
</html>