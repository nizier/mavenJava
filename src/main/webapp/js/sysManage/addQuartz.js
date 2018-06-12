var path = "/haycStudio";
//表单验证
var validator_quartz;
var name_area = '<i class="fa fa-check"></i>&nbsp;&nbsp;必填项验证成功';
function submit_quartz() {
	if (!validator_quartz.validResult()) {
		$.fn.dlshouwen.validator.tools.toast('验证未通过！', 'error', 3000);
		return;
	}else if($("#show_jobName_area").html() != name_area){
		$.fn.dlshouwen.validator.tools.toast('任务名验证未通过！', 'error', 3000);
		return;
	}
	$.fn.dlshouwen.validator.tools.toast('验证通过！', 'success', 3000);
	document.getElementById("form1").submit();
}

$(function() {
	var option_quartz = {
		elementCallback : {
			success : function(element, css){
				if($(element).is(':checkbox') || $(element).is(':radio')){
					var name = $(element).attr('name');
					$('input[name='+name+']').parents('.form-group').removeClass(css.failure);
				}else{
					$(element).parents('.form-group').removeClass(css.failure);
				}
				//验证登录名
				if($(element).attr('name') == 'jobName'){
					var jobName = $("#jobName").val();
					$.ajax({
						type : "POST",
						dataType : "json",
						url : path + "/sys/quartz/check",
						data : "jobName=" + jobName,
						success : function(Data, textStatus) {
							if (Data.returncode == '10000') {
								$(element).parents('.form-group').addClass(css.failure);
								$("#show_jobName_area").removeClass("info-area-success");
								$("#show_jobName_area").addClass("info-area-failure");
								$("#show_jobName_area").html("<i class='fa fa-times'></i>&nbsp;&nbsp;任务名已经存在");
								return;
							} else if (Data.returncode == '200') {
								$(element).parents('.form-group').removeClass(css.failure);
								$("#show_jobName_area").removeClass("info-area-failure");
								$("#show_jobName_area").addClass("info-area-success");
								$("#show_jobName_area").html("<i class='fa fa-check'></i>&nbsp;&nbsp;必填项验证成功");
							} else {
								$(element).parents('.form-group').addClass(css.failure);
								$("#show_jobName_area").removeClass("info-area-success");
								$("#show_jobName_area").addClass("info-area-failure");
								$("#show_jobName_area").
									html("<i class='fa fa-times'></i>&nbsp;&nbsp;任务名获取失败！请联系开发人员！");
								return;
							}
						},
						error : function(data) {
							$(element).parents('.form-group').addClass(css.failure);
							$("#show_jobName_area").removeClass("info-area-success");
							$("#show_jobName_area").addClass("info-area-failure");
							$("#show_jobName_area"). html("<i class='fa fa-times'></i>&nbsp;&nbsp;服务器异常，稍后尝试！");
							return;
						}
					});
				}
			}
		}
   	};
	validator_quartz = $.fn.dlshouwen.validator.init($('#form1'), option_quartz);
});



	
