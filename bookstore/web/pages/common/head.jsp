<%--
  Created by IntelliJ IDEA.
  User: Lenovo、
  Date: 2020/12/31
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

 <%
     String basePath=request.getScheme()
        +"://"
        +request.getServerName()
        +":"
        +request.getServerPort()
        +request.getContextPath()
        +"/";
 %>
<base href="<%=basePath%>">
<link type="text/css" rel="stylesheet" href="static/css/style.css" >
<script type="text/javascript" src="static/script/jquery-1.7.2.js"></script>
