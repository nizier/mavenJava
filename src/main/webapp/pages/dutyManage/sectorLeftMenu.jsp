<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp"%>
			   <div class="col-md-12" id="content_1" style="padding-left: 0px; padding-right: 0px;margin-left:-20px;margin-top:10px;">
					<div id="prompt" style="display:none" class="noDataTips">
					<div class="tabtop_left">请选择专题数据</div>
					<div class="hidePromptTeb" onclick="hidePrompt()"></div></div>
					<div class="left-tool" style="z-index:20000;"><!--页面左侧菜单选择区域-->
						<!--头部搜索-->
						<header class="clearfix">
							<div class="header-logo">机场地理信息服务</div>
							<div id="menu_display" title="菜单"></div>
						</header>
						<div class="left-down">
						  <nav class="classify-box" >
								<ul class="classify">
									<li class="classify-list special active" id="cd"><div class="specialNav active"  title="专题"></div></li>
									<li class="classify-list place"  id="cx"><div class="placeNav" title="设备搜索"></div></li>
								</ul>
						  </nav>
						  <div class="classify-content" style="display: block;"><!--左侧专题区域-->
<!-- 								<div class="classify-tool clearfix"> -->
<!-- 									<h3 style="font-size: 16px;float: left;color: #333;">设备分类</h3> -->
<!-- 									<a href="javascript:clean();" class="clear-all"><span></span>清除所选</a> -->
<!-- 								</div> -->
								<div id="wrapper-250">
									<div id="accordion" data-options="multiple:false;" style="height:300px;">
											<h3><a href="#" style="font-weight:normal;line-height: 1.5;">设备资源</a></h3>
											<div id="example-0">			
											<input class="showtable" type="checkbox"  id="camera" checked="checked">视频监控设备<br/>
												<input class="showtable" type="checkbox"  id="access" >门禁设备<br/>
												<input class="showtable" type="checkbox" >围界设备<br/>	
												<input class="showtable" type="checkbox" >道闸口设备<br/>	
												<input class="showtable" type="checkbox" >隐蔽报警设备<br/>																
											</div>
											
											<h3><a href="#" style="font-weight:normal;line-height: 1.5;">人力资源</a></h3>
											<div id="example-0">	
											    <input class="showtable" type="checkbox" id="ab">安保人员<br/>
												<input class="showtable" type="checkbox" id="aj">安检人员<br/>	
												<input class="showtable" type="checkbox" id="xf">消防人员<br/>																								
											</div>
											<h3><a href="#" style="font-weight:normal;line-height: 1.5;">停车场管理系统</a></h3>
											<div id="example-0">																							
											</div>
											
											
											
											
									</div>
									<div class="ps-scrollbar-x-rail" style="width: 241px; display: none; left: 0px; bottom: 1px;">
										<div class="ps-scrollbar-x" style="left: 0px; width: 0px;"></div>
									</div>
									<div class="ps-scrollbar-y-rail" style="top: 0px; height: 445px; display: inherit; right: 1px;">
										<div class="ps-scrollbar-y" style="top: 0px; height: 168px;"></div>
									</div>
							  </div>
						  </div>
<!-- 						 <div class="search-content" style="display:none;">左侧查询搜索窗口 -->
							 
<!-- 									<h3 style="font-size: 16px;float: left;color: #333;">设备搜索</h3> -->
<!-- 									<a href="javascript:clean();" class="clear-all"><span></span>清除搜索结果</a> -->
						          
						  
<!-- 						 </div> -->
						 <div id="down-up" class="down-up">
						 	<div class="down-up-btn"></div>
						 </div><!--底部收缩按钮-->
						</div>
					</div>
					
					<!-- tdt -->
					<div class="main_table" id="main_table" style="display: '';width:400px;height:350px;border-radius: 8px;">
					    <div class="title-event">
					<span>业务资源统计表</span><a class="glyphicon glyphicon-remove remove-btn"
				id="remove-btn" onclick="removeWin($('#main_table'));"></a>
				
				
				</div>
						<div class="static_nav" style="padding-bottom:10%">
							<span class="indicator">业务资源名称：</span>
							<select class="form-control" style="width:28%;margin:1% 0 0 0;display:inline;float:left">
							   <option value=1>视频监控系统</option>
							   <option value=2>门禁系统</option>
							   <option value=3>围界系统</option>
							   <option value=4>道闸口系统</option>
							   <option value=5>停车场管理系统</option>
							</select>
							
			            </div>
						<div id="" style="width:400px;">
						
						       <table class="table" style="margin-top:45px;">
				<thead>
					<tr>
						<th>
							资源名称
						</th>
						<th>
							资源类型
						</th>
						<th>
							资源位置
						</th>
						<th>
							状态
						</th>
					</tr>
				</thead>
				<tbody>
					<tr> 
 							<td>摄像头</td> 
 							<td >安防类</td> 
 							<td >T1航站楼上方</td> 
 							<td>在线</td> 
 					</tr> 
					<tr>
						<td>摄像头</td> 
 							<td >安防类</td> 
 							<td >T1航站楼上方</td> 
 							<td>在线</td> 
					</tr>
					<tr>
						<td>摄像头</td> 
 							<td >安防类</td> 
 							<td >T1航站楼上方</td> 
 							<td>故障</td> 
					</tr>
					<tr>
						<td>摄像头</td> 
 							<td >安防类</td> 
 							<td >T1航站楼上方</td> 
 							<td>离线</td> 
					</tr>
					<tr>
						<td>摄像头</td> 
 							<td >安防类</td> 
 							<td >T1航站楼上方</td> 
 							<td>在线</td> 
					</tr>
				</tbody>
			</table>  
			<ul class="pagination" style="position:relative;bottom:23px;left:70px;">
				<li>
					 <a href="#">上一页</a>
				</li>
				<li>
					 <a href="#">1</a>
				</li>
				<li>
					 <a href="#">2</a>
				</li>
				<li>
					 <a href="#">3</a>
				</li>
				<li>
					 <a href="#">4</a>
				</li>
				<li>
					 <a href="#">5</a>
				</li>
				<li>
					 <a href="#">下一页</a>
				</li>
			</ul>
			
						</div>
					</div>		
				
					<div class="main_graphic" id="tjt" style="display: '';width:400px;height:370px;border-radius: 8px;">
					    <div class="title-event">
					<span>业务资源统计图</span><a class="glyphicon glyphicon-remove remove-btn"
				id="remove-btn" onclick="removeWin($('#tjt'));"></a>
				
				
				</div>
						<div class="static_nav" style="padding-bottom:10%">
							<span class="indicator">业务资源名称：</span>
							<select class="form-control" style="width:28%;margin:1% 0 0 0;display:inline;float:left">
							   <option value=1>视频监控系统</option>
							   <option value=2>门禁系统</option>
							   <option value=3>围界系统</option>
							   <option value=4>隐蔽报警系统</option>
							   <option value="5">停车场管理系统</option>
							    <option value="5">人力资源</option>
							</select>
							<span id="pie_graphic" type="column" class="active">
							<a href="javascript:void(0)"><img src="/sodb/img/GisLocation/pie.png"></a></span>
							<span id="line_graphic" type="line"><a href="javascript:void(0)">
							<img src="/sodb/img/GisLocation/line.png"></a></span>
							<span id="column_graphic" type="pie"><a href="javascript:void(0)">
							<img src="/sodb/img/GisLocation/column.png"></a></span>
							
			            </div>
						<div id="static_chart" style="width:400px;height:280px;margin-top:45px;">
						         
						</div>
					</div>					
			   </div>
<script>
	
	$(document).ready( function() {
		$( "#accordion" ).accordion({
               'collapsible': true,
               'active': null,
               'heightStyle': 'content'
           });
		//init.js
		  initEvent();//初始化事件
		  initLeftCon();//左侧抽屉菜单初始化
		  $('#tableDiv').perfectScrollbar();
		
		  $('#tab-info').DataTable({  
              /*基本参数设置，以下参数设置和默认效果一致*/  
              "bPaginate": false, //翻页功能  
              "bLengthChange": false, //改变每页显示数据数量  
              "bFilter": false, //过滤功能  
              "bSort": true, //排序功能  
              "bInfo": false,//页脚信息  
              /*默认翻页样式设置*/  
              "sPaginationType": "full_numbers"
          });
		  
		  $(".tabtop_rt").click(function(){
			 $(this).parent().parent().hide("slow");
		  });
         //parent.document.getElementById("mainContent").style.height="759px";
		 // $('#option1').css("display","block");
		
				$("#btn").click();
	});
	
	function hidePrompt(){
		$("#prompt").hide();
	}
  
	

</script>
									