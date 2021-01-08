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

     pageContext.setAttribute("basePath", basePath);
 %>
<base href="<%=basePath%>">
<%--<link type="text/css" rel="stylesheet" href="static/css/style.css" >--%>
<script type="text/javascript" src="static/script/jquery-1.7.2.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="pages/assets/images/favicon.png"/>
<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i&display=swap" rel="stylesheet">
<link rel="stylesheet" href="pages/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="pages/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="pages/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="pages/assets/css/animate.min.css">
<link rel="stylesheet" href="pages/assets/css/jquery-ui.css">
<link rel="stylesheet" href="pages/assets/css/slick.css">
<link rel="stylesheet" href="pages/assets/css/chosen.min.css">
<link rel="stylesheet" href="pages/assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="pages/assets/css/magnific-popup.min.css">
<link rel="stylesheet" href="pages/assets/css/lightbox.min.css">
<link rel="stylesheet" href="pages/assets/js/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet" href="pages/assets/css/jquery.scrollbar.min.css">
<link rel="stylesheet" href="pages/assets/css/mobile-menu.css">
<link rel="stylesheet" href="pages/assets/fonts/flaticon/flaticon.css">
<link rel="stylesheet" href="pages/assets/css/style.css">


<script src="pages/assets/js/jquery-1.12.4.min.js"></script>
<script src="pages/assets/js/jquery.plugin-countdown.min.js"></script>
<script src="pages/assets/js/jquery-countdown.min.js"></script>
<script src="pages/assets/js/bootstrap.min.js"></script>
<script src="pages/assets/js/owl.carousel.min.js"></script>
<script src="pages/assets/js/magnific-popup.min.js"></script>
<script src="pages/assets/js/isotope.min.js"></script>
<script src="pages/assets/js/jquery.scrollbar.min.js"></script>
<script src="pages/assets/js/jquery-ui.min.js"></script>
<script src="pages/assets/js/mobile-menu.js"></script>
<script src="pages/assets/js/chosen.min.js"></script>
<script src="pages/assets/js/slick.js"></script>
<script src="pages/assets/js/jquery.elevateZoom.min.js"></script>
<script src="pages/assets/js/jquery.actual.min.js"></script>
<script src="pages/assets/js/fancybox/source/jquery.fancybox.js"></script>
<script src="pages/assets/js/lightbox.min.js"></script>
<script src="pages/assets/js/owl.thumbs.min.js"></script>
<script src="pages/assets/js/jquery.scrollbar.min.js"></script>
<script src="pages/assets/js/frontend-plugin.js"></script>
