<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>checkout</title>
	<%@ include file="/pages/common/head.jsp"%>
</head>
<body class="inblog-page">
<header class="header style7">
	<script type="text/javascript">
		$(function () {
			// 给 【删除】绑定单击事件
			$("a.deleteItem").click(function () {
				return confirm("你确定要删除【" + $(this).parent().parent().find("td:first").text() +"】吗?")
			});
			// 给清空购物车绑定单击事件
			$("#clearCart").click(function () {
				return confirm("你确定要清空购物车吗?");
			})
			// 给输入框绑定 onchange内容发生改变事件
			$(".updateCount").change(function () {
				// 获取商品名称
				var name = $(this).parent().parent().find("td:first").text();
				var id = $(this).attr('bookId');
				// 获取商品数量
				var count = this.value;
				if ( confirm("你确定要将【" + name + "】商品修改数量为：" + count + " 吗?") ) {
					//发起请求。给服务器保存修改
					location.href = "http://localhost:8080/bookstore/cartServlet?action=updateCount&count="+count+"&id="+id;
				} else {
					// defaultValue属性是表单项Dom对象的属性。它表示默认的value属性值。
					this.value = this.defaultValue;
				}
			});

		});
	</script>
	<div class="top-bar">
		<div class="container">
			<div class="top-bar-left">
				<div class="header-message">
					结算
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
								<font size=12>
									&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;
									读书使人心明眼亮
								</font>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>

<div class="header-device-mobile">
	<div class="wapper">
		<div class="item mobile-logo">
			<div class="logo">
				<a href="#">
					<img src="pages/assets/images/logo.png" alt="img">
				</a>
			</div>
		</div>
		<div class="item item mobile-search-box has-sub">
			<a href="#">
                            <span class="icon">
                                <i class="fa fa-search" aria-hidden="true"></i>
                            </span>
			</a>
			<div class="block-sub">
				<a href="#" class="close">
					<i class="fa fa-times" aria-hidden="true"></i>
				</a>
				<div class="header-searchform-box">
					<form class="header-searchform">
						<div class="searchform-wrap">
							<input type="text" class="search-input" placeholder="Enter keywords to search...">
							<input type="submit" class="submit button" value="Search">
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="item mobile-settings-box has-sub">
			<a href="#">
                            <span class="icon">
                                <i class="fa fa-cog" aria-hidden="true"></i>
                            </span>
			</a>
			<div class="block-sub">
				<a href="#" class="close">
					<i class="fa fa-times" aria-hidden="true"></i>
				</a>
				<div class="block-sub-item">
					<h5 class="block-item-title">Currency</h5>
					<form class="currency-form teamo-language">
						<ul class="teamo-language-wrap">
							<li class="active">
								<a href="#">
                                                <span>
                                                    English (USD)
                                                </span>
								</a>
							</li>
							<li>
								<a href="#">
                                                <span>
                                                    French (EUR)
                                                </span>
								</a>
							</li>
							<li>
								<a href="#">
                                                <span>
                                                    Japanese (JPY)
                                                </span>
								</a>
							</li>
						</ul>
					</form>
				</div>
			</div>
		</div>
		<div class="item menu-bar">
			<a class=" mobile-navigation  menu-toggle" href="#">
				<span></span>
				<span></span>
				<span></span>
			</a>
		</div>
	</div>
</div>

<div class="site-content">
	<main class="site-main  main-container no-sidebar">
		<div class="container">
			<div class="breadcrumb-trail breadcrumbs">
				<ul class="trail-items breadcrumb">
					<li class="trail-item trail-begin">
						<a href="">
                                        <span>
                                        </span>
						</a>
					</li>
				</ul>
			</div>
			<div class="row">
				<div class="main-content-cart main-content col-sm-12">
					<h3 class="custom_blog_title">
						checkout
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="index.jsp" style="color: deepskyblue;font-size: large">Go Home</a>
					</h3>
					<div class="page-main-content">
						<div class="shoppingcart-content">
							<form action="shoppingcart.html" class="cart-form">
								<table class="shop_table">
									<thead>
									<tr>
										<th class="product-remove"></th>
										<th class="product-thumbnail"></th>
										<th class="product-name"></th>
										<th class="product-price"></th>
										<td>数量</td>
										<th class="product-subtotal"></th>
									</tr>
									</thead>
									<tbody>
									<tr>
										<td class="product-name" data-title="Product">
											<br><br>
											&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;
											你的订单已结算，订单号为: ${sessionScope.orderId}
										</td>
									</tr>
									<tr>
										<td class="product-name" data-title="Product">
											<br>
											<h3>
												&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;
												THANK YOU!
											</h3>
										</td>
									</tr>
									</tbody>
								</table>
							</form>
							<div class="control-cart">
								<a href="index.jsp">
									<button class="button btn-continue-shopping">
										Continue Shopping
									</button>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</div>

<a href="#" class="backtotop">
	<i class="fa fa-angle-double-up"></i>
</a>
</body>
</html>