<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%@ include file="/public/head.jspf"%>

<body>
	<c:forEach items="${applicationScope.bigList}" var="list">
		<div class="product_list producy_slider clear">
			<h2 class="sub_title">${list[0].category.type}</h2>
			<ul id="first-carousel">
				<c:forEach items="${list}" var="product">
					<li><a href="#" class="product_image"></a>
						<div class="product_info">
							<h3>
								<a href="#">商品名称:${product.name}</a>
							</h3>
							<small>简单描述:${product.remark}</small>
						</div>
						<div class="price_info">
							<span class="price">￥${product.price}</span>
						</div>
						<div id="lreview">
							<c:forEach items="${product.lreviews}" var="lreview">
								<small>${lreview.user.name}</small>
								<a href="#">${lreview.content}</a>
							</c:forEach>
							<c:forEach items="${product.xreviews}" var="xreview">
								<a href="#">${xreview.content}</a>
							</c:forEach>
						</div></li>
				</c:forEach>

			</ul>
		</div>
	</c:forEach>
</body>
</html>
