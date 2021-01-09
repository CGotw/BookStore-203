<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>图书管理</title>

	<%-- 静态包含 base标签、css样式、jQuery文件 --%>
	<%@ include file="/pages/common/head.jsp"%>
	<script type="text/javascript">
		$(function () {
			// 给删除的a标签绑定单击事件，用于删除的确认提示操作
			$("a.deleteClass").click(function () {
				// 在事件的function函数中，有一个this对象。这个this对象，是当前正在响应事件的dom对象。
				/**
				 * confirm是确认提示框函数
				 * 参数是它的提示内容
				 * 它有两个按钮，一个确认，一个是取消。
				 * 返回true表示点击了，确认，返回false表示点击取消。
				 */
				return confirm("你确定要删除【" + $(this).parent().parent().find("td:first").text() + "】?");
				// return false// 阻止元素的默认行为===不提交请求
			});
		});
	</script>

</head>
<body>
<header class="header style7">
	<div class="top-bar">
		<div class="container">
			<div class="top-bar-left">
				<div class="header-message">
					图书管理系统
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
				<div style="text-align: right">
					<font color="green" size=4><a href="pages/manager/book_edit.jsp">添加图书</a></font>
				</div>
			</div>
		</div>
	</div>
</header>
<div id="main">
	<ul class="row list-products auto-clear equal-container product-grid">
		<c:forEach items="${requestScope.page.items}" var="book">
			<li class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">
				<div class="product-inner equal-element">
					<div class="product-thumb">
						<div class="thumb-inner">
							<img class="book_img" alt="" src="${book.imgPath}" />
							<div class="thumb-group">
								<a href="manager/bookServlet?action=getBook&id=${book.id}">修改</a>
								<a class="deleteClass" href="manager/bookServlet?action=delete&id=${book.id}">删除</a>
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
	<br/><br/>

	<div style="text-align: center;font-weight: bold">
		<div id="page_nav">
			<%--大于首页，才显示--%>
			<c:if test="${requestScope.page.pageNo > 1}">
				<a href="${ requestScope.page.url }&pageNo=1">首页</a>
				<a href="${ requestScope.page.url }&pageNo=${requestScope.page.pageNo-1}">上一页</a>
			</c:if>
			<%--页码输出的开始--%>
			<c:choose>
				<%--情况1：如果总页码小于等于5的情况，页码的范围是：1-总页码--%>
				<c:when test="${ requestScope.page.pageTotal <= 5 }">
					<c:set var="begin" value="1"/>
					<c:set var="end" value="${requestScope.page.pageTotal}"/>
				</c:when>
				<%--情况2：总页码大于5的情况--%>
				<c:when test="${requestScope.page.pageTotal > 5}">
					<c:choose>
						<%--小情况1：当前页码为前面3个：1，2，3的情况，页码范围是：1-5.--%>
						<c:when test="${requestScope.page.pageNo <= 3}">
							<c:set var="begin" value="1"/>
							<c:set var="end" value="5"/>
						</c:when>
						<%--小情况2：当前页码为最后3个，8，9，10，页码范围是：总页码减4 - 总页码--%>
						<c:when test="${requestScope.page.pageNo > requestScope.page.pageTotal-3}">
							<c:set var="begin" value="${requestScope.page.pageTotal-4}"/>
							<c:set var="end" value="${requestScope.page.pageTotal}"/>
						</c:when>
						<%--小情况3：4，5，6，7，页码范围是：当前页码减2 - 当前页码加2--%>
						<c:otherwise>
							<c:set var="begin" value="${requestScope.page.pageNo-2}"/>
							<c:set var="end" value="${requestScope.page.pageNo+2}"/>
						</c:otherwise>
					</c:choose>
				</c:when>
			</c:choose>

			<c:forEach begin="${begin}" end="${end}" var="i">
				<c:if test="${i == requestScope.page.pageNo}">
					【${i}】
				</c:if>
				<c:if test="${i != requestScope.page.pageNo}">
					<a href="${ requestScope.page.url }&pageNo=${i}">${i}</a>
				</c:if>
			</c:forEach>
			<%--页码输出的结束--%>


			<%-- 如果已经 是最后一页，则不显示下一页，末页 --%>
			<c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">
				<a href="${ requestScope.page.url }&pageNo=${requestScope.page.pageNo+1}">下一页</a>
				<a href="${ requestScope.page.url }&pageNo=${requestScope.page.pageTotal}">末页</a>
			</c:if>

			共${ requestScope.page.pageTotal }页，${ requestScope.page.pageTotalCount }条记录
			到第<input value="${param.pageNo}" name="pn" id="pn_input" style="border-radius: 9px;width: 60px;text-align: center"/>页
			<input id="searchPageBtn" type="button" value="确定"
				   style="background: #65a15a ;color: #FFFFFF;border-radius: 4px;border-color: #FFFFFF"
			>

			<script type="text/javascript">

				$(function () {
					// 跳到指定的页码
					$("#searchPageBtn").click(function () {

						var pageNo = $("#pn_input").val();

						<%--var pageTotal = ${requestScope.page.pageTotal};--%>
						<%--alert(pageTotal);--%>

						// javaScript语言中提供了一个location地址栏对象
						// 它有一个属性叫href.它可以获取浏览器地址栏中的地址
						// href属性可读，可写
						location.href = "${pageScope.basePath}${ requestScope.page.url }&pageNo=" + pageNo;

					});
				});

			</script>
			<div />
		</div>

	<br/>
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
								<a href="pages/manager/order_manager.jsp" class="teamo-menu-item-title" title="About">ORDER MANAGERMENT</a>
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

<%--静态包含页脚内容--%>
<%@include file="/pages/common/footer.jsp"%>


</body>
</html>