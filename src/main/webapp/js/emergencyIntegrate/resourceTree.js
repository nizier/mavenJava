 var tree = $('#resourceTree').jstree({
		"core" : {
			"themes" : {
				"responsive" : false
			},
			'multiple': true,
			"check_callback" : true,
            'data' : [
                      {
                    	'id':'0',
                      	'text' : '应急救援资源人员目录树', 
                          //'url' : ,
                          'dataType': 'JSON',
                          'data' : function (node) {
                          	return { 'id' : node.id};
                          },
                          'state' : {
                	           'opened' : false,
                	           'selected' : false
                	         },
                	         
                          'children' : [
            	  {
                    	'id':'1',
                    	'text' : '人员', 
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
                            { 'text' : '急救人员' ,
                            	'icon': '/EMS-Prototype/img/icon/doctor.png',
                           	 'children' : [
                                 { 'text' : '急救人员1' ,
                                	 'icon': '/EMS-Prototype/img/icon/doctor.png',
                                   	 'children' :null	
                                    
                                    },
                                    { 	
                                    	'icon': '/EMS-Prototype/img/icon/doctor.png',
                                    	'text' : '急救人员2',
                                   	 	'children' :null	
                                    },
                                    {   
                                    	'icon': '/EMS-Prototype/img/icon/doctor.png',
                                    	'text' : '急救人员3',
                                    	'children' :null	
                                    }
                                ]	
                            
                            },
                            { 	
                            	'text' : '安保人员',
                            	'icon': '/EMS-Prototype/img/icon/policeman.png',
                           	 	'children' :
                           	 		[
                           	 			{ 
                           	 				'text' : '安保人员1' ,
                           	 				'icon': '/EMS-Prototype/img/icon/policeman.png',
                           	 				'children' :null	
                                       
                                       },
                                       { 	
                                       		'icon': '/EMS-Prototype/img/icon/policeman.png',
                                       		'text' : '安保人员2',
                                      	 	'children' :null	
                                       },
                                       {   
                                       		'icon': '/EMS-Prototype/img/icon/policeman.png',
                                       		'text' : '安保人员3',
                                       		'children' :null	
                                       }
                                   ]		
                            },
                            { 
                            	'text' : '消防人员',
                            	'icon': '/EMS-Prototype/img/icon/firefighter.png',
                            	'children' :
                           	 		[
                           	 			{ 
                           	 				'text' : '消防人员1' ,
                           	 				'icon': '/EMS-Prototype/img/icon/firefighter.png',
                           	 				'children' :null	
                                       
                                       },
                                       { 	
                                       		'icon': '/EMS-Prototype/img/icon/firefighter.png',
                                       		'text' : '消防人员2',
                                      	 	'children' :null	
                                       },
                                       {   
                                       		'icon': '/EMS-Prototype/img/icon/firefighter.png',
                                       		'text' : '消防人员3',
                                       		'children' :null	
                                       }
                                   ]			
                            }
                        ]
                    },                                    
            {
            	'id':'2',
            	'text' : '设施', 
                //'url' : ,
                'dataType': 'JSON',
                'data' : function (node) {
                	return { 'id' : node.id};
                },
                'state' : {
      	           'opened' : true,
      	           'selected' : false
      	         },
      	         
                'children' : null
                
            },
            {
            	'id':'3',
            	'text' : '设备', 
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
                             
                             { 
                            	 'text' : '消防车' ,
                            	 'icon': '/EMS-Prototype/img/icon/fireCar.png',
                            	 'children' :
                            	 		[
                               	 			{ 
                               	 				'text' : '消防车1' ,
                               	 				'icon': '/EMS-Prototype/img/icon/firefighter.png',
                               	 				'children' :null	
                                           
                                           },
                                           { 	
                                           		'icon': '/EMS-Prototype/img/icon/firefighter.png',
                                           		'text' : '消防车2',
                                          	 	'children' :null	
                                           },
                                           {   
                                           		'icon': '/EMS-Prototype/img/icon/firefighter.png',
                                           		'text' : '消防车3',
                                           		'children' :null	
                                           }
                                       ]			
                             
                             },
                             { 
                            	 'text' : '急救车',
                            	 'icon': '/EMS-Prototype/img/icon/ambulance.png',
                            	 'children' :
                         	 		[
                           	 			{ 
                           	 				'text' : '急救车1' ,
                           	 				'icon': '/EMS-Prototype/img/icon/firefighter.png',
                           	 				'children' :null	
                                       
                                       },
                                       { 	
                                       		'icon': '/EMS-Prototype/img/icon/firefighter.png',
                                       		'text' : '急救车2',
                                      	 	'children' :null	
                                       },
                                       {   
                                       		'icon': '/EMS-Prototype/img/icon/firefighter.png',
                                       		'text' : '急救车3',
                                       		'children' :null	
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
		 plugins: ["sort", "types", "checkbox", "themes", "html_data"],
         
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
	
	$('#resourceTree').bind("activate_node.jstree", function (obj, e) {
	    var currentNode = e.node;
	    if(currentNode.children == null||currentNode.children == ""){
	    	
	    }
	});