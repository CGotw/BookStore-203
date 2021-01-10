<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>订单管理</title>
	<%--	静态包含，base标签，css按时，jQuery--%>
	<%@ include file="/pages/common/head.jsp"%>
</head>
<body>
<header class="header style7">
	<div class="top-bar">
		<div class="container">
			<div class="top-bar-left">
				<div class="header-message">
					订单管理系统
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="main-header">
			<div class="row">
				<div class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
					<div class="logo">
						<a href="index.html">
							<img src="pages/assets/images/logo.png" alt="img" height="120" width="300" style="margin-left:70px">
						</a>
					</div>
				</div>
				<div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
					<div class="block-search-block">
						<div class="form-content">
							<div class="inner"><br/><br/>
								<font size=12>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;书籍是人类进步的阶梯</font>						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<br/><br/>
<div id="main">
	<div style="text-align: center">
		<font size="4" color="green" >
			<table align="center">
				<tr>
					<td>日期</td>
					<td>订单号</td>
					<td>金额</td>
				</tr>
				<c:forEach items="${requestScope.orders}" var="order">
					<tr>
						<td>${order.create_time}</td>
						<td>${order.order_id}</td>
						<td>${order.price}</td>
					</tr>
				</c:forEach>
			</table>
		</font>
	</div>
</div>
<br/><br/>
<div style="text-align: center">
	<div class="row">
		<div class="col-lg-3 col-md-4 col-sm-4">
			<div class="teamo-iconbox  layout1">
				<div class="iconbox-inner">
					<div class="icon-item">
						<span class="placeholder-text">01</span>
						<span class="icon flaticon-rocket-ship"></span>
					</div>
					<div class="content">
						<h4 class="title">
							<a href="manager/bookServlet?action=page" class="teamo-menu-item-title" title="About">Books MANAGERMENT</a>
						</h4>
						<div class="text">
							图书管理
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-4 col-sm-4 col-lg-offset-1">
			<div class="teamo-iconbox  layout1">
				<div class="iconbox-inner">
					<div class="icon-item">
						<span class="placeholder-text">03</span>
						<span class="icon flaticon-padlock"></span>
					</div>
					<div class="content">
						<h4 class="title">
							<a href="manager/orderServlet?action=listOrders" class="teamo-menu-item-title" title="About">ORDER MANAGERMENT</a>
						</h4>
						<div class="text">
							订单管理
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-4 col-sm-4 col-lg-offset-1">
			<div class="teamo-iconbox  layout1">
				<div class="iconbox-inner">
					<div class="icon-item">
						<span class="placeholder-text">02</span>
						<span class="icon flaticon-return"></span>
					</div>
					<div class="content">
						<h4 class="title">
							<a href="index.jsp" class="teamo-menu-item-title" title="About">RETURN HOME</a>
						</h4>
						<div class="text">
							返回主页
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="/pages/common/footer.jsp"%>
</body>
</html>