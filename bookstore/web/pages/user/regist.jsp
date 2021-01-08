<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
    <%@ include file="/pages/common/css_img.jsp"%>
	<%@ include file="/pages/common/head.jsp"%>
	<script type="text/javascript">
		// 页面加载完成之后
		$(function () {

			// 验证码的单击图片绑定单击事件
			$("#code_img").click(function () {
				<%--alert("${basePath}/kaptcha.jpg")--%>
				this.src="${basePath}/kaptcha.jpg";
			})

			// 给注册绑定单击事件
			$("#sub_btn").click(function () {
				// 验证用户名：必须由字母，数字下划线组成，并且长度为5到12位
				//1 获取用户名输入框里的内容
				var usernameText = $("#username").val();
				//2 创建正则表达式对象
				var usernamePatt = /^\w{5,12}$/;
				//3 使用test方法验证
				if (!usernamePatt.test(usernameText)) {
					//4 提示用户结果
					$("span.errorMsg").text("用户名不合法！");

					return false;
				}

				// 验证密码：必须由字母，数字下划线组成，并且长度为5到12位
				//1 获取用户名输入框里的内容
				var passwordText = $("#password").val();
				//2 创建正则表达式对象
				var passwordPatt = /^\w{5,12}$/;
				//3 使用test方法验证
				if (!passwordPatt.test(passwordText)) {
					//4 提示用户结果
					$("span.errorMsg").text("密码不合法！");

					return false;
				}

				// 验证确认密码：和密码相同
				//1 获取确认密码内容
				var repwdText = $("#repwd").val();
				//2 和密码相比较
				if (repwdText != passwordText) {
					//3 提示用户
					$("span.errorMsg").text("确认密码和密码不一致！");

					return false;
				}

				// 邮箱验证：xxxxx@xxx.com
				//1 获取邮箱里的内容
				var emailText = $("#email").val();
				//2 创建正则表达式对象
				var emailPatt = /^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
				//3 使用test方法验证是否合法
				if (!emailPatt.test(emailText)) {
					//4 提示用户
					$("span.errorMsg").text("邮箱格式不合法！");

					return false;
				}

				// 验证码：现在只需要验证用户已输入。因为还没讲到服务器。验证码生成。
				var codeText = $("#code").val();

				//去掉验证码前后空格
				// alert("去空格前：["+codeText+"]")
				codeText = $.trim(codeText);
				// alert("去空格后：["+codeText+"]")

				if (codeText == null || codeText == "") {
					//4 提示用户
					$("span.errorMsg").text("验证码不能为空！");

					return false;
				}

				// 去掉错误信息
				$("span.errorMsg").text("");

			});
		});
	</script>

	<style type="text/css">
		.login_form{
			height:420px;
			margin-top: 25px;
		}

	</style>
</head>

<body class="inblog-page">
    <header class="header style7">
        <div class="top-bar">
            <div class="container">
                <div class="top-bar-left">
                    <div class="header-message">
                        注册
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
                                    <font size=12>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;书籍——举世之宝</font>
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
											<h5 class="title-login">Register Now</h5>
										</div>
										<div class="msg_cont">
											<b></b>
											<span class="errorMsg">
												&nbsp&nbsp
												&nbsp&nbsp
												&nbsp&nbsp
												&nbsp&nbsp
												<%=request.getAttribute("msg")==null?" ":request.getAttribute("msg")%>
											</span>
										</div>

										<form class="login" action="userServlet" method="post">
											<input type="hidden" name="action" value="regist">
											<p class="form-row form-row-wide">
												<label class="text">Username</label>
												<input class="itxt" type="text" tabindex="1" name="username"
													   value="<%=request.getAttribute("username")==null?"":request.getAttribute("username")%>"/>
											</p>
											<p class="form-row form-row-wide">
												<label class="text">Password</label>
												<input class="itxt" type="password" tabindex="1" name="password" id="password"/>
											</p>
											<p class="form-row form-row-wide">
												<label class="text">Confirm Password</label>
												<input class="itxt" type="password"
													   tabindex="1" name="repwd" id="repwd" />
											</p>
											<p class="form-row form-row-wide">
												<label class="text">E-mail</label>
												<input class="itxt" type="text"
													   tabindex="1" name="email" id="email"
													   value="<%=request.getAttribute("email")==null?"":request.getAttribute("email")%>" />
											</p>
											<p class="form-row form-row-wide">
												<label class="text">Captcha</label>
												<input class="itxt" type="text" style="width: 150px;" name="code" id="code" />
												<img alt="" id="code_img" src="kaptcha.jpg" style="float: right; margin-right: 40px">
											</p>
											<p class="form-row">
												<input type="submit" value="register" id="sub_btn" />
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

</body>
</html>
