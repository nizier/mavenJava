//初始化左侧菜单导航
function initLeftCon(){
	var accordion_head = $('.accordion > li > a'),
		accordion_body = $('.accordion li > .sub-menu');
	accordion_head.first().addClass('active').next().slideDown('normal');
	accordion_head.on('click', function(event) {
		event.preventDefault();
		if ($(this).attr('class') != 'active'){
			accordion_body.slideUp('normal');
			$(this).next().stop(true,true).slideToggle('normal');
			accordion_head.removeClass('active');
			$(this).addClass('active');
		}
	});
}

//初始化事件
function initEvent(){
//	$(".table_nav").click(function(){
//		if($(".showtable").is(":checked")){
//		$(".main_table").css("display","block");
//		}else{
//			alert("请选择设备数据");
//		}
//		
//	});
//	$(".graphic_nav").click(function(){
//		if($(".showtable").is(":checked")){
//			$(".main_graphic").css("display","block");
//			}else{
//				alert("当前没有设备数据");
//			}
//				
//	});
//	$(".table_nav").click(function(){
//		if($(".showtable").is(":checked")){
//			alert("hh");
//			$(".main_table").css("display","block");
////			$("#main_table").toggle("slow");
//		}else{
//			$("#prompt").show();
//		}
//	});
//	$(".graphic_nav").click(function(){
//		if($(".showtable").is(":checked")){
//			alert("hh");
//			$(".main_graphic").css("display","block");
////			$("#tjt").toggle("slow");
//		}else{
//			$("#prompt").show();
//		}
//	});
//	
	$(".time_nav").on(
			"click",
			function() {
				$('#icon_timeAxis').show();
		}
	);


	
//	$("#menu_display").on(
//		"mouseover",
//		function() {
//			$(".float-tool-title").css( {
//				left : 240,
//				top : 85
//			}).find(".title").html("菜单");
//			$(".float-tool-title div").last()
//					.removeClass("right-arrow").addClass("up-arrow");
//			$(".float-tool-title").show()
//		}).on("mouseout", function() {
//			$(".float-tool-title").hide();
//		}).on("click",function(){
//			$(".left-down").slideToggle();
//		})
			
	$("#down-up").on("click",function(){
		$(".left-down").slideToggle();
	})
	
	$(".specialNav").on("click",function(){
		$(".classify-content").show();
		$(".search-content").hide();
		$("#cx").removeClass("active");
		$("#cd").addClass("active");
		$(".placeNav").removeClass("active");
		$(".specialNav").addClass("active");
	})
	$(".placeNav").on("click",function(){
		$(".classify-content").hide();
		$(".search-content").show();
		$("#cd").removeClass("active");
		$("#cx").addClass("active");
		$(".specialNav").removeClass("active");
		$(".placeNav").addClass("active");
	})
}





//
function changeTab(obj){
	$(obj).addClass("active").siblings().removeClass("active");
	$("#leafletmap").show();
	$("#supermap").hide();
	$(".geography").show();
//	$(".left-tool").show();
//	$(".floattool").show();
//	$(obj).attr("class","mapToolbarButtonActived").siblings().attr("class","mapSwitchBtn");
    var divId = obj.id;
    var lon = "#"+obj.id+"_lon";
    var lat = "#"+obj.id+"_lat";
    var mapUrl = "#"+obj.id+"_url";
    var ident = "#"+obj.id+"_ident";
    var level = 15;
    var mapType = $(ident).val();
    if(mapType == "xj"){
    	level = 6;
    }else if(mapType == "wl"){
    	level = 15;
    }else if(mapType == "t1"||mapType == "t2"||mapType == "t3"||mapType == "fx"){
    	level = 17;
    }
    map.setView([$(lat).val(),$(lon).val()],level);
//	if(divId == 'jcqj'){//全局
//	    map.setView([43.898471,87.481716],15);
//	}else if(divId == 't1'){//T1航站楼
//	    map.setView([43.90290183507902,87.47880935668945],17);
//	}else if(divId == 't2'){//T2航站楼
//	    map.setView([43.90127845037431,87.4717926979065],17);
//	}else if(divId == 't3'){//T3航站楼
//	    map.setView([43.89840263166621,87.46724367141724],17);
//	}else if(divId == 'qj'){//全疆
//	    map.setView([43.898471,87.481716],5);
//	}
	
}




 //人员历史轨迹
function fillTableContent(){
      var lbObj = document.getElementById("tab-info");
      lbObj.style.display="";
      lbObj.innerHTML = "";
	  var html = '<table width="100%" border="0" class="tab-con">';
	  html +='<thead>';
	  html +=' <tr>';
	  html +=    ' <td>时间段</td>';
	  html +=     '<td>起点</td>';
	  html +=   ' <td>终点</td>';
	  html +=  ' </tr>';
	  html += '</thead>';
	 html +=' <tr onclick="addGj(0)">';
	 html += ' <td>9：10-10:20</td>';
	 html += ' <td>1号楼</td>';
	 html += ' <td>3号楼</td>';
	 html +=' </tr>';
	 html +=' <tr onclick="addGj(1)">';
	 html += ' <td>9：10-10:20</td>';
	 html += ' <td>平安路口</td>';
	 html += ' <td>2号道口</td>';
	 html +=' </tr>';
     html +='</table>';
     lbObj.innerHTML = html;
}

//打开历史轨迹图层
function openLsgj(num){
	changeFszl(num,false);
	$(".lsgjDivId").toggle("slow");	
	//fillTableContent();
}


//打开警员回传视频列表窗口
function openHcsp(num){
	changeFszl(num,false);
		layer.open({
		  type: 1,
		  title: '回传视频列表'
		  ,area: ['270px', '200px']
		  ,shade: 0
		  ,offset: [ //为了演示，随机坐标
			$(window).height()/2
			,$(window).width()-350
		   ]
		  ,content: $('#hcsp_table')
		});
}


function openVideo(vodioNum){
	var url = "../gis/shiping?deviceId="+vodioNum;
	document.getElementById("iframepage").src=url;
	$('#spDivId').show();
}

function closeSxtPage(){
	document.getElementById("iframepage").src="";
}


//控制发送指令table 
function changeFszl(num,type){
	var id = num+"zltable";
	if(type){
		document.getElementById(id).style.display="";
	}else{
		document.getElementById(id).style.display="none";
	}
	
}

//显示楼层信息
function fillFloor(id,rootUrl){
	$.ajax({
		type: "post",
		url: rootUrl+"/gis/screen/ajax?mapId="+id,
		success: function(data, textStatus){
			if(data.status>0){
				//清空防治叠加
				$("#floorId").html("");
				//将div显示
				$("#floorId").show();
				//将数据放入jsonList
				var jsonList = data.datas;
				var html = "";
				//循环遍历jsonList
			    for(var i=0;i<jsonList.length;i++){//便利 data.js 中json数据 
			    	var jsonObj = jsonList[i];
			        var mapUrl = jsonObj.mapUrl;
			        var lon = jsonObj.longitude;
			        var lat = jsonObj.latitude;
			    	html += "<div class='fl'><a class='' onclick='javascript:initSuperMap2(this,\""+mapUrl+"\","+lon+","+lat+")'><img src='"+rootUrl+"/resources/metronic/global/gis/css/images/upfloor.png' style='width:25px;'/>"+jsonObj.mapName+"</a></div>";
				}
				//将遍历得到的html，放入div
				$("#floorId").html(html);
			} else {
				$("#floorId").hide();
			}
		},
		error: function(){
		}
	});		
}

$(function(){
    //下拉框效果
    $('.geography_box_title').click(function(){
        if($(this).next().is(':hidden')){
            $(this).next().slideDown();
            $(this).find('.title-tip-hide').hide();
            $(this).find('.title-tip-show').fadeIn();
        }else{
            $(this).next().slideUp();
            $(this).find('.title-tip-show').hide();
            $(this).find('.title-tip-hide').fadeIn();

        }
    })
})

//获取天气信息
function getRunWay(rootUrl){
	  $.ajax({
			type: "post",
			url: rootUrl+"/run/way",
			success: function(data){
					var html ='<ul><li>气象要素</li><li><img src="'+rootUrl+'/resources/metronic/global/gis/css/img/range1.png" alt=""></li><li>气象值</li></ul>';
					html +='<ul><li>气压(米)</li><li><img src="'+rootUrl+'/resources/metronic/global/gis/css/img/range2.png" alt=""></li><li>'+data.QNH25+'</li></ul>';
					html +='<ul><li>气温(℃)</li><li><img src="'+rootUrl+'/resources/metronic/global/gis/css/img/range3.png" alt=""></li><li>'+data.T07+'</li></ul>';
					html +='<ul><li>风速(米/秒)</li><li><img src="'+rootUrl+'/resources/metronic/global/gis/css/img/range4.png" alt=""></li><li>'+data.TEMP0107+'</li></ul>';
					html +='<ul><li>风向</li><li><img src="'+rootUrl+'/resources/metronic/global/gis/css/img/range5.png" alt=""></li><li>'+data.GRNPNT07+'</li></ul>';
					html +='<ul><li>湿度(%)</li><li><img src="'+rootUrl+'/resources/metronic/global/gis/css/img/range1.png" alt=""></li><li>'+data.RH07+'</li></ul>';
					html +='<ul><li>视程1M平均(米)</li><li><img src="'+rootUrl+'/resources/metronic/global/gis/css/img/range2.png" alt=""></li><li>'+data.RVR1A07+'</li></ul>';
					html +='<ul><li>能见度10M平均(米)</li><li><img src="'+rootUrl+'/resources/metronic/global/gis/css/img/range3.png" alt=""></li><li>'+data.MOR10A07+'</li></ul>';
				    $("#runWayDiv").html(html);
//				    $("#runWayDiv2").html(html);
			},
			error: function(){
			}
		})
}

//获取值班信息
function getPoliceDuty(rootUrl){
	$.ajax({
		type: "post",
		url: rootUrl+"/police/duty",
		success: function(data, textStatus){
			if(data.status>=0){
				var html ='<ul><li class="fl">值班部门</li><li class="fl">值班领导</li><li class="fl">签到时间</li></ul>';
				var num = 0;
				var jsonList = data.datas;
			    for(var i=0;i<jsonList.length;i++){//便利 data.js 中json数据 
			    	var jsonObj = jsonList[i];
			    	html += '<div class="line1"></div><div class="line2"></div><ul>';
			    	html += '<li class="fl">'+jsonObj.cardId+'</li><li class="fl">'+jsonObj.employeeId+'</li> <li class="fl">'+(jsonObj.cardTime).split(" ")[1]+'</li>';
			    	html +='</ul>';
				}
			    $("#pliceDutyDiv").html(html);
//			    $("#pliceDutyDiv2").html(html);
			}else{
				
			}
		},
		error: function(){
		}
	});
}
//鼠标拖动
(function($)

		{

			$.extend({
				//获取鼠标当前坐标
		            mouseCoords:function(ev){
				if(ev.pageX || ev.pageY){
				    return {x:ev.pageX, y:ev.pageY};}
				return {
					x:ev.clientX + document.body.scrollLeft - document.body.clientLeft,
					y:ev.clientY + document.body.scrollTop  - document.body.clientTop
				};
			    },
				//获取样式值
		            getStyle:function(obj,styleName)
			    {
				return obj.currentStyle ? obj.currentStyle[styleName] : document.defaultView.getComputedStyle(obj,null)[styleName];
//		                return obj.currentStyle ? obj.currentStyle[styleName] : document.defaultView.getComputedStyle(obj,null).getPropertyValue(styleName);
		            }
		       });  

			// 元素拖拽插件
		        $.fn.dragDrop = function(options)
			{
				var opts = $.extend({},$.fn.dragDrop.defaults,options);
				return this.each(function(){
					//是否正在拖动
			                var bDraging = false;   
					//移动的元素
			                var moveEle = $(this);
					//点击哪个元素，以触发移动。
			                //该元素需要是被移动元素的子元素（比如标题等）
			                var focuEle = opts.focuEle ? $(opts.focuEle,moveEle) : moveEle ;
					if(!focuEle || focuEle.length<=0)
					{
						alert('focuEle is not found! the element must be a child of '+this.id);
						return false;
					}                

					// initDiffX|Y : 初始时，鼠标与被移动元素原点的距离
			                // moveX|Y : 移动时，被移动元素定位位置 (新鼠标位置与initDiffX|Y的差值)
			                // 如果定义了移动中的回调函数，该对象将以参数传入回调函数。
			                var dragParams = {initDiffX:'',initDiffY:'',moveX:'',moveY:''}; 
					//被移动元素，需要设置定位样式，否则拖拽效果将无效。
			                moveEle.css({'position':'absolute','left':'80%','top':'10%'});
					//点击时，记录鼠标位置
			                //DOM写法： getElementById('***').onmousedown= function(event);
			                focuEle.bind('mousedown',function(e){                
						//标记开始移动
			                    bDraging = true;
					        //改变鼠标形状
			                    moveEle.css({'cursor':'move'});
					        //捕获事件。（该用法，还有个好处，就是防止移动太快导致鼠标跑出被移动元素之外）
			                    if(moveEle.get(0).setCapture)
					    {  
						moveEle.get(0).setCapture();  
					     } 	

						//（实际上是鼠标当前位置相对于被移动元素原点的距离）
		                   		 // DOM写法：(ev.clientX + document.body.scrollLeft - document.body.clientLeft) - document.getElementById('***').style.left;

		                    		dragParams.initDiffX = $.mouseCoords(e).x - moveEle.position().left;
						dragParams.initDiffY = $.mouseCoords(e).y - moveEle.position().top;

					 });

					//移动过程
			                focuEle.bind('mousemove',function(e){
						if(bDraging)
						{    
							//被移动元素的新位置，实际上鼠标当前位置与原位置之差
				                        //实际上，被移动元素的新位置，也可以直接是鼠标位置，这也能体现拖拽，但是元素的位置就不会精确。
				                        dragParams.moveX = $.mouseCoords(e).x - dragParams.initDiffX;
							dragParams.moveY = $.mouseCoords(e).y - dragParams.initDiffY;
							//是否限定在某个区域中移动.
				                        //fixarea格式: [x轴最小值,x轴最大值,y轴最小值,y轴最大值]
				                        if(opts.fixarea)
							{	
								if(dragParams.moveX<opts.fixarea[0])
								{
									dragParams.moveX=opts.fixarea[0]
								}
								if(dragParams.moveX>opts.fixarea[1])
								{
									dragParams.moveX=opts.fixarea[1]
								}
								if(dragParams.moveY<opts.fixarea[2])
								{
									dragParams.moveY=opts.fixarea[2]
								}
								if(dragParams.moveY>opts.fixarea[3])
								{
									dragParams.moveY=opts.fixarea[3]
								}	
							}

							//移动方向：可以是不限定、垂直、水平。
				                        if(opts.dragDirection=='all')
							{
								//DOM写法： document.getElementById('***').style.left = '***px'; 
					                            moveEle.css({'left':dragParams.moveX,'top':dragParams.moveY});
							}
							else if (opts.dragDirection=='vertical')
							{
								moveEle.css({'top':dragParams.moveY});
							}
							else if(opts.dragDirection=='horizontal')
							{
								moveEle.css({'left':dragParams.moveX});
							}
							//如果有回调
				                        if(opts.callback)
							{
								//将dragParams作为参数传递
					                            opts.callback.call(opts.callback,dragParams);
							}
						}

					 });

					//鼠标弹起时，标记为取消移动
		               		 focuEle.bind('mouseup',function(e){
						bDraging=false;
						moveEle.css({'cursor':'default'});
						if(moveEle.get(0).releaseCapture)
						{
							moveEle.get(0).releaseCapture();
						}
					});
				});
			};
			//默认配置
		        $.fn.dragDrop.defaults = 
			{
				focuEle:null,            //点击哪个元素开始拖动,可为空。不为空时，需要为被拖动元素的子元素。
			        callback:null,            //拖动时触发的回调。
		                dragDirection:'all',    //拖动方向：['all','vertical','horizontal']
		                fixarea:null            //限制在哪个区域拖动,以数组形式提供[minX,maxX,minY,maxY]
		        };
		})(jQuery);   

		// test 


