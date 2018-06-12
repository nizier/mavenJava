 var tree = $('#dptree').jstree({
		"core" : {
			"themes" : {
				"responsive" : false
			},
			"check_callback" : true,
            'data' : [
                      {
                    	'id':'0',
                      	'text' : '部门分类', 
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
            	'text' : '管理岗', 
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
                    { 'text' : '办公室' ,
                   	 'children' :null	
                    },
                    { 'text' : '财务部',
                   	 'children' :null	
                    },
                    { 'text' :'人力资源部',
                      'children' :null
                    },
                    { 'text' :'党群工作部',
                      'children' :null	
                    }
                ]
            },
            {
            	'id':'2',
            	'text' : '生产岗', 
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
                             { 'text' : '安检' ,
                            	 'children' :null	
                             },
                             { 'text' : '护卫',
                            	 'children' :null	
                             },
                             { 'text' :'值机',
                               'children' :null	
                             },
                             { 'text' :'物流',
                               'children' :null	
                             },
                             { 'text' :'运行指挥',
                                 'children' :null	
                               },
                             { 'text' :'信息中心',
                                   'children' :null	
                               },
                             { 'text' :'能源中心',
                                   'children' :null	
                               },
                             { 'text' :'信息保障',
                                   'children' :null	
                               },
                             { 'text' :'救援部',
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
	$("#dptree").on('select_node.jstree', function(e, data) {
		//更新当前节点
		currentNode = data.node;		
		console.log(currentNode.text);
		if(currentNode.text == '部门分类'){
			$('#content_1').css('display','block');
			$('#content_2').css('display','none');
		}
		/*if(currentNode.text == '管理岗'){
			$('#content_1').css('display','none');
			$('#content_2').css('display','block');
		}*/
	
	
});
	