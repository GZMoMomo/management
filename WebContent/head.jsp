<%@page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>物业管理系统登录页面</title>
</head>

<script src="jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>

<script type="text/javascript">
  
</script>

<div class="jumbotron">
  <div class="container" align="center">
      <h2 class="text-info" style="font-family:宋体;font-weight:bold;font-size:49px">广东理工学院</h2>
      <br>
      <div class="text-muted">物业管理系统</div>
      <br>
      <br>
      <p><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
 登录窗口
</button></p>
  </div>
  </div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
   <div class="modal-dialog">
           <div class="modal-content">
             <div class="modal-header">
               <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
               <h4 class="modal-title">登录</h4>
             </div>
             <div class="modal-body">
                <div class="input-group">
                    <input type="text" id="name" class="form-control" placeholder="用户名" aria-describedby="basic-addon1">
                  </div>
                   
                  <div class="input-group">
                    <input type="text" id="password" class="form-control" placeholder="密码" aria-describedby="basic-addon2">
                 </div>
             </div>
             <div class="modal-footer">
               <button data-dismiss="modal" class="btn btn-default" type="button">关闭</button>
               <a href="home.jsp?name=123"><button class="btn btn-primary" type="submit" id="submit" >提交</button> </a>
               
               <script>
                $(function(){
                	 $("#submit").click(function(){
                		 var name=$("#name").val();
                		 var password=$("#password").val();
                		 if(name==123&&password==123){
                			 alert("登录成功");
                			 
                		 }else{
                			 alert("登录失败");
                		 }
                		 
                	 });
                 });
                </script>
               
              
            	   
                 
             </div>
           </div><!-- /.modal-content -->
         </div><!-- /.modal-dialog -->
   </div>
    
   <div style="height:200px"></div>

</html>