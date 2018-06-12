
$(function() {
	//青岛机场视频资源树
	$('#tree_1').jstree({
	"core" : {
	"themes" : {
		"responsive" : false
	},
	"plugins":  [ "themes", "html_data", "checkbox", "sort", "ui" ],
    "checkbox": {
        "keep_selected_style": true,//是否默认选中
        "three_state": false,//父子级别级联选择
        "tie_selection": false
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
		                        	 "icon": "/qdsodb/img/videoTree/anjiankou.png",
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
		                         { 'text' :'登机口',
		                           "icon": "/qdsodb/img/videoTree/dengjikou.png",
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
		                         { 'text' :'出发大厅',
		                           "icon": "/qdsodb/img/videoTree/chufa.png",
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
		                         { 'text' :'到达大厅',
		                           "icon": "/qdsodb/img/videoTree/daoda.png",
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
				  	           'opened' : false,
				  	           'selected' :false
				  	         },
				  	    'children' :[	
								{ 'text' : '安检口',
									 "icon": "/qdsodb/img/videoTree/anjiankou.png",
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
								{ 'text' :'登机口',
								  "icon": "/qdsodb/img/videoTree/dengjikou.png",
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
								{ 'text' :'出发大厅',
								  "icon": "/qdsodb/img/videoTree/chufa.png",
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
								{ 'text' :'到达大厅',
								  "icon": "/qdsodb/img/videoTree/daoda.png",
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
				  	           'opened' : false,
				  	           'selected' : false
				  	         },
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
	   			    {
	   			        	'id':'4',
	   			        	'text' : '公共区', 
	   			            'dataType': 'JSON',
	   			            'data' : function (node) {
	   			            	return { 'id' : node.id};
	   			            },
	   			         	"icon": "/qdsodb/img/videoTree/gonggong.png",
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
	         	              ],	
	   			            'state' : {
	   			  	           'opened' : false,
	   			  	           'selected' : false
	   			  	         },
	   			       },
	       			
			    ]
	}]
	},
	"plugins" : [ "state", "types","checkbox"],
	"types": {
	    "default" : {
	        "icon" : false,  // 删除默认图标
	       
	    },
	},
	 "checkbox": {
	"keep_selected_style": true,//是否默认选中
	"three_state": true,//父子级别级联选择
	"tie_selection": true
	} 
	}); 
	
	//青岛机场视频资源树
	$('#tree_2').jstree({ 
	"core" : {
	"themes" : {
		"responsive" : false
	},
	"check_callback" : true,
	'data' : [
	    {
		'id':'0',
	  	'text' : '轮巡分组', 
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
			        	'text' : '轮巡组1', 
			            'dataType': 'JSON',
			            'data' : function (node) {
			            	return { 'id' : node.id};
			            },
				         	
			            	'state' : {
			  	           'opened' : true,
			  	           'selected' : false
			  	         },	
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
		                        
		                         {
		 				        	'id':'2',
		 				        	'text' : '轮巡组2', 
		 				            'dataType': 'JSON',
		 				            'data' : function (node) {
		 				            	return { 'id' : node.id};
		 				            },
		 				         	
		 				            'state' : {
		 				  	           'opened' : true,
		 				  	           'selected' : false
		 				  	         },	
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
	
	
	//青岛机场视频资源树
	$('#tree_3').jstree({ 
	"core" : {
	"themes" : {
		"responsive" : false
	},
	"check_callback" : true,
	'data' : [
	    {
		'id':'0',
	  	'text' : '摄像机分组', 
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
			        	'text' : '分组1', 
			            'dataType': 'JSON',
			            'data' : function (node) {
			            	return { 'id' : node.id};
			            },
				         	
			            	'state' : {
			  	           'opened' : true,
			  	           'selected' : false
			  	         },	
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
		                        
		                         {
		 				        	'id':'2',
		 				        	'text' : '分组2', 
		 				            'dataType': 'JSON',
		 				            'data' : function (node) {
		 				            	return { 'id' : node.id};
		 				            },
		 				         	
		 				            'state' : {
		 				  	           'opened' : true,
		 				  	           'selected' : false
		 				  	         },	
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
	
})




var presetDatas = [{
	"placeName" : "后门1",
}, {
	"placeName" : "后门2",
}, {
	"placeName" : "前门1",
}, {
	"placeName" : "前门2",
}, {
	"placeName" : "前门3",
}, {
	"placeName" : "前门3",
}, {
	"placeName" : "前门3",
}];

var cruiseDatas = [{
	"placeName" : "后门1",
}, {
	"placeName" : "后门2",
}, {
	"placeName" : "前门1",
}, {
	"placeName" : "前门2",
}, {
	"placeName" : "前门3",
}, {
	"placeName" : "前门3",
}, {
	"placeName" : "前门3",
}];

var parameterDatas = [ {
	"placeName" : "后门1",
}, {
	"placeName" : "后门2",
}, {
	"placeName" : "前门1",
}, {
	"placeName" : "前门2",
}, {
	"placeName" : "前门3",
}];

var presetColumns =[
	{
		id : 'serialId',
		title : '序号',
		type : 'string',
		columnClass : 'text-center',
		width:50,
		resolution:function(value, record, column, grid, dataNo, columnNo){
			return dataNo+1;
		}
	},
	{id : 'placeName',title : '名称',type : 'number',columnClass : 'text-center'},
	{id : 'state',title : '状态',type : 'string',columnClass : 'text-center',
		resolution : function(value, record, column, grid, dataNo,columnNo){
		var content = '';
		if(dataNo=='2'){
			content += '<img style="height:20px" src="/qdsodb/img/videoTree/daoda.png">';
			}
		return content;
		}
	},
	{id : 'operation',title : '操作',type : 'string',columnClass : 'text-center',
		resolution : function(value, record, column, grid, dataNo,columnNo) {
			var content = '';
			content += '<button class="sbtn sbtn-blue" style="height:30px; line-height:5px;" onclick="showImpower();">操作</button>';
			return content;
		}} ];

var cruiseColumns = [
	{
		id : 'serialId',
		title : '序号',
		type : 'string',
		columnClass : 'text-center',
		width:50,
		resolution:function(value, record, column, grid, dataNo, columnNo){
			return dataNo+1;
		}
	},
	{id : 'placeName',title : '名称',type : 'number',columnClass : 'text-center'},
	{id : 'state',title : '状态',type : 'string',columnClass : 'text-center',
		resolution : function(value, record, column, grid, dataNo,columnNo){
		var content = '';
		if(dataNo=='1'){
			content += '<img style="height:20px" src="/qdsodb/img/videoTree/daoda.png">';
			}
		return content;
		}
	},
	{id : 'operation',title : '操作',type : 'string',columnClass : 'text-center',
		resolution : function(value, record, column, grid, dataNo,columnNo) {
			var content = '';
			content += '<button class="sbtn sbtn-blue" style="height:30px; line-height:5px;" onclick="showImpower();">操作</button>';
			return content;
		}} ];

var parameterColumns = [
	{
		id : 'serialId',
		title : '序号',
		type : 'string',
		columnClass : 'text-center',
		width:50,
		resolution:function(value, record, column, grid, dataNo, columnNo){
			return dataNo+1;
		}
	},
	{id : 'placeName',title : '名称',type : 'number',columnClass : 'text-center'},
	{id : 'state',title : '状态',type : 'string',columnClass : 'text-center',
		resolution : function(value, record, column, grid, dataNo,columnNo){
		var content = '';
		if(dataNo=='3'){
			content += '<img style="height:20px" src="/qdsodb/img/videoTree/daoda.png">';
			}
		return content;
		}
	},
	{id : 'operation',title : '操作',type : 'string',columnClass : 'text-center',
		resolution : function(value, record, column, grid, dataNo,columnNo) {
			var content = '';
			content += '<button class="sbtn sbtn-blue" style="height:30px; line-height:5px;" onclick="showImpower();">操作</button>';
			return content;
		}} ];

var presetOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '用户列表',
		datas : presetDatas,
		columns : presetColumns,
		gridContainer : 'dengluTable',
		tools : '',
		pageSize : 10,
		pageSizeLimit : [10, 20, 50]};

var cruiseOption = {
	lang : 'zh-cn',
	ajaxLoad : false,
	exportFileName : '用户列表',
	datas : cruiseDatas,
	columns : cruiseColumns,
	gridContainer : 'caozuoTable',
	tools : '',
	pageSize : 10,
	pageSizeLimit : [10, 20, 50]};

var parameterOption = {
		lang : 'zh-cn',
		ajaxLoad : false,
		exportFileName : '用户列表',
		datas : parameterDatas,
		columns : parameterColumns,
		gridContainer : 'baojingTable',
		tools : '',
		pageSize : 10,
		pageSizeLimit : [10, 20, 50]};

var preset = $.fn.dlshouwen.grid.init(presetOption);	
var cruise = $.fn.dlshouwen.grid.init(cruiseOption);
var parameter = $.fn.dlshouwen.grid.init(parameterOption);
$(function(){
	preset.load();
	$("#presetArea").hide();
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
	});});
$(function(){
	cruise.load();
	$("#cruiseArea").hide();
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
	});});
$(function(){
	parameter.load();
	$("#parameterArea").hide();
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
	});});

