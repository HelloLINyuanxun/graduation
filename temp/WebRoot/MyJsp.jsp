<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" class="no-js">
<head>
<title>My JSP 'MyJsp.jsp' starting page</title>

<%@include file="/public/head.jspf"%>
</head>

<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target="#example-navbar-collapse">
            <span class="sr-only">切换导航</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">菜鸟教程</a>
    </div>
		<div class="collapse navbar-collapse" id="example-navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">iOS</a></li>
				<li><a href="#">SVN</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> Java <b class="caret"></b>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">jmeter</a></li>
						<li><a href="#">EJB</a></li>
						<li><a href="#">Jasper Report</a></li>
						<li class="divider"></li>
						<li><a href="#">分离的链接</a></li>
						<li class="divider"></li>
						<li><a href="#">另一个分离的链接</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>
</body>
</html>
