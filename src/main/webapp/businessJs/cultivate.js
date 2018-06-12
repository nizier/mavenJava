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
                    { 'text' : '办公室1' ,
                   	 'children' :null	
                    },
                    { 'text' : '办公室2',
                   	 'children' :null	
                    },
                    { 'text' :'办公室3',
                      'children' :null	
                    },
                    { 'text' :'办公室4',
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
                             { 'text' : '生产1' ,
                            	 'children' :null	
                             },
                             { 'text' : '生产2',
                            	 'children' :null	
                             },
                             { 'text' :'生产3',
                               'children' :null	
                             },
                             { 'text' :'生产4',
                               'children' :null	
                             },
                             { 'text' :'生产5',
                                 'children' :null	
                               },
                             { 'text' :'生产6',
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
