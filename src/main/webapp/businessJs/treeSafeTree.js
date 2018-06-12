 var tree = $('#maintaindptree').jstree({
		"core" : {
			"themes" : {
				"responsive" : false
			},
			"check_callback" : true,
            'data' : [
                      {
                    	'id':'0',
                      	'text' : '目录树', 
                          //'url' : ,
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
                    	'text' : '预案分类', 
                        //'url' : ,
                        'dataType': 'JSON',
                        'data' : function (node) {
                        	return { 'id' : node.id};
                        },
                        'state' : {
              	           'opened' : true,
              	           'selected' : false
              	         },
              	         
                        'children' : [
                            
                            { 'text' : '综合预案' ,
                           	 'children' :[
                           		 {'text':'航空器紧急事件',
                           		 'children':null
                           		 },
                           		{'text':'非航空器紧急事件',
                                  'children':null
                               	}
                           	 ]	
                            
                            },
                            { 'text' :'专项预案',
                              'children' :[
                    		 {'text':'航空器紧急事件',
                           		 'children':null
                           		 },
                           		{'text':'非航空器紧急事件',
                                  'children':null
                               	}
                           	 ]
                            },
                            { 'text' :'部门预案',
                                'children' :[
                      		 {'text':'航空器紧急事件',
                             		 'children':null
                             		 },
                             		{'text':'非航空器紧急事件',
                                    'children':null
                                 	}
                             	 ]
                              }
                        ]
                    },                                    
            {
            	'id':'2',
            	'text' : '资源分类', 
                //'url' : ,
                'dataType': 'JSON',
                'data' : function (node) {
                	return { 'id' : node.id};
                },
                'state' : {
      	           'opened' : true,
      	           'selected' : false
      	         },
      	         
                'children' : [
                    
                    { 'text' : '急救' ,
                   	 'children' :[
                   		 {'text':'救援车辆',
                   		 'children':null
                   		 },
                   		{'text':'生命救助',
                          'children':null
                       	},
                       	{'text':'防护用品',
                         'children':null
                          }
                   	 ]	
                    
                    },
                    { 'text' :'消防',
                      'children' :[
            		 {'text':'救援车辆',
                   		 'children':null
                   		 },
                   		{'text':'灭火设备',
                          'children':null
                       	},
                       	{'text':'应急照明',
                         'children':null
                          },
                       	{'text':'消防设施',
                         'children':null
                          }
                   	 ]
                    }
                ]
            },
            {
            	'id':'3',
            	'text' : '应急救援队伍分类', 
                //'url' : ,
                'dataType': 'JSON',
                'data' : function (node) {
                	return { 'id' : node.id};
                },
                'state' : {
      	           'opened' : true,
      	           'selected' :false
      	         },
      	         
                'children' :[
                             
                             { 'text' : '设备救援' ,
                            	 'children' :[
                               		{'text':'救援队1',
                                   		 'children':null
                                   		 },
                               		{'text':'救援队2',
                                      'children':null
                                   	},
                                   	{'text':'救援队3',
                                     'children':null
                                      }
                                   	 ]	
                             
                             },
                             { 'text' : '紧急救援',
                            	 'children' :[
                                		{'text':'救援队4',
                                      		 'children':null
                                      		 },
                                  		{'text':'救援队5',
                                         'children':null
                                      	},
                                      	{'text':'救援队6',
                                        'children':null
                                         }
                                      	 ]	
                             }
                         ]
            },
            ]
                      }
            ]
		},
		"types" : {
			"default" : {
				"icon" : "fa fa-folder icon-state-warning icon-lg"
			},
			"file" : {
				"icon" : "fa fa-file icon-state-warning icon-lg"
			}
		},
		"plugins" : ["types" ] 
	});
 var ref = $('#retree').jstree(true);
	
	// 树加载完毕后设置节点状态
	$('#retree').on('ready.jstree', function(e, data) {
		var openNodeId = "${param.node}";
		if(openNodeId == ""){
			openNodeId = "0";
		}
		var sel = ref.get_node(openNodeId);
		ref.select_node(sel);
		ref.open_node(sel);	
	});
		
	$("#maintaindptree").on('select_node.jstree', function(e, data) {
		//更新当前节点
		currentNode = data.node;		
		console.log(currentNode.text);
		if(currentNode.text == '目录树'){
			$('#content_1').css('display','block');
			$('#content_2').css('display','none');
			$('#content_3').css('display','none');
			$('#content_5').css('display','none');
			$('#content_6').css('display','none');
			$('#content_7').css('display','none');
			$('#content_8').css('display','none');
		}
		if(currentNode.text == '预案分类'){
			$('#content_1').css('display','none');
			$('#content_2').css('display','block');
			$('#content_3').css('display','none');
			$('#content_5').css('display','none');
			$('#content_6').css('display','none');
			$('#content_7').css('display','none');
			$('#content_8').css('display','none');
		}
		if(currentNode.text == '综合预案'){
			$('#content_1').css('display','none');
			$('#content_2').css('display','none');
			$('#content_3').css('display','block');
			$('#content_5').css('display','none');
			$('#content_6').css('display','none');
			$('#content_7').css('display','none');
			$('#content_8').css('display','none');
		}
		if(currentNode.text == '资源分类'){
			$('#content_1').css('display','none');
			$('#content_2').css('display','none');
			$('#content_3').css('display','none');
			$('#content_5').css('display','block');
			$('#content_6').css('display','none');
			$('#content_7').css('display','none');
			$('#content_8').css('display','none');
		}
		if(currentNode.text == '急救'){
			$('#content_1').css('display','none');
			$('#content_2').css('display','none');
			$('#content_3').css('display','none');
			$('#content_5').css('display','none');
			$('#content_6').css('display','block');
			$('#content_7').css('display','none');
			$('#content_8').css('display','none');
		}
		if(currentNode.text == '应急救援队伍分类'){
			$('#content_1').css('display','none');
			$('#content_2').css('display','none');
			$('#content_3').css('display','none');
			$('#content_5').css('display','none');
			$('#content_6').css('display','none');
			$('#content_7').css('display','block');
			$('#content_8').css('display','none');
		}
		if(currentNode.text == '设备救援'){
			$('#content_1').css('display','none');
			$('#content_2').css('display','none');
			$('#content_3').css('display','none');
			$('#content_5').css('display','none');
			$('#content_6').css('display','none');
			$('#content_7').css('display','none');
			$('#content_8').css('display','block');
		}
		
});