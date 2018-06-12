<%@page  pageEncoding="UTF-8"%>

			   <div class="col-md-12" id="content_1" style="padding-left: 0px; padding-right: 0px;margin-left:-20px;margin-top:-40px;">
					<div id="prompt" style="display:none" class="noDataTips"><div class="tabtop_left">请选择专题数据</div><div class="hidePromptTeb" onclick="hidePrompt()"></div></div>
					<div class="left-tool" style="z-index:20000;"><!--页面左侧菜单选择区域-->
						<!--头部搜索-->
						<header class="clearfix">
							<div class="header-logo" style="font-size:13px;">安全视频场景监控</div>
							<div id="menu_display"></div>
						</header>
						<div class="left-down">
						  <nav class="classify-box" >
								<ul class="classify">
									<li class="classify-list special active" id="cd"><div class="specialNav active"  title="专题"></div></li>
									<li class="classify-list place"  id="cx"><div class="placeNav" title="地名搜索"></div></li>
								</ul>
						  </nav>
						  <div class="classify-content" style="display: block;"><!--左侧专题区域-->
								<!-- <div class="classify-tool clearfix">
									<h3 style="font-size: 16px;float: left;color: #333;">专题</h3>
									<a href="javascript:cleanChecked();" class="clear-all"><span></span>清除所选</a>
								</div> -->
								<div id="wrapper-250" style="display: block;">
									<div id="accordion-device" data-options="multiple:false;" style="height:300px;">
											<h3><a href="#" style="font-weight:normal;line-height: 1.5;">航站区</a></h3>
											<div id="terminal-area">
												<input type="checkbox" value="" title="" id="checkin-island">值机岛<br/>
												<input type="checkbox" value="" title="" id="security-checkpoint" >登机口<br/>
												<input type="checkbox" checked="checked" title="" id="boarding-gate" >登机口<br/>
												<input type="checkbox" value="" title=""  id="departure-hall">出发大厅<br/>
												<input type="checkbox" value="" title="" id="arrival-hall" >到达大厅<br/>
												<input type="checkbox" value="" title="" id="baggage-trust" >行李托运处<br/>
												<input type="checkbox" value="" title="" id="baggage-claim">行李提取处<br/>
												<input type="checkbox" value="" title="" id="lane-side">车道边<br/>
											</div>
											
											<h3><a href="#" style="font-weight:normal;line-height: 1.5;">飞行区</a></h3>
											<div id="example-0">
												 <input type="checkbox" value="" title=""   >跑道<br/>
												<input type="checkbox" value="" title=""   >滑行区<br/>
											</div>
											
											<h3><a href="#" style="font-weight:normal;line-height: 1.5;">公共区</a></h3>
											<div id="example-0">
												 <input type="checkbox" value="gawz" title="物资仓库1" onclick="clickCheckbox(this,0)"  >物资仓库1<br/>
												<input type="checkbox" value="yjwz" title="物资仓库2" onclick="clickCheckbox(this,0)"  >物资仓库2<br/>
											</div>
											
							
										    <h3><a href="#" style="font-weight:normal;line-height: 1.5;">货运区</a></h3>
											<div id="example-0">
											 	<input type="checkbox" value="ganlou" title="医疗" onclick="clickCheckbox(this,0)"  >医疗<br/>
												 <input type="checkbox" value="ganlou" title="学校" onclick="clickCheckbox(this,0)"  >学校<br/>
												 <input type="checkbox" value="yljhz" title="急救中心" onclick="clickCheckbox(this,0)"  >急救中心<br/>
												<input type="checkbox" value="ganlou" title="岗楼" onclick="clickCheckbox(this,0)"  >岗楼<br/>
												<input type="checkbox" value="wjgt" title="岗亭" onclick="clickCheckbox(this,0)"  >岗亭<br/>
												<input type="checkbox" value="kakou" title="道口" onclick="clickCheckbox(this,0)"  >道口<br/>
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
						 <div class="search-content" style="display:none;"><!--左侧查询搜索窗口-->
							     查询窗口
						 </div>
						 <div id="down-up" class="down-up">
						 	<div class="down-up-btn"></div>
						 </div><!--底部收缩按钮-->
						</div>
					</div>
					<!-- 数据窗口 -->
					<div class="main_table"  id="main_table" style="display:''; position: absolute;right:62px;top:65px;">
						<div class="main_tabletop"><div class="tabtop_left">数据</div><div class="tabtop_rt"></div></div>
						<div class="static_nav" style="border-bottom:none">
							<span class="indicator">专题：</span>
							<select class="form-control" id="select_id" onchange="changeSelect(this)" style="width:70%;margin-top:2%">
							   <option value=1>专题1</option>
							   <option value=2>专题2</option>
							</select>
			            </div>
						<div  class="table-body ps-container" id="tableDiv" style="border-left: 1px solid rgb(237, 237, 237);margin-top:71px;height:170px; overflow-y:auto;overflow-x:hidden;">
							 <table id="example" style="width:290px;font-size: 13px;">
								<thead>
									<tr>
										<th style="width:50px;border:1px solid rgb(237, 237, 237);">序号</th><th style="width:140px;">名称</th>
										<th style="width:50px;border:1px solid rgb(237, 237, 237);">状态</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="border:1px solid rgb(237, 237, 237);">1</td><td  style="border:1px solid rgb(237, 237, 237);">摄像头</td><td style="border:1px solid rgb(237, 237, 237);">在线</td>
									</tr>
								</tbody>
							</table>
					   </div>
					</div>
		            
		            			
				    <!-- 统计图窗口 -->
					<div class="main_graphic" id="tjt" style="display: '';right:62px;top:265px;z-index:2000">
						<div class="main_tabletop"><div class="tabtop_left">统计图</div><div class="tabtop_rt"></div></div>
						<div class="static_nav" style="padding-bottom:10%">
							<span class="indicator">指标：</span>
							<select class="form-control" style="width:28%;margin:1% 0 0 0;display:inline;float:left">
								<option value="设备在线率">设备在线率</option>
							</select>
							<span id="column_graphic" type="column" class="active" onclick="changeOptions(this)">
							<a href="javascript:void(0)"><img src="/sodb/img/GisLocation/pie.png"></a></span>
							<span id="line_graphic" type="line" onclick="changeOptions(this)"><a href="javascript:void(0)">
							<img src="/sodb/img/GisLocation/line.png"></a></span>
							<span id="pie_graphic" type="pie" onclick="changeOptions(this)"><a href="javascript:void(0)">
							<img src="/sodb/img/GisLocation/column.png"></a></span>
							
			            </div>
						<div id="static_chart" style="width:100%;height:80%">
						             此处放统计图 
						</div>
					</div>
			

					<!--界面中右部分按钮 -->
					<div class="floattool">
						<div class="table_nav">
							<div class="icon"></div><!-- 数据按钮 -->
						</div>
						<div class="graphic_nav">
							<div class="icon"></div><!-- 统计图按钮 -->
						</div>
					</div>
					
			   </div>
			

<script>
	
	$(document).ready( function() {
			
		
		$( "#accordion-device" ).accordion({
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
		  
		  $("#terminal-area").css("display","block");	
		  
		  $(".tabtop_rt").click(function(){
			 $(this).parent().parent().hide("slow");
		  });
         //parent.document.getElementById("mainContent").style.height="759px";
	});
	
	function hidePrompt(){
		$("#prompt").hide();
	}

	

</script>
