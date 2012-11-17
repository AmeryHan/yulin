<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理前线</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">管理前线</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>
						<span class="fontColor"><big><big>M</big>
						</big>enu</span>导航
					</h3>
					<div id="menuLeft">
						<ul>
							<li><a href="chamberDetial.jsp">商会介绍</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/NewSelect.do?newid=1">商会动态</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">会员单位</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">管理前线</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">会员随笔</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">家乡</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">老乡留言</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&str1=0&str2=6">图片展示</a>
							</li>
						</ul>
					</div>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
			<!-- registerbtn       -->
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<div id="registerbtn">
						<input type="button" value="" class="personbtn"
							onclick="window.location.href='gerensq.jsp'; " /> <input
							type="button" value="" class="companybtn"
							onclick="window.location.href='danwsq.jsp'; " /> <input
							type="button" value="" class="linkbtn"
							onclick="window.location.href='lxwm.jsp'; " />
					</div>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>管理前线</h3>
					<div id="ListWrapper">
						<ul>


							<logic:iterate id="map2" collection="${requestScope.arr1}">
								<li><a
									href="${pageContext.request.contextPath}/PolicySelOne.do?id=${map2.policyId}">${map2.policyTitle}</a>
									<span id="Date">${map2.policyTime}</span>
								</li>

							</logic:iterate>

							<!-- 
                       	<li><a href="glqxmx.jsp">1、列表数据风动 旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
                        <li><a href="#">1、列表数据风动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
                        <li><a href="#">1、列表数据风 动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1、列表数据风 动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1、列表数据风 动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
						 -->
						</ul>
					</div>

				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="footer">
		<ul>
			<li><a href="chamberDetial.jsp">商会介绍</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/NewSelect.do?newid=1">商会动态</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">会员单位</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">管理前线</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">会员随笔</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">家乡</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">老乡留言</a>
			</li>

			<li><a
				href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&str1=0&str2=6">图片展示</a>
			</li>
			<!-- 
	<li><a href="flgw.jsp">法律顾问</a></li>
	 -->
			<li><a href="lxwm.jsp">联系我们</a>
			</li>
		</ul>
		<hr />
		<p>
			版权所有：陕西商会 榆林分会&nbsp;&nbsp;&nbsp;&nbsp; <a href="yrzdmain.html">技术支持：上海悠得信息科技工作室</a>
		</p>
	</div>

</body>
</html>
