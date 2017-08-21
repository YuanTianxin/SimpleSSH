<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">  
    function check(){ 
    	var name=document.getElementById("username").value;
    	var password=document.getElementById("pass").value;
    	if(name.length<6 || name.length>12) {
    	 	alert("用户名长度应该为6~12个字符");
    	}
    	if(password.length<6 || password.length>18) {
    		alert("密码长度应该为6~18个字符");
    	}
    	
    	if(name.length>=6 && name.length<=12 && password.length>=6 && password.length<=18) {
    		var form = document.forms[0];  
            form.action ="/test_ssh/user/toSuccess";
            form.method="post";  
            form.submit();  
    	}
    }  
</script> 

  </head>
  
  <body>
  	<form action="" >
  	<p>姓名： <input type="text"  name="userName" id="username"></p>
  	<p>密码： <input type="password"  name="password" id="pass"></p>
    <h4><input type="button" value="登录" onclick="check()">
    <input type="button" value="注册"  onclick="window.location.href='/test_ssh/user/toAddUser'">
    <a href="/test_ssh/user/getAllUser">管理员入口</a></h4>
    </form>
  </body>
</html>