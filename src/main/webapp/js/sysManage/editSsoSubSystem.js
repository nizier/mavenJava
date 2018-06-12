var validator_ssoSubSystem;
function submit_ssoSubSystem() {
	if (!validator_ssoSubSystem.validResult()) {
		$.fn.dlshouwen.validator.tools.toast('验证未通过！', 'error', 3000);
		return;
	}
	$.fn.dlshouwen.validator.tools.toast('验证通过！', 'success', 3000);
	document.getElementById("frm").submit();
}

$(function() {
	var option_ssoSubSystem = {
		elementCallback : {
			success : function(element, css){
				if($(element).is(':checkbox') || $(element).is(':radio')){
					var name = $(element).attr('name');
					$('input[name='+name+']').parents('.form-group').removeClass(css.failure);
				}else{
					$(element).parents('.form-group').removeClass(css.failure);
				}
			}
		}
   	};
	validator_ssoSubSystem = $.fn.dlshouwen.validator.init($('#frm'), option_ssoSubSystem);
});



	
