<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>我的订单</title>
	<%--	静态包含，base标签，css按时，jQuery--%>
	<%@ include file="/pages/common/head.jsp"%>
	<style type="text/css">
		h1 {
			text-align: center;
			margin-top: 200px;
		}
	</style>
</head>
<body>
<header class="header style7">
	<div class="top-bar">
		<div class="container">
			<div class="top-bar-left">
				<div class="header-message">
					我的订单
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
<div class="header-nav-container">
	<div class="container">
		<div class="header-nav-wapper main-menu-wapper">
			<div class="vertical-wapper block-nav-categori">
				<div class="block-title">
						<span class="icon-bar">
							<span></span>
							<span></span>
							<span></span>
						</span>
					<span class="text">选项</span>
				</div>
				<div class="block-content verticalmenu-content">
					<ul class="teamo-nav-vertical vertical-menu teamo-clone-mobile-menu">
						<li class="menu-item">
							<a href="userServlet?action=logout" class="teamo-menu-item-title" title="New Arrivals">注销</a>
						</li>
						<li class="menu-item">
							<a href="pages/cart/cart.jsp" class="teamo-menu-item-title" title="New Arrivals">购物车</a>
						</li>
						<li class="menu-item">
							<a title="Hot Sale" href="index.jsp" class="teamo-menu-item-title">返回</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
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
				<tr>
					<td>2021.1.11</td>
					<td>202101111025admin</td>
					<td>90</td>
				</tr>

				<tr>
					<td>2021.1.10</td>
					<td>202101101606admin</td>
					<td>20</td>
				</tr>

				<tr>
					<td>2021.1.10</td>
					<td>202101100933admin</td>
					<td>190</td>
				</tr>
			</table>
		</font>
	</div>
</div>
<%@include file="/pages/common/footer.jsp"%>
</body>
</html>