 var tree = $('#dptree').jstree({
		"core" : {
			"themes" : {
				"responsive" : false
			},
			"check_callback" : true,
            'data' : [
                      {
                    	'id':'0',
                      	'text' : '应急救援队伍分类', 
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
            	'text' : '设备救援', 
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
                    { 'text' : '救援队1' ,
                   	 'children' :null	
                    },
                    { 'text' : '救援队2',
                   	 'children' :null	
                    },
                    { 'text' :'救援队3',
                      'children' :null	
                    },
                    { 'text' :'救援队4',
                      'children' :null	
                    }
                ]
            },
            {
            	'id':'2',
            	'text' : '紧急救援', 
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
                             { 'text' : '救援队5' ,
                            	 'children' :null	
                             },
                             { 'text' : '救援队6',
                            	 'children' :null	
                             },
                             { 'text' :'救援队7',
                               'children' :null	
                             },
                             { 'text' :'救援队8',
                               'children' :null	
                             },
                             { 'text' :'救援队9',
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
