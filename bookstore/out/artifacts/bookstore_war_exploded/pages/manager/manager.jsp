<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>后台管理</title>
	<%@ include file="/pages/common/head.jsp"%>
</head>
<body class="about-page">
<header class="header style7">
	<div class="top-bar">
		<div class="container">
			<div class="top-bar-left">
				<div class="header-message">
					后台管理系统
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
<div class="main-content main-content-about">
	<div class="container">
		<div class="row">
			<div class="content-area content-about col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="site-main">
					<div class="page-main-content">
						<div class="header-banner banner-image">
							<div class="banner-wrap">
								<div class="banner-header">
									<div class="col-lg-5 col-md-offset-7">
										<div class="content-inner">
											<h2 class="title">
												<br/><br/><br/><br/><br/><br/><br/><br/>
											</h2>
										</div>
									</div>
								</div>
							</div>
						</div>
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
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="footer-device-mobile">
	<div class="wapper">
		<div class="footer-device-mobile-item device-home">
			<a href="index.html">
					<span class="icon">
						<i class="fa fa-home" aria-hidden="true"></i>
					</span>
				Home
			</a>
		</div>
		<div class="footer-device-mobile-item device-home device-wishlist">
			<a href="#">
					<span class="icon">
						<i class="fa fa-heart" aria-hidden="true"></i>
					</span>
				Wishlist
			</a>
		</div>
		<div class="footer-device-mobile-item device-home device-cart">
			<a href="#">
					<span class="icon">
						<i class="fa fa-shopping-basket" aria-hidden="true"></i>
						<span class="count-icon">
							0
						</span>
					</span>
				<span class="text">Cart</span>
			</a>
		</div>
		<div class="footer-device-mobile-item device-home device-user">
			<a href="#">
					<span class="icon">
						<i class="fa fa-user" aria-hidden="true"></i>
					</span>
				Account
			</a>
		</div>
	</div>
</div>
<a href="#" class="backtotop">
	<i class="fa fa-angle-double-up"></i>
</a>

</body>
</html>