<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">  
    function addUser(){ 
    	var name=document.getElementById("username").value;
    	var password=document.getElementById("pass").value;
    	var sure_pass=document.getElementById("sure_pass").value;
    	if(name.length<6 || name.length>12) {
    	 	alert("用户名长度应该为6~12个字符");
    	}
    	if(password.length<6 || password.length>18) {
    		alert("密码长度应该为6~18个字符");
    	}
    	
    	if(password != sure_pass) {
    		alert("前后密码不一致");
    	}
    	
    	if(name.length>=6 && name.length<=12 && password.length>=6 && password.length<=18 && password==sure_pass) {
    		var form = document.forms[0]; 
    		alert("恭喜您注册成功!"); 
            form.action ="/test_ssh/user/addUser";
            form.method="post";  
            form.submit();  
    	}
    }  
</script> 
  </head>
  
  <body>  
    <h1>用户注册</h1>  
    <form action="" >  
      <p>姓名： <input type="text"  name="userName" id="username"></p>
  	  <p>密码： <input type="password"  name="password" id="pass"></p>
  	  <p>确认： <input type="password"  name="sure" id="sure_pass"></p>
        
      <input type="button" value="提交" onclick="addUser()">  <input type="reset" value="重置" > 
         
    </form>  
</body>  
</html>  