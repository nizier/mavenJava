 var tree = $('#dptree').jstree({
		"core" : {
			"themes" : {
				"responsive" : false
			},
			"check_callback" : true,
            'data' : [
                      {
                    	'id':'0',
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
                                                   
            {
            	'id':'01',
            	'text' : '急救', 
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
                    
                    { 'text' : '救援车辆' ,
                   	 'children' :null	
                    
                    },
                    { 'text' : '生命救助',
                   	 'children' :null	
                    },
                    { 'text' :'防护用品',
                      'children' :null	
                    }
                ]
            },
            {
            	'id':'2',
            	'text' : '消防', 
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
		                	
		                    { 'text' :'救援车辆',
		                        'children' :null	
		                     },
                             { 'text' : '灭火设备' ,
                            	 'children' :null	
                             },
                             { 'text' : '应急照明',
                            	 'children' :null	
                             },
                             { 'text' :'消防设施',
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