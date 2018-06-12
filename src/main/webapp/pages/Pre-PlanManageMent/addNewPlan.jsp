<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/deviceHeadTree.jsp" %>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>${title }</title>

<style>
	
</style>
</head>
<body>
<div class="sodb-page-home">
<ul class="sodb-page-ul">
<li>
<i class="fa fa-home"></i> 
<a href="#">北京新机场应急救援管理</a> 
<i class="fa fa-angle-right"></i>
</li>
<li>
<a href="#">预案管理</a>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
    <div class="col-md-3" style="width: 32%">
       <div class="portlet blue-hoki box" >
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-cogs"></i>应急救援预案管理							
								</div>
							</div>
							<div class="portlet-body">
								<div id="maintaindptree" class="tree-demo"></div>
							</div>
    	</div>
    </div>
	<div  class="col-md-9"  id="content_1" style="width:67%;margin-top: -13pxl;display: block;" >
		<div class="portlet box blue-hoki">
			<div class="portlet-title">
				<div class="caption"  id="title">
					<i class="fa fa-th-list"></i>航空器失事应急处置预案
						</div>
							</div>
								<div class="portlet-body form" style="width:100%;"> 						
									<form class="form-inline" style="margin:10px 0px 10px 10px;" name="" method="post">	
           								<button type="button" id="addPlanBtn"  onclick="addPlanApp()" class="sbtn sbtn-blue" style="margin-left: 83%;">
          									 新增子目录节点</button>
                     					 	<textarea id="content" name="content" style="width: 850px;margin-top: 10px"></textarea>
    								 </form>
								</div>
							</div>
						</div>							
					</div>
				</div>
			</div>
		</div>
<script type="text/javascript" src="<%=path %>/businessJs/addNewPlanTree.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=path %>/extends/UEditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=path %>/extends/UEditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="<%=path %>/extends/UEditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
function fn(){
	  confirm("是否删除？");
}
//实例化编辑器 
var ue = UE.getEditor('content',{
	toolbars: [[
        'fullscreen', 'source', '|', 'undo', 'redo', '|',
        'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', '|',
        'rowspacingtop', 'rowspacingbottom', 'lineheight', '|',
        'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|',
        'directionalityltr', 'directionalityrtl', 'indent', '|',
        'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|', 'touppercase', 'tolowercase', '|',
        'link', 'unlink', 'anchor', '|', 'simpleupload', 'insertimage', '|',
        'horizontal', 'date', 'time', 'spechars', 'snapscreen', 'wordimage', '|',
        'preview', 'searchreplace', 'drafts', 'help'
    ]],
    initialFrameHeight:500,
    scaleEnabled:true,
});
/* $("#content").val(articleContent) */
/* UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
UE.Editor.prototype.getActionUrl = function(action){
	if(action == '/article/uploadZXImage')
		return 'http://localhost:8080/qdsodb/src/main/webapp/pages/sys/article';
} else {
	return this._bkGetActionUrl.call(this,action);
} */

$("#backBtn").click(function() {
    window.location.href = '<c:url value="/article/page" />';
})

var articleTitle;
function subBtn(){
var articleContent = UE.getEditor('content').getContent();
if(!articleTitle.validResult()){
	return;
} else if(articleContent == ""){
	showMsg("文章内容不能为空！");
} else {
	articleForm.submit();
}
}
$(function(){;
//alert("0.0");
articleTitle = $.fn.dlshouwen.validator.init($('#articleForm'));
});

</script>		
		
</body>
</html>