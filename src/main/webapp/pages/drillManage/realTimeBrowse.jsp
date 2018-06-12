<%@page pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header_jstree.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>安全视频列表展示</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<link href="<%=path%>/css/securityMonitoring/securityVideo/securityVideo.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/css/custom/a.css" rel="stylesheet" type="text/css"/>
<style>
	.video-button:hover{
		cursor: pointer;
		background-color: #6699cc;
	}
	.portlet.box.blue-hoki {
    border: 1px solid #869ab3;
	}
/* 	.jstree-default .jstree-anchor{
	color:white !important;
} */
select{background:#67809F;}

input { font-size: 14px; font-weight: bold;  }

input[type=range]:before { content: attr(min); padding-right: 5px; }
input[type=range]:after { content: attr(max); padding-left: 5px;}

output {
    display: block;
    font-size: 5.5em;
    font-weight: bold;
}
</style>
</head>

<body>
	<div class=" page-container ">
		<div class="page-content-wrapper">
			<div class="sodb-page-home" style="padding-left: 34px;">
				<ul class="sodb-page-ul">
					<li><i class="fa fa-home"></i> <a href="#">青岛机场安全管理</a> <i
						class="fa fa-angle-right"></i></li>
					<li><a href="#">安全态势管控</a> <i class="fa fa-angle-right"></i></li>
					<li><a href="#">安全视频场景监控</a> <i class="fa fa-angle-right"></i></li>
					<li><a href="#">安全视频列表展示</a></li>
				</ul>
			</div>
			<div style="clear:both;"></div>
			<div class="row">
				<div class="col-md-3" style="margin-top: 10px;">
					<div class="row">					
						<div class="col-md-12" style="margin-right: 0px;padding:0px;" >
							<div class="portlet box blue-hoki" >
								<div class="portlet-title">
									<div class="col-md-3" style=" padding: 12px 0px;">
										<div>设备树</div>
									</div>
									<div class="col-md-9" style="text-align: right;padding-top: 12px;">									
										<select  style="border: 0px;border: none;outline:none; ">
											  <option >类型</option>
											  <option value ="saab">航站区</option>
											  <option value="opel">飞行区</option>
											  <option value="audi">控制区</option>
											  <option value="audi">公共区</option>
										</select>	&nbsp;
										<select  style="border: 0px;border: none;outline:none; ">
											  <option >状态</option>
											  <option value="saab">在线</option>
											  <option value="opel">离线</option>
											  <option value="audi">故障</option>
											  <option value="audi">缺失</option>
										</select>										
									</div>
								</div>
								<div style="margin-top: 10px;margin-left: 12px;">
									<input style="withd:30%;padding-top: 0px" placeholder="输入监控点名称"> &nbsp; &nbsp; <button class="sbtn sbtn-blue">搜索</button>
								</div>
								<div class="portlet-body" style="padding-top: 10px;height:300px;overflow-y:scroll;
								margin-left: 5px; padding-left:0px;" >
									<div id="tree_1" class="tree" ></div>
								</div>
							</div>
						</div>
						<div class="col-md-12" style="margin-right: 0px;padding:0px;margin-top:-20px !important;">
							<div class="portlet box blue-hoki" >
									<div class="portlet-title">
										<div class="" style="margin-right: 5px; padding: 12px 0px;">
												<div style="display: inline-block; margin-left: 20px"> 控制台</div>&nbsp;
												<div style="display: inline-block; margin-left: 20px">预置位</div>&nbsp;
												<div style="display: inline-block; margin-left: 20px">巡航</div>&nbsp;
												<div style="display: inline-block; margin-left: 25px">参数</div>
										</div>
									</div>
								    <div class="tab-pane ng-scope active" style="height:250px;">
					                    <div class="ptz ng-scope" style="margin-top:30px;margin-left:30px; ">
					                        <a href="" class="ptz-a p0"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p1" title="上" onmousedown="ptzRBControl(1)" onmouseup="ptzRBControl(101)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p2" title="右上" onmousedown="ptzRBControl(2)" onmouseup="ptzRBControl(102)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p3" title="右" onmousedown="ptzRBControl(3)" onmouseup="ptzRBControl(103)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p4" title="右下" onmousedown="ptzRBControl(4)" onmouseup="ptzRBControl(104)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p5" title="下" onmousedown="ptzRBControl(5)" onmouseup="ptzRBControl(105)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p6" title="左下" onmousedown="ptzRBControl(6)" onmouseup="ptzRBControl(106)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p7" title="左" onmousedown="ptzRBControl(7)" onmouseup="ptzRBControl(107)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p8" title="左上" onmousedown="ptzRBControl(8)" onmouseup="ptzRBControl(108)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p9" title="看守位" onmousedown="ptzRBControl(9)" onmouseup="ptzRBControl(109)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p10" title="变焦-" onmousedown="ptzZoomFocus(2,1)" onmouseup="ptzZoomFocus(102,1)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p11" title="变焦+" onmousedown="ptzZoomFocus(1,1)" onmouseup="ptzZoomFocus(101,1)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p12" title="聚焦+" onmousedown="ptzZoomFocus(1,2)" onmouseup="ptzZoomFocus(101,2)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p13" title="聚焦-" onmousedown="ptzZoomFocus(2,2)" onmouseup="ptzZoomFocus(102,2)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p14" title="光圈缩小" onclick="ptzIRIS(1)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p15" title="光圈放大" onclick="ptzIRIS(0)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p16" title="灯光" onclick="ptzLightWiper(1)"></a>
					                        <a onfocus="this.blur();" href="" class="ptz-a p17" title="雨刷" onclick="ptzLightWiper(2)"></a>
					                    </div>
					                    <div style="margin-top: 20px;">
					                    	<button style="margin-left: 20px;width: 120px" >水平巡航</button>
					                    	<button style="margin-left: 20px;width: 120px" >垂直巡航</button>
					                    </div>
					                    <div style="margin-top: 20px;">
				                            <div style="margin-left: 30px;">速度:
				                            <form>
											    <input type="range" step="2" min="0" max="10" value="2" style="width: 200px;margin-left: 30px" />
											</form>
											</div>
				                            
					                    </div>
					                </div>
								</div>
							</div>	
					</div>
				</div>

				<div class="col-md-9 " style="margin-top: 10px;">
					<div class="row">
						<div class="col-md-12" style="margin-left: -13px;padding-left:0px;">
							<div class="portlet box blue-hoki">
								<div class="portlet-title">
									<div class="caption"
										style="margin-left: -35px; padding: 12px 0px;">
										<ul>
											<li class="video-button"><img
												src="<%=path%>/img/securityVideo/realTimeBrowse/capture.png">抓拍</li>
											<li class="video-button"><img
												src="<%=path%>/img/securityVideo/realTimeBrowse/videotape.png">录像</li>
											<li class="video-button"><img
												src="<%=path%>/img/securityVideo/realTimeBrowse/enlarge.png">放大</li>
											<li class="video-button"><img
												src="<%=path%>/img/securityVideo/realTimeBrowse/yuntai.png">云台</li>
											<li class="video-button"><img
												src="<%=path%>/img/securityVideo/realTimeBrowse/playback.png">回放</li>
											<li class="video-button"><img
												src="<%=path%>/img/securityVideo/realTimeBrowse/suspend.png">暂停</li>
											<li class="video-button"><img 
												src="<%=path%>/img/securityVideo/realTimeBrowse/relay.png">接力</li>
											<li class="video-button"><img
												src="<%=path%>/img/securityVideo/realTimeBrowse/tagging.png">标注</li>
											<li class="video-button"><img
												src="<%=path%>/img/securityVideo/realTimeBrowse/collection.png">收藏</li>
											<li class="video-button" id="setting"><img
												src="<%=path%>/img/securityVideo/realTimeBrowse/settings.png">轮巡设置</li>
											<li class="video-button"><img src="<%=path%>/img/securityVideo/realTimeBrowse/close.png">关闭</li>
										</ul>
									</div>
								</div>
								<div class="portlet-body" style="padding: 10px;">
									<div>
										<img style="display: inline-block; width: 49%; height: 300px;"
											src="<%=path%>/img/securityVideo/realTimeBrowse/monitor1.png" class="monitor_img"/>
										<img style="display: inline-block; width: 49%; height: 300px;"
												src="<%=path%>/img/securityVideo/realTimeBrowse/monitor2.png" class="monitor_img"/>
										<img style="display: inline-block; width: 49%; height: 300px;"
												src="<%=path%>/img/securityVideo/realTimeBrowse/monitor3.png" class="monitor_img"/>
										<img style="display: inline-block; width: 49%; height: 300px;"
												src="<%=path%>/img/securityVideo/realTimeBrowse/monitor4.png" class="monitor_img"/>						
										<!-- 四张监控图片 -->											
										
									</div>
									
									<div class="portlet box blue-hoki" style="margin: 12px -10px -12px;">
										<div class="portlet-title">
											<div class="caption" style="float: right;">
												<img src="<%=path%>/img/securityVideo/realTimeBrowse/tools_grid.png">
											</div>
										</div>
									</div>	
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 轮巡设置模态框 -->
	<div class="modal fade bs-example-modal-sm" id="settingModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 500px; height: 500px;">
			<div class="modal-content">
				<div class="portlet box blue-hoki">
					<div class="portlet-title">
						<div class="caption" id="title">
							<i class="fa fa-th-list">轮巡设置</i>
						</div>
					</div>
					<div class="portlet-body form" style="margin-top: 30px;">
						<form action="#" id="editform"  class="form-horizontal" role="form" onsubmit="return editcheck()">					    
							 <div class="form-group">
								 <label for="cycleTime" class="col-sm-4 control-label">轮巡时间：</label>
								 <div class="col-sm-5">
									 <input type="text" class="form-control" id="editname" name="name">
								 </div>
								  <div id="checkEditName">s</div>
							 </div>
							 
							 <div class="form-group">
								<label for="firstname" class="col-sm-4 control-label">轮巡组：</label>
								<div class="col-sm-5">
									<input type="hidden"  name="eventName" id="eventName" />
									<div id="tree" class="tree"></div>
								</div>
							</div>	
										
							 <div class="form-group">
						        <div style="margin-left: 35%;">
							        	   <button type="button" id="submitBtn" class="sbtn sbtn-blue" >保存</button>
								           <button  id="editCancel" style="margin-left: 45px;" type="button"
									               class="sbtn sbtn-default" data-dismiss="modal">取消</button>
							    </div>
					         </div>
						 </form>
					</div>
				</div>				
			</div>
		</div>
	</div>
</body>
	<script>

		

		//青岛机场视频资源树
		$('#tree_1').jstree({
		"core" : {
		"themes" : {
			"responsive" : false
		},
		"check_callback" : true,
        'data' : [
            {
        	'id':'0',
          	'text' : '青岛机场视频资源树', 
            'dataType': 'JSON',
            'data' : function (node) {
            	return { 'id' : node.id};
            },
            "icon": "/qdsodb/img/videoTree/airplane.png",
            'state' : {
  	           'opened' : true,
  	           'selected' : false
  	         },
             'children' : [                                           
       			        {
       			        	'id':'1',
       			        	'text' : '航站区', 
       			            'dataType': 'JSON',
       			            'data' : function (node) {
       			            	return { 'id' : node.id};
       			            },
       			         	"icon": "/qdsodb/img/videoTree/hangzhanqu.png",
       			            'state' : {
       			  	           'opened' : true,
       			  	           'selected' : false
       			  	         },	
       			  	    'children' :[		                         
			                         { 'text' : '值机岛' ,
			                        	 "icon": "/qdsodb/img/videoTree/zhijidao.png",
			                        	 'children' :[
													{ 'text' : '1号摄像头',
														 'children' :null,
														 "icon": "/qdsodb/img/videoTree/camera.png",
													},
													{ 'text' : '2号摄像头',
														 'children' :null,
														 "icon": "/qdsodb/img/videoTree/camera.png",
													},
													{ 'text' : '3号摄像头',
														 'children' :null,
														 "icon": "/qdsodb/img/videoTree/camera.png",
													},
													{ 'text' : '4号摄像头',
														 'children' :null,
														 "icon": "/qdsodb/img/videoTree/camera.png",
													},
													{ 'text' : '5号摄像头',
														 'children' :null,
														 "icon": "/qdsodb/img/videoTree/camera.png",
													},
													{ 'text' : '6号摄像头',
														 'children' :null,
														 "icon": "/qdsodb/img/videoTree/camera.png",
													},
													{ 'text' : '7号摄像头',
														 'children' :null,
														 "icon": "/qdsodb/img/videoTree/camera.png",
													},
			                        	              ]				
			                         },
			                         { 'text' : '安检口',
			                        	 'children' :null,
			                        	 "icon": "/qdsodb/img/videoTree/anjiankou.png",
			                         },
			                         { 'text' :'登机口',
			                           'children' :null,
			                           "icon": "/qdsodb/img/videoTree/dengjikou.png",
			                         },
			                         { 'text' :'出发大厅',
			                           'children' :null,
			                           "icon": "/qdsodb/img/videoTree/chufa.png",
			                         },
			                         { 'text' :'到达大厅',
			                           'children' :null,
			                           "icon": "/qdsodb/img/videoTree/daoda.png",
				                         }
			                     ]
 
       			        },
       			        {
       			        	'id':'2',
       			        	'text' : '飞行区', 
       			            'dataType': 'JSON',
       			            'data' : function (node) {
       			            	return { 'id' : node.id};
       			            },
       			         	"icon": "/qdsodb/img/videoTree/feixing.png",
       			            'state' : {
       			  	           'opened' : true,
       			  	           'selected' :false
       			  	         },
       			  	    'children' :[	
									{ 'text' : '安检口',
										 'children' :null,
										 "icon": "/qdsodb/img/videoTree/anjiankou.png",
									},
									{ 'text' :'登机口',
									  'children' :null,
									  "icon": "/qdsodb/img/videoTree/dengjikou.png",
									},
									{ 'text' :'出发大厅',
									  'children' :null,
									  "icon": "/qdsodb/img/videoTree/chufa.png",
									},
									{ 'text' :'到达大厅',
									  'children' :null,
									  "icon": "/qdsodb/img/videoTree/daoda.png",
									    }
       			  	                 
       			  	                 ]
       			  	     
       			        },
       			        {
       			        	'id':'3',
       			        	'text' : '控制区', 
       			            'dataType': 'JSON',
       			            'data' : function (node) {
       			            	return { 'id' : node.id};
       			            },
       			         	"icon": "/qdsodb/img/videoTree/kongzhi.png",
       			            'state' : {
       			  	           'opened' : true,
       			  	           'selected' : false
       			  	         },
       			        },
	       			    {
	       			        	'id':'4',
	       			        	'text' : '公共区', 
	       			            'dataType': 'JSON',
	       			            'data' : function (node) {
	       			            	return { 'id' : node.id};
	       			            },
	       			         	"icon": "/qdsodb/img/videoTree/gonggong.png",
	       			            'state' : {
	       			  	           'opened' : true,
	       			  	           'selected' : false
	       			  	         },
	       			       },
		       			
    			    ]
		}]
	},
	"plugins" : [ "state", "types"],
	 "types": {
	        "default" : {
	            "icon" : false,  // 删除默认图标
	           
	        },
	    },
	/* "checkbox": {
        "keep_selected_style": false,//是否默认选中
        "three_state": false,//父子级别级联选择
        "tie_selection": false
    } */
}); 
		
		
		
		
		$("#setting").click(function(){
			$("#settingModal").modal();
		})
		$("#submitBtn").click(function(){
			$("#settingModal").modal('hide');
		})
		
		
		//模态框js  轮巡组
		$('#tree').jstree({
		"core" : {
		"themes" : {
			"responsive" : false
		},
		"check_callback" : true,
        'data' : [
            {
        	'id':'0',
          	'text' : '轮巡组', 
            'dataType': 'JSON',
            'data' : function (node) {
            	return { 'id' : node.id};
            },
            'state' : {
  	           'opened' : true,
  	           'selected' : false
  	         },
             'children' : [                                           
       			        {
       			        	'id':'1',
       			        	'text' : '轮巡组A', 
       			            'dataType': 'JSON',
       			            'data' : function (node) {
       			            	return { 'id' : node.id};
       			            },
       			            'state' : {
       			  	           'opened' : true,
       			  	           'selected' : false
       			  	         },	  	         
 
       			        },
       			        {
       			        	'id':'2',
       			        	'text' : '轮巡组B', 
       			            'dataType': 'JSON',
       			            'data' : function (node) {
       			            	return { 'id' : node.id};
       			            },
       			            'state' : {
       			  	           'opened' : true,
       			  	           'selected' :false
       			  	         },		  	         
       			  	     
       			        },
       			        {
       			        	'id':'3',
       			        	'text' : '轮巡组C', 
       			            'dataType': 'JSON',
       			            'data' : function (node) {
       			            	return { 'id' : node.id};
       			            },
       			            'state' : {
       			  	           'opened' : true,
       			  	           'selected' : false
       			  	         },
       			        },
	       			    {
	       			        	'id':'4',
	       			        	'text' : '轮巡组D', 
	       			            'dataType': 'JSON',
	       			            'data' : function (node) {
	       			            	return { 'id' : node.id};
	       			            },
	       			            'state' : {
	       			  	           'opened' : true,
	       			  	           'selected' : false
	       			  	         },
	       			       },
		       			   {
		       			        	'id':'5',
		       			        	'text' : '轮巡组E', 
		       			            'dataType': 'JSON',
		       			            'data' : function (node) {
		       			            	return { 'id' : node.id};
		       			            },
		       			            'state' : {
		       			  	           'opened' : true,
		       			  	           'selected' : false
		       			  	         },
		       			      },
    			    ]
		}]
	},
	"plugins" : [ "state", "checkbox","types"],
	"checkbox": {
        "keep_selected_style": false,//是否默认选中
        "three_state": true,//父子级别级联选择
        "tie_selection": true
    }
}); 
		
	</script>

</html>