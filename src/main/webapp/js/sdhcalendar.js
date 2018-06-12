$(".fc-state-default").hover(
    function(){
        $(this).addClass("calendar_hover");
    },
    function(){
        $(this).removeClass("calendar_hover");
    }
);
var Calendar = function() {

	return {
		//main function to initiate the module
		init : function() {
			Calendar.initCalendar();
		},

		initCalendar : function() {

			if (!jQuery().fullCalendar) {
				return;
			}

			var date = new Date();
			var d = date.getDate();
			var m = date.getMonth();
			var y = date.getFullYear();

			var h = {};

			if (Metronic.isRTL()) {
				if ($('#calendar').parents(".portlet").width() <= 720) {
					alert("1");
					$('#calendar').addClass("mobile");
					h = {
						right : 'title, prev, next',
						center : '',
						left : 'month, today'
					};
				} else {
					alert("2");
					$('#calendar').removeClass("mobile");
					h = {
						right : 'title',
						center : '',
						left : 'month, today, prev,next'
					};
				}
			} else {
			
				if ($('#calendar').parents(".portlet").width() <= 720) {
					$('#calendar').addClass("mobile");
					h = {
						left : 'title, prev, next',
						center : '',
						right : 'month'
					};
				} else {
					$('#calendar').removeClass("mobile");
					h = {
						left : 'prevYear,nextYear',
						center : 'title',
						right : 'prev,next,month'
					};
				}
			}

			var initDrag = function(el) {
				// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
				// it doesn't need to have a start or end
				var eventObject = {
					title : $.trim(el.text())
				// use the element's text as the event title
				};
				// store the Event Object in the DOM element so we can get to it later
				el.data('eventObject', eventObject);
				// make the event draggable using jQuery UI
				el.draggable({
					zIndex : 999,
					revert : true, // will cause the event to go back to its
					revertDuration : 0
				//  original position after the drag
				});
			};

			var addEvent = function(title) {
				title = title.length === 0 ? "Untitled Event" : title;
				var html = $('<div class="external-event label label-default">'
						+ title + '</div>');
				jQuery('#event_box').append(html);
				initDrag(html);
			};

			$('#external-events div.external-event').each(function() {
				initDrag($(this));
			});

			$('#event_add').unbind('click').click(function() {
				var title = $('#event_title').val();
				addEvent(title);
			});

			//predefined events
			//            $('#event_box').html("");
			//            addEvent("My Event 1");
			//            addEvent("My Event 2");
			//            addEvent("My Event 3");
			//            addEvent("My Event 4");
			//            addEvent("My Event 5");
			//            addEvent("My Event 6");

			$('#calendar').fullCalendar('destroy'); // destroy the calendar
			$('#calendar')
					.fullCalendar(
							{ //re-initialize the calendar
								header : h,
								theme:true,
								//titleFormat:{month: '排班表  MMMM'},
								defaultView : 'month', // change default view with available options from http://arshaw.com/fullcalendar/docs/views/Available_Views/
								monthNames : [ "一月", "二月", "三月", "四月", "五月",
										"六月", "七月", "八月", "九月", "十月", "十一月",
										"十二月" ],
								monthNamesShort : [ "一月", "二月", "三月", "四月",
										"五月", "六月", "七月", "八月", "九月", "十月",
										"十一月", "十二月" ],
								dayNames : [ "周日", "周一", "周二", "周三", "周四",
										"周五", "周六" ],
								dayNamesShort : [ "周日", "周一", "周二", "周三", "周四",
										"周五", "周六" ],
								slotMinutes : 15,
								editable : true,
								selectable : true,
								selectHelper : true,
								currentTimezone : 'Asia/Beijing',
								buttonText: {
									prev: "上个月",
								    next: "下个月",
								    prevYear:'上一年',
								    nextYear:'下一年',
								    today: '返回今天',
								    month: '月',
								    week: '周',
								    day: '日',
								},
								select : function(startDate, endDate, allDay,
										jsEvent, view) {
									var startD = moment(startDate).format(
											'YYYY-MM-DD HH:mm:ss');
									layer.open({
										  type: 2,// 2表示打开iframe
										  btn:['保存','取消'],
										  title:"添加值班信息",
										  offset:10,
										  area: ['450px', '600px'],
										  fix: false, //不固定
//										  maxmin: true,// 是否显示最大最小窗口按钮
										  scrollbar: false,
										  content: '/sodb/pages/dutyManage/addOnDuty.jsp',
										  end: function () {
											  location.reload();// 关闭子窗口后刷新父页面
								          }
										});
									
//									var startD = moment(startDate).format(
//											'YYYY-MM-DD HH:mm:ss');
//									var endD = moment(endDate).format(
//											'YYYY-MM-DD HH:mm:ss');
//									alert(startD + "    " + endD + "  "
//											+ allDay + "  " + jsEvent + "   "
//											+ view);
								},
								 dayClick: function(date, allDay, jsEvent, view) {
							          $(this).css('background-color', 'yellow');							           
							        },
								events:function(start, end,timezone, callback) {
									 var urlR = "/sodb/pages/dutyManage/dutyPeople.json"; 
										$.ajax({
							                url: urlR,  
							              //  cache:false,  
							                type: "GET",
							                dataType: "json",
							                success:function(data) {  
						                //给日历增加事件
						                    var events = [];  
//						                    var info = eval(data);  
						             
						                    $.each(data.dutyPeople, function(i, item){  
						                    
						                       var str = "<ul style='padding:5px;font-size:14px;'><li>值班员："+item.dutyName+"(白)</li>";
						                       str += "<li>值班领导："+item.dutyLeader+"(白)</li>";
						                       str += "<li>&nbsp;</li>";
						                       str += "<li>值班员："+item.dutyNamenight+"(夜)</li>";
						                       str += "<li>值班领导："+item.dutyLeadernight+"(夜)</li></ul>";
						                       var startDate = item.dutyDate;

						                       var startD = moment(startDate).format('YYYY-MM-DD');
						                       events.push({  
//						                    	 id:ev.dutyFormId,
						                         title:str,  
						                         start:startD,
//						                         backgroundColor: Metronic.getBrandColor('yellow'),
						                         allDay: true
						                       });   
						                    });    
						                    callback(events);   
						                  }  
						              })
								},
								// 点击添加后的事件触发的事件
								eventClick: function(calEvent, jsEvent, view) {
									
									layer.open({
										  type: 2,// 2表示打开iframe
									      btn:['保存','取消'],
										  title:"编辑值班信息",
										  offset:10,
										  area: ['450px', '600px'],
										  fix: false, //不固定
										  scrollbar: false,
										  content:'/sodb/pages/dutyManage/addOnDuty.jsp',
										  end: function () {
											  location.reload();// 关闭子窗口后刷新父页面
								          }
										
										});
									
								},
								eventRender: function (event, element) {
								    element.html(event.title);           
								}
								
//								,dayClick:function(date, allDay, jsEvent, view){  
//					              //$(this).css({color: "red", background: "blue" });  
//					              //$(this).removeClass("ui-widget-content");  
//					              var url = baseURL+"/kinth/daily/perschedule/perscheduleMainLeader.jsp";  
//					              newPer = showModalDialog(url, window, 'dialogWidth:1200px;dialogHeight:720px;dialogLeft:280;dialogTop:180;scroll:no;');  
//					  
//					         }  

 
							});

		}

	};

}();