 var tree = $('#tree_2').jstree({
		"core" : {
			"themes" : {
				"responsive" : false
			},
			"check_callback" : true,
            'data' : [
                      {
                    	'id':'0',
                      	'text' : '设备资源分类树', 
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
                                                   
//            {
//            	'id':'1',
//            	'text' : '车辆存放点', 
//                //'url' : ,
//                'dataType': 'JSON',
//                'data' : function (node) {
//                	return { 'id' : node.id};
//                },
//                'state' : {
//      	           'opened' : true,
//      	           'selected' : false
//      	         },
//      	         
//                'children' : null
//            },
            {
            	'id':'1',
            	'text' : '安防系统', 
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
                             
                             { 'text' : '视频监控系统' ,
                            	 'children' :null	
                             
                             },
                             { 'text' : '门禁系统',
                            	 'children' :null	
                             },
                             { 'text' :'围界系统',
                               'children' :null	
                             },
                             { 'text' :'道口系统',
                               'children' :null	
                             }
                         ]
            },
            {
            	'id':'2',
            	'text' : '物资存放点', 
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
            	'text' : '安全资源', 
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
                            { 'text' : '灭火器' ,
                            	'children' :null           	
                            }
                            ]
            }]
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
 var ref = $('#tree_2').jstree(true);
	
	// 树加载完毕后设置节点状态
	$('#tree_2').on('ready.jstree', function(e, data) {
		var openNodeId = "${param.node}";
		if(openNodeId == ""){
			openNodeId = "0";
		}
		var sel = ref.get_node(openNodeId);
		ref.select_node(sel);
		ref.open_node(sel);	
	});