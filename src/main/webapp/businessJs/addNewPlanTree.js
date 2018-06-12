 var tree = $('#maintaindptree').jstree({
		"core" : {
			"themes" : {
				"responsive" : false
			},
			"check_callback" : true,
            'data' : [
                      {
                    	'id':'0',
                      	'text' : '航空器失事应急处置预案（应急救援预案名称）', 
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
                    	'text' : '航空器失事应急处置预案主目录（一）', 
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
                            
                            { 'text' : '1.1航空器失事应急处置预案子目录（一）' ,
                           	 'children' :null	
                            
                            },
                            { 'text' :'1.2航空器失事应急处置预案子目录（二）',
                              'children' :null	
                            }
                        ]
                    },                                    
            {
            	'id':'2',
            	'text' : '航空器失事应急处置预案主目录（二）', 
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
                    
                    { 'text' : '2.1航空器失事应急处置预案子目录（一）' ,
                   	 'children' :null	
                    
                    },
                    { 'text' :'2.2航空器失事应急处置预案子目录（二）',
                      'children' :null	
                    }
                ]
            },
            {
            	'id':'3',
            	'text' : '航空器失事应急处置预案主目录（三）', 
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
                             
                             { 'text' : '3.1航空器失事应急处置预案子目录（一）' ,
                            	 'children' :null	
                             
                             },
                             { 'text' : '3.2航空器失事应急处置预案子目录（二）',
                            	 'children' :null	
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
		}
		if(currentNode.text == '一级专项预案'){
			$('#content_1').css('display','none');
			$('#content_2').css('display','block');
			$('#content_3').css('display','none');
		}
		if(currentNode.text == '航空器紧急事件'){
			$('#content_1').css('display','none');
			$('#content_2').css('display','none');
			$('#content_3').css('display','block');
		}
		
});