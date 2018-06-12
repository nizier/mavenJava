<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/pages/inc/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增用户</title>
<script type="text/javascript" charset="utf-8" src="<%=path %>/extends/UEditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=path %>/extends/UEditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="<%=path %>/extends/UEditor/lang/zh-cn/zh-cn.js"></script>
<style type="text/css">
    .input-radius{
        border-radius: 5px !important;
    }
</style>
</head>
<body style="overflow: hidden; ">
    <div class="sodb-page-home">
        <ul class="sodb-page-ul">
            <li>
                <i class="fa fa-home"></i>
                <a href="#">青岛机场安全管理</a> 
                <i class="fa fa-angle-right"></i>
            </li>
            <li>
                <a href="#">CMS后台管理</a><i class="fa fa-angle-right"></i>
            </li>
            <li>
                <a href="#">新增文章</a>
            </li>
        </ul>
    </div>
    <form name="articleForm" class="form-horizontal" id="articleForm" action="<c:url value='/article/save' />" method="post" enctype="multipart/form-data">
        <div class="row" style="margin-top: 50px;">
            <div class="form-group">
                <span for="title" class="col-sm-3 control-label">文章标题<span style="color:red">*</span>：</span>
                <div class="col-md-6 input-group" style="display:inline-block">
                    <input type="text" class="form-control" id="title" name="title" placeholder="请输入"
                        valid="r" validTitle="文章标题" validInfoArea="title_area" aria-describedby="sizing-addon2" required="required">
                </div>
                <div class="col-md-3" style="display:inline-block;float:right;"><p class="help-block" id="title_area"></p></div>
            </div>
            <div class="form-group" style = "display:none">
                <span class="col-sm-3 control-label">作者：</span>
                <div class="col-md-6 input-group ">
                    <input type="text" class="form-control" id="author" name="author" value ="${loginUser.userName }" aria-describedby="sizing-addon2" required="required">
                </div>
            </div>
            <br>
            <div class="form-group">
                <span class="col-sm-3 control-label">所属栏目<span style="color:red">*</span>：</span>
                <div class="col-md-6 input-group ">
                    <input type="hidden" class="form-control" id="categoryId" name="categoryId" value="${category.categoryId }" >
                    <input type="text" class="form-control" id="categoryName" value="${category.categoryName }" disabled="disabled" placeholder="" aria-describedby="sizing-addon2">
                    <input type="hidden" class="form-control" id="contentHtml" name="contentHtml" value="" >
                </div>
            </div>
            <br>
            <div class="form-group">
                <span for="keyWord" class="col-sm-3 control-label">关键字：</span>
                <div class="col-md-6 input-group ">
                     <input type="text" class="form-control" id="keyWord" name="keyWord" placeholder="请输入" aria-describedby="sizing-addon2">
                </div>
            </div>
            <br>
            <div class="form-group">
                <span class="col-sm-3 control-label">文章附件或图片：</span>
                <div class="col-md-6 input-group ">
		            <input type="file" name="file" class="file" id="file" style="line-height: 32px;height:32px;" autocomplete="off" disableautocomplete=""> 
                </div>
            </div>
            <br>
            <div class="form-group">
                <span class="col-sm-3 control-label">文章内容<span style="color:red">*</span>：</span>
                <div class="col-md-7" style="padding:0px;">
                    <textarea id="content" name="content"></textarea>
                </div>
            </div>
            <br>
        </div>
        <div class="row" style="margin-top: 20px;">
            <div class="col-md-11" style="text-align: center;">
                <button class="sbtn sbtn-blue sbtn30" type="button" onclick="subBtn()" >保存</button>
                <button class="sbtn sbtn-default sbtn30" type="button" id="backBtn" style="margin-left: 45px;">取消</button>
            </div>
        </div>
    </form>
</body>
<script type="text/javascript">
    // 实例化编辑器 
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
</html>