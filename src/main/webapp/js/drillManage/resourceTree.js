 var tree = $('#resourceTree').jstree({
		"core" : {
			"themes" : {
				"responsive" : false
			},
			'multiple': true,
			"check_callback" : true,
			'data' : [
                {
              	
                	'text' : '选择人员车辆', 
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
        	            	
        	            	'text' : '机场运行指挥中心', 
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
        	            
        	            	'text' : '消防护卫部', 
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
        	                		'id':'firefighter',
	                            	'text' : '消防人员',
	                            	'icon': '/EMS-Prototype/img/icon/firefighter.png',
	                            	'children' :null
	                            },
	                           { 
	                            	'id':'fireCar',
                 	 				'text' : '消防车' ,
                 	 				'icon': '/EMS-Prototype/img/icon/fireCar.png',
                 	 				'children' :null	
                             
                             }
	                            
	                        ]
        	                
        	            },
        	            {
        	            	
        	            	'text' : '急救中心', 
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
	                            	'id':'doctor',
	                            	'text' : '急救人员' ,
	                            	'icon': '/EMS-Prototype/img/icon/doctor.png',
	                           	 	'children' : null
	                            },
	                            { 	
	                            	'id':'ambulance',
	                            	'text' : '救护车',
	                            	'icon': '/EMS-Prototype/img/icon/ambulance.png',
	                           	 	'children' : null
	                           	 				
	                            }
	                        ]
        	                
        	            },
        	            {
        	            	'text' : '公安局', 
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
	                            	'id':'policeman',
	                            	'text' : '警察',
	                            	'icon': '/EMS-Prototype/img/icon/policeCar.png',
	                           	 	'children' : null
	                           	 				
	                            },
	                            { 	
	                            	'id':'policeCar',
	                            	'text' : '警车',
	                            	'icon': '/EMS-Prototype/img/icon/policeCar.png',
	                           	 	'children' : null
	                           	 				
	                            }
	                        ]
        	            },
        	            {
        	            	'id':'5',
        	            	'text' : '机务工程部', 
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
	                            	'id':'policeman',
	                            	'text' : '安保人员',
	                            	'icon': '/EMS-Prototype/img/icon/policeman.png',
	                           	 	'children' : null
	                           	 				
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

	
	$('#resourceTree').bind("activate_node.jstree", function (obj, e) {
		map.clearOverlays();
	    var currentNode = e.node;
	    	var selectedNode = $('#resourceTree').jstree().get_checked(true); 
	    	var points = [];
	    	for(i in selectedNode){
	    		if(selectedNode[i].children == null||selectedNode[i].children == ""){
	    			var type = selectedNode[i].id;
	    			if(type=="doctor"){
	    				var isChecked = $(this).prop("checked");
    					var hos = airportData.doctor;
    					for(i in hos){
    						var marker = createMarker(hos[i][0],hos[i][1],type);
    						doctorMarker.push(marker);
    						map.addOverlay(marker);
    					}
    					
    					for(i in hos){
    						var point = new BMap.Point(hos[i][0],hos[i][1]);
    						points.push(point);
    					}
    					map.setViewport(points);
    				
	    			}else if(type=="ambulance"){
	    				var isChecked = $(this).prop("checked");
    					var hos = airportData.ambulance;
    					for(i in hos){
    						var marker = createMarker(hos[i][0],hos[i][1],type);
    						ambulanceMarker.push(marker);
    						map.addOverlay(marker);
    					}
    					for(i in hos){
    						var point = new BMap.Point(hos[i][0],hos[i][1]);
    						points.push(point);
    					}
    					map.setViewport(points);
	    			}
	    			else if(type=="fireCar"){
	    				var isChecked = $(this).prop("checked");
    					var hos = airportData.fireCar;
    					for(i in hos){
    						var marker = createMarker(hos[i][0],hos[i][1],type);
    						fireCarMarker.push(marker);
    						map.addOverlay(marker);
    					}
    					for(i in hos){
    						var point = new BMap.Point(hos[i][0],hos[i][1]);
    						points.push(point);
    					}
    					map.setViewport(points);
	    			}else if(type=="policeman"){
						var hos = airportData.policeman;
						for(i in hos){
							var marker = createMarker(hos[i][0],hos[i][1],type);
							policemanMarker.push(marker);
							map.addOverlay(marker);
						}
						for(i in hos){
							var point = new BMap.Point(hos[i][0],hos[i][1]);
							points.push(point);
						}
						map.setViewport(points);
	    			}else if(type=="firefighter"){
	    				
	    					var hos = airportData.firefighter;
	    					for(i in hos){
	    						var marker = createMarker(hos[i][0],hos[i][1],type);
	    						firefighterMarker.push(marker);
	    						map.addOverlay(marker);
	    					}
	    					for(i in hos){
	    						var point = new BMap.Point(hos[i][0],hos[i][1]);
	    						points.push(point);
	    					}
	    					map.setViewport(points);
	    			}
	    		}
	    	}
	    	
			if(type=="hospital"){
				var isChecked = $(this).prop("checked");
				if(isChecked){
					var hos = airportData.hospital;
					for(i in hos){
						var marker = createMarker(hos[i][0],hos[i][1],type);
						hospitalMarker.push(marker);
						map.addOverlay(marker);
					}
					var points = [];
					for(i in hos){
						var point = new BMap.Point(hos[i][0],hos[i][1]);
						points.push(point);
					}
					map.setViewport(points);
				}else{
					for(i in hospitalMarker){
						map.removeOverlay(hospitalMarker[i]);
					}
				}
			}
			
			else if(type=="barrier"){
				var isChecked = $(this).prop("checked");
				if(isChecked){
					var hos = airportData.barrier;
					for(i in hos){
						var marker = createMarker(hos[i][0],hos[i][1],type);
						barrierMarker.push(marker);
						map.addOverlay(marker);
					}
					var points = [];
					for(i in hos){
						var point = new BMap.Point(hos[i][0],hos[i][1]);
						points.push(point);
					}
					map.setViewport(points);
				}else{
					for(i in hospitalMarker){
						map.removeOverlay(hospitalMarker[i]);
					}
				}
			}
			else if(type=="fireStation"){
				var isChecked = $(this).prop("checked");
				if(isChecked){
					var hos = airportData.fireStation;
					for(i in hos){
						var marker = createMarker(hos[i][0],hos[i][1],type);
						fireStationMarker.push(marker);
						map.addOverlay(marker);
					}
					var points = [];
					for(i in hos){
						var point = new BMap.Point(hos[i][0],hos[i][1]);
						points.push(point);
					}
					map.setViewport(points);
				}else{
					for(i in fireStationMarker){
						map.removeOverlay(fireStationMarker[i]);
					}
				}
			}
			else if(type=="firewall"){
				var isChecked = $(this).prop("checked");
				if(isChecked){
					var hos = airportData.firewall;
					for(i in hos){
						var marker = createMarker(hos[i][0],hos[i][1],type);
						firewallMarker.push(marker);
						map.addOverlay(marker);
					}
					var points = [];
					for(i in hos){
						var point = new BMap.Point(hos[i][0],hos[i][1]);
						points.push(point);
					}
					map.setViewport(points);
				}else{
					for(i in firewallMarker){
						map.removeOverlay(firewallMarker[i]);
					}
				}
			}
			else if(type=="hydrant"){
				var isChecked = $(this).prop("checked");
				if(isChecked){
					var hos = airportData.hydrant;
					for(i in hos){
						var marker = createMarker(hos[i][0],hos[i][1],type);
						hydrantMarker.push(marker);
						map.addOverlay(marker);
					}
					var points = [];
					for(i in hos){
						var point = new BMap.Point(hos[i][0],hos[i][1]);
						points.push(point);
					}
					map.setViewport(points);
				}else{
					for(i in hydrantMarker){
						map.removeOverlay(hydrantMarker[i]);
					}
				}
			}
	    
	});
function addTree(treeName) {
	 var tree = $('#'+treeName).jstree({
			"core" : {
				"themes" : {
					"responsive" : false
				},
				'multiple': true,
				"check_callback" : true,
	            'data' : [
	                      {
	                    	'id':'0',
	                      	'text' : '选择部门资源', 
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
	              	            	'text' : '机场运行指挥中心', 
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
	              	            	'id':'2',
	              	            	'text' : '消防护卫部', 
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
	              	                		'id':'',
		 	                            	'text' : '消防人员',
		 	                            	'icon': '/EMS-Prototype/img/icon/firefighter.png',
		 	                            	'children' :null
		 	                            },
		 	                           { 
                           	 				'text' : '消防车' ,
                           	 				'icon': '/EMS-Prototype/img/icon/firefighter.png',
                           	 				'children' :null	
                                       
                                       }
		 	                            
		 	                        ]
	              	                
	              	            },
	              	            {
	              	            	'id':'3',
	              	            	'text' : '急救中心', 
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
		 	                           	 	'children' : null
		 	                            },
		 	                            { 	
		 	                            	'text' : '安保人员',
		 	                            	'icon': '/EMS-Prototype/img/icon/policeman.png',
		 	                           	 	'children' : null
		 	                           	 				
		 	                            },
		 	                            { 	
		 	                            	'text' : '救护车',
		 	                            	'icon': '/EMS-Prototype/img/icon/ambulance.png',
		 	                           	 	'children' : null
		 	                           	 				
		 	                            }
		 	                            
		 	                            
		 	                        ]
	              	                
	              	            },
	              	            {
	              	            	'id':'4',
	              	            	'text' : '公安局', 
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
		 	                            	'text' : '警察',
		 	                            	'icon': '/EMS-Prototype/img/icon/policeCar.png',
		 	                           	 	'children' : null
		 	                           	 				
		 	                            },
		 	                            { 	
		 	                            	'text' : '警车',
		 	                            	'icon': '/EMS-Prototype/img/icon/policeman.png',
		 	                           	 	'children' : null
		 	                           	 				
		 	                            }
		 	                        ]
	              	            },
	              	            {
	              	            	'id':'5',
	              	            	'text' : '机务工程部', 
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
		 	                            	'text' : '安保人员',
		 	                            	'icon': '/EMS-Prototype/img/icon/policeman.png',
		 	                           	 	'children' : null
		 	                           	 				
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

		
		$('#'+treeName).bind("activate_node.jstree", function (obj, e) {
		    var currentNode = e.node;
		    if(currentNode.children == null||currentNode.children == ""){
		    	
		    }else{

		    }
		});
}