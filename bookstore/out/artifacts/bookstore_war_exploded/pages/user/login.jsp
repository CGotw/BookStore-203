<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>

	<%@ include file="/pages/common/head.jsp"%>
</head>
<body class="inblog-page">
    <header class="header style7">
        <div class="top-bar">
            <div class="container">
                <div class="top-bar-left">
                    <div class="header-message">
                        登录
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="main-header">
                <div class="row">
                    <div class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
                        <div class="logo">
                            <a href="index.jsp">
                                <img src="pages/assets/images/logo.png" alt="img" height="120" width="300" style="margin-left:70px">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
                        <div class="block-search-block">
                            <div class="form-content">
                                <div class="inner"><br/><br/>
                                    <font size=12>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;书是唯一不死的东西</font>
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

	<div class="main-content main-content-login">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin">

							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="content-area col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="site-main">
						<h3 class="custom_blog_title">
							Authentication
						</h3>
						<div class="customer_login">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="login-item">
										<div class="tit">
											<h5 class="title-login">Login your Account &nbsp&nbsp&nbsp&nbsp <a href="pages/user/regist.jsp" style="color: deepskyblue">Register now</a></h5>
										</div>
										<div class="msg_cont">
											<b></b>
											<span class="errorMsg">
												&nbsp&nbsp
												&nbsp&nbsp
												&nbsp&nbsp
												&nbsp&nbsp
												<%=request.getAttribute("msg")==null?"请输入用户名和密码":request.getAttribute("msg")%>
											</span>
										</div>

										<form class="login" action="userServlet" method="post">
											<input type="hidden" name="action" value="login">
											<p class="form-row form-row-wide">
												<label class="text">Username</label>
												<input class="itxt" type="text" tabindex="1" name="username"
													   value="<%=request.getAttribute("username")==null?"":request.getAttribute("username")%>"/>
											</p>
											<p class="form-row form-row-wide">
												<label class="text">Password</label>
												<input class="itxt" type="password" tabindex="1" name="password" />
											</p>
											<p class="form-row">
												<input type="submit" value="Login" id="sub_btn" />
											</p>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<a href="#" class="backtotop">
		<i class="fa fa-angle-double-up"></i>
	</a>


</body>
</html>
