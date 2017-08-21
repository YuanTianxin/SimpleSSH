<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <script type="text/javascript" src="../js/jquery-1.7.1.js"></script>  
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">  
    function del(id){  
        $.get("/test_ssh/user/delUser?id=" + id,function(data){  
            if("success" == data.result){  
                alert("删除成功");  
                window.location.reload();  
            }else{  
                alert("删除失败");  
            }  
        });  
    }  
</script>  
  </head>
  
  <body>
    <h3 align="center">用户列表</h3>  
    <table border="1" align="center" bordercolor="#2BD56F">  
        <tbody>  
            <tr>  
                <th>姓名</th>  
                <th>密码</th>  
                <th>操作</th>  
            </tr>  
            <c:if test="${!empty userList }">  
                <c:forEach items="${userList }" var="user">  
                    <tr>  
                        <td>${user.userName }</td>  
                        <td>${user.password }</td>  
                        <td>  
                            <a href="/test_ssh/user/getUser?id=${user.id }">编辑</a>  
                            <a href="javascript:del('${user.id }')">删除</a>  
                        </td>  
                    </tr>               
                </c:forEach>  
            </c:if>  
        </tbody>  
    </table>  
  </body>
</html>
