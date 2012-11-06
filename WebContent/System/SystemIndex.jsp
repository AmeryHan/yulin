<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统管理</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/_MenuTree.js"></script>
<link href="css/_MenuTree.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<div id="nav">
		<ul>
			<li><a href="System/main.jsp">登录管理系统</a></li>
			<li><a href="${pageContext.request.contextPath}/AnSelect.do">显示首页</a></li>
		</ul>
	</div>
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">商会介绍</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>导航</h3>
					<script type="text/javascript">
						//<![CDATA[
						var arrData = new Array(
							[0,"公告管理","#"],
								[1,"公告发布","System/ggaofb.jsp"],
								[1,"公告列表","${pageContext.request.contextPath}/AnSelect2.do?anid=2"],
							[0,"审批管理","#"],
								[1,"个人审批","${pageContext.request.contextPath}/PersonalSelect.do?plid=2"],
								[1,"企业审批","${pageContext.request.contextPath}/UnitSelect.do?utid=2"],
							[0,"组织人员管理","#"],
								[1,"人员添加","System/zzadd.jsp"],
								[1,"人员列表","${pageContext.request.contextPath}/StructureList.do"],
							[0,"公告管理","#"],
								[1,"公告发布","System/ggaofb.jsp"],
								[1,"公告列表","${pageContext.request.contextPath}/AnSelect2.do?anid=2"],
							[0,"管理前线管理","#"],
								[1,"前线发布","System/zcdxfb.jsp"],
								[1,"前线列表","${pageContext.request.contextPath}/PolicySelect.do?pyid=2"],
							[0,"商会信息管理","#"],
								[1,"动态发布","System/shdtfb.jsp"],
								[1,"动态列表","${pageContext.request.contextPath}/NewSelect.do?newid=2"],
							[0,"家乡信息管理","#"],
								[1,"信息发布","System/jxfb.jsp"],
								[1,"信息列表","${pageContext.request.contextPath}/HometownSelect.do?htid=2"],
							[0,"相册管理","#"],
								[1,"相册发布","#"],
								[1,"相册列表","${pageContext.request.contextPath}/PhotoSelect.do?mbid=2"],
							[0,"其他管理","#"],
								[1,"老乡留言","${pageContext.request.contextPath}/LaoxSelect.do?lxid=2"],
								[1,"会员随笔","${pageContext.request.contextPath}/MemberSelect.do?mbid=2"]
						);
						var MSDN = new _MenuTree("MSDN", arrData, "images/MSDN/");
						MSDN.Draw();
						//]]>
					</script>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>
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
	<div id="footer">
		<ul>
		</ul>
		<hr />
		<p>
			版权所有：陕西商会 榆林分会&nbsp;&nbsp;&nbsp;&nbsp; <a href="yrzdmain.html">技术支持：上海悠得信息科技工作室</a>
		</p>
	</div>

</body>
</html>
