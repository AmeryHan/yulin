<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统管理</title>
</head>

<body>
	<div id="header"></div>
	<jsp:include page="SystemNav.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">商会介绍</span>
		</div>
		<jsp:include page="SystemMenu.jsp" flush="true"/>
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>商会介绍</h3>
					<p>这是最基本的圆角框，无图片，四个圆角全部采用标签绘制，兼容所有浏览器，无HACK，使用时只需添加一个class = "
						color1 "即可，下面的所有颜色方案你可以灵活自定义。</p>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<jsp:include page="SystemFooter.jsp" flush="true"/>
</body>
</html>
