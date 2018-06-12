<%@page  pageEncoding="UTF-8"%>
<%@include file="/pages/inc/header.jsp"%>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="utf-8" />
<title>${title }</title>
<!-- END left menu related css -->


<link href="<%=path%>/css/video.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/css/lzz.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/js/dragDiv.js"></script>


<!-- END OTHER STYLES -->
<style type="text/css">
td  
{  
    text-align:center;  
    
}  

</style>

</head>
<body>
<div class="sodb-page-home">
<ul class="sodb-page-ul">
<li>
<i class="fa fa-home"></i> 
<a href="#">青岛机场安全管理</a> 
<i class="fa fa-angle-right"></i>
</li>
<li>
<a href="#">业务资源可视化</a>
<i class="fa fa-angle-right"></i>
</li>
<li><a href="#">人力资源管理</a></li>
</ul> 
</div>
<div class="page-container">
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
<div class="row">
   <div class="col-md-8" style="border:1px solid black;height:100%;">
      
									     <form id="form1" style="margin-top:50px;" class="form-horizontal" role="form" action="#" enctype="multipart/form-data"  method="post">
									<div class="form-body">
										<div class="form-group">
										    <div class="col-md-9">
										     <div class="form-group">
											    <label class="col-md-3 control-label">姓名<span class="required">* </span></label>
											    <div class="col-md-3">
												<input  type="text" class="form-control" value="张三">
											    </div>
											   <label class="col-md-2 control-label">性别<span class="required">* </span></label>
											   <div class="col-md-4">
												<input  type="text" name="sex" class="form-control" value="男">
																				
											   </div>
											</div>
											 <div class="form-group">
											    <label class="col-md-3 control-label">出生年月<span class="required">* </span></label>
											    <div class="col-md-9">
												<input  type="text" class="form-control" value="1996.3.6">
											    </div>
											
											</div>
											 <div class="form-group">
											    <label class="col-md-3 control-label">家庭住址<span class="required">* </span></label>
											    <div class="col-md-9">
												<input type="text" class="form-control" value="青岛市">
											    </div>
											</div>
										   </div>
										    <div class="col-md-3">
										     <div class="form-group">
											    <div class="col-md-2">
												<img style="width:120px;height:130px;" src="/sodb/img/sdhDutyManage/human.jpg">
											    </div>
											</div>
										   </div>		
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label">职务<span class="required">* </span></label>
											<div class="col-md-6">
											  <input  type="text" class="form-control" value="安保人员">
												
											</div>
										</div>
										
										
										<div class="form-group">
											<label class="col-md-2 control-label">入职时间<span class="required">* </span></label>
											<div class="col-md-6">
												<input  type="text" class="form-control" value="2017.3.6">
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">聘用形式<span class="required">* </span></label>
											<div class="col-md-6">
											  <input  type="text" class="form-control" value="正式">
												
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">个人简历<span class="required">* </span></label>
											<div class="col-md-6">
												<input  type="text" class="form-control" value="个人简历">
											</div>
										</div>											
									</div>
								 
								</form>
									</div>
								 
						
   <div class="col-md-4" id="content_1" style="height:100%;border:1px solid black;">
				<div class="main_table" id="main_table" style="border-radius: 8px;height:100%;width:100%">
					    <div class="title-event">当前值班员 
					   <a href="humanResource.jsp" style="margin-left:65%;">返回</a>					
				       </div>
						<div class="static_nav" style="padding-bottom:10%">
							<span class="indicator">人力资源名称：</span>
							<select class="form-control" style="width:28%;margin:1% 0 0 0;display:inline;float:left">
							   <option value=1>安保人员</option>
							   <option value=2>安检人员</option>
							   <option value=3>消防人员</option>
							   <option value=4>其他人员</option>
							</select>
							
			            </div>
						<div id="" style="margin-top:50px;">
						<div style="text-align:center;" class="row">
						    <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row" style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						     <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						    <div class="col-md-4">
						      <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						   
						</div>
						<div style="text-align:center;margin-top:30px;" class="row">
						    <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						     <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						    <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						   
						</div>
						<div style="text-align:center;margin-top:30px;" class="row">
						    <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						     <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						    <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						   
						</div>
						<div style="text-align:center;margin-top:30px;" class="row">
						    <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						     <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						    <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						   
						</div>
						<div style="text-align:center;margin-top:30px;" class="row">
						    <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						     <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						    <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						   
						</div>
						<div style="text-align:center;margin-top:30px;" class="row">
						    <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						     <div class="col-md-4">
						      <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						    <div class="col-md-4">
						       <div class="row">
						       <div class="col-md-12"><a href="#"><img style="width:30px;height:40px;" src="/sodb/img/sdhDutyManage/human.jpg"></a></div>
						       </div>
						       <div class="row"  style="margin-top:10px;">
						       <div class="col-md-12"><a href="#">张三</a></div>
						       </div>
						    </div>
						   
						</div>

			<ul class="pagination" style="position:relative;margin-top:10px;left:10px;">
				<li>
					 <a href="#">上一页</a>
				</li>
				<li>
					 <a href="#">1</a>
				</li>
				<li>
					 <a href="#">2</a>
				</li>
				<li>
					 <a href="#">3</a>
				</li>
				<li>
					 <a href="#">4</a>
				</li>
				<li>
					 <a href="#">5</a>
				</li>
				<li>
					 <a href="#">下一页</a>
				</li>
			</ul>
			
						</div>
					</div>				
	</div>
					
</div>
         </div>
      </div>
</div>
		
				
				
<script type="text/javascript">
$(document).ready(function() {
   $("input").css("border","none");
   $("input").css("outline","medium");
  
});
	
	
</script>		
		
</body>
</html>