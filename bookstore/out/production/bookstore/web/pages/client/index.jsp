<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>书城首页</title>

	<%-- 静态包含 base标签、css样式、jQuery文件 --%>
	<%@ include file="/pages/common/head.jsp"%>
	<Script type="text/javascript">
		$(function () {
			// 给加入购物车按钮绑定单击事件
			$("button.addToCart").click(function () {
				/**
				 * 在事件响应的function函数 中，有一个this对象，这个this对象，是当前正在响应事件的dom对象
				 * @type {jQuery}
				 */
				var bookId = $(this).attr("bookId");
				location.href = "http://localhost:8080/bookstore/cartServlet?action=addItem&id=" + bookId;

			});
		});
	</Script>

</head>
<body class="productsgrid-page">
<header class="header style7">
	<div class="top-bar">
		<div class="container">
			<div class="top-bar-left">
				<div class="header-message">
					<c:if test="${not empty sessionScope.user}">
						<span>欢迎<span class="um_span">${sessionScope.user.username}</span>光临BUCT书城</span>
					</c:if>
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
								<c:if test="${empty sessionScope.user}">
									<a href="pages/user/login.jsp" class="teamo-menu-item-title" title="New Arrivals">登录</a>
								</c:if>
							</li>
							<li class="menu-item">
								<c:if test="${empty sessionScope.user}">
									<a href="pages/user/regist.jsp" class="teamo-menu-item-title" title="New Arrivals">注册</a>
								</c:if>
							</li>
							<li class="menu-item">
								<c:if test="${not empty sessionScope.user}">
									<a href="manager/orderServlet?action=listOrdersById" class="teamo-menu-item-title" title="New Arrivals">我的订单</a>
								</c:if>
							</li>
							<li class="menu-item">
								<c:if test="${not empty sessionScope.user}">
									<a href="userServlet?action=logout" class="teamo-menu-item-title" title="New Arrivals">注销</a>
								</c:if>
							</li>
							<li class="menu-item">
								<a href="pages/cart/cart.jsp" class="teamo-menu-item-title" title="New Arrivals">购物车</a>
							</li>
							<li class="menu-item">
								<a title="Hot Sale" href="pages/manager/manager.jsp" class="teamo-menu-item-title">后台管理</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<div class="main-content main-content-product no-sidebar">
	<div class="container">
		<div class="row">
			<div class="content-area shop-grid-content full-width col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="site-main">
					<div class="banner-shop banner-slider owl-slick equal-container"
						 data-slick='{"autoplay":true, "autoplaySpeed":10000, "arrows":false, "dots":true, "infinite":true, "speed":800, "rows":1}'>
						<div class="item-banner style1">
							<div class="inner equal-element">
								<div class="banner-content style1">
									<h4 class="teamo-subtitle"></h4>
									<h3 class="title"><br/> </h3>
									<br/><br/><br/><br/><br/><br/><br/>
								</div>
							</div>
						</div>
						<div class="item-banner style2">
							<div class="inner equal-element">
								<div class="banner-content style2">
									<h3 class="title"></h3>
									<span class="description"> <br/> </span>
									<br/><br/><br/><br/><br/><br/><br/>
								</div>
							</div>
						</div>
					</div>
					<h3 class="custom_blog_title">
						<div style="text-align: center">
							<c:if test="${empty sessionScope.cart.items}">
								<%--购物车为空的输出--%>
								<span> </span>
								<div>
									<span style="color: #65a15a">当前购物车为空</span>
								</div>
							</c:if>
							<c:if test="${not empty sessionScope.cart.items}">
								<%--购物车非空的输出--%>
								<span>您的购物车中有 ${sessionScope.cart.totalCount} 件商品</span>
								<div>
									您刚刚将<span style="color: #65a15a">${sessionScope.lastName}</span>加入到了购物车中
								</div>
							</c:if>
						</div>
					</h3>
				</div>
			</div>
		</div>
	</div>
</div>


<div id="main">
	<div id="book">
		<div class="book_cond">
			<div style="text-align: center;font-weight: bold">
				<form action="client/bookServlet" method="get">
					<input type="hidden" name="action" value="pageByPrice">
					价格：<input id="min" type="text" name="min" value="${param.min} " style="border:2px solid #65a15a;border-radius: 9px" > 元 -
					<input id="max" type="text" name="max" value="${param.max}" style="border:2px solid #65a15a;border-radius: 9px"> 元
					<input type="submit" value="查询"
							style="border-radius: 9px"
						/>
				</form>
			</div>
		</div>
		<div style="height: 30px">

		</div>
		<ul class="row list-products auto-clear equal-container product-grid">
			<c:forEach items="${requestScope.page.items}" var="book">
				<li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
					<div class="product-inner equal-element">
						<div class="product-thumb">
							<div class="thumb-inner">
								<a href="#">
									<img class="book_img" alt="" src="${book.imgPath}" />
								</a>
								<div class="thumb-group">
									<div class="loop-form-add-to-cart">


										<button  bookId="${book.id}" class="addToCart">
											<div class="single_add_to_cart_button button">
											</div>
										</button>

									</div>
								</div>
							</div>
						</div>
						<div class="product-info">
							<h5 class="product-name product_title">
								<div class="book_name">
									<span class="sp1">书名:</span>
									<span class="sp2">${book.name}</span>
								</div>
							</h5>
							<h5 class="product-name product_title">
								<div class="book_author">
									<span class="sp1">作者:</span>
									<span class="sp2">${book.author}</span>
								</div>
							</h5>
							<h5 class="product-name product_title">
								<div class="book_price">
									<span class="sp1">价格:</span>
									<span class="sp2">￥${book.price}</span>
								</div>
							</h5>
							<h5 class="product-name product_title">
								<div class="book_sales">
									<span class="sp1">销量:</span>
									<span class="sp2">${book.sales}</span>
								</div>
							</h5>
							<h5 class="product-name product_title">
								<div class="book_amount">
									<span class="sp1">库存:</span>
									<span class="sp2">${book.stock}</span>
								</div>
							</h5>
						</div>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>

	<%--静态包含分页条--%>
	<%@include file="/pages/common/page_nav.jsp"%>





</div>

<%--静态包含页脚内容--%>
<%@include file="/pages/common/footer.jsp"%>

</body>
</html>