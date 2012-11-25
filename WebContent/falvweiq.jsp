<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>老乡留言</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">老乡留言</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3><span class="fontColor">导航</span></h3>
					<jsp:include page="indexNav.jsp" flush="true" />
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
			<!-- registerbtn       -->
			<jsp:include page="indexRegister.jsp" flush="true"/>
		</div>
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>老乡留言</h3>

					<div id="ListWrapper">
						<form id="lyname" method="get"
							action="${pageContext.request.contextPath}/LaoxAdd.do">
							<table>
								<tr>
									<td><textarea type="text" style="text-align: left;"
											name="laoxcontent" cols="60" rows="3">
					 </textarea></td>
								</tr>
								<tr>
									<td style="text-align: right;"><input type="submit"
										value="保存" align="right" /></td>

								</tr>
								<tr>
									<td><hr />
									</td>
								</tr>

								<logic:iterate id="map" collection="${requestScope.arr}">




									<tr>
										<td>&nbsp;&nbsp; ${map.laoxcontent}</td>
									</tr>
									<tr>
										<td>发布者：游客&nbsp;&nbsp;&nbsp;&nbsp; 时间：${map.laoxtime}</td>
									</tr>
									<tr>
										<td><hr />
										</td>
								</logic:iterate>


							</table>
						</form>
						<!--
				 	  <ul>
                       	<li><a href="lxlymx.jsp">1、列表数据风动 旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
                        <li><a href="#">1、列表数据风动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
                        <li><a href="#">1、列表数据风 动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1、列表数据风 动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1、列表数据风 动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
                        </ul>
						-->
					</div>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<jsp:include page="indexFooter.jsp" flush="true" />
</body>
</html>
