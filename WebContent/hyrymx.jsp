<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员信息</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	String str = request.getSession().getServletContext()
			.getRealPath("photosc");
	str += "\\";
	System.err.println(path + "=" + str + "...." + basePath);
%>
<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">会员信息</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>导航</h3>
					<jsp:include page="indexNav.jsp" flush="true" />
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
					<h3>会员信息</h3>
					<div id="ListWrapper">
						<logic:iterate id="map" collection="${requestScope.arr}">
						<table width="80%" class="display" width="100%" cellpadding="0" cellspacing="0" border="0"  style="font-size:14px; line-height:20px;">
							<tr>
								<td rowspan="6" style="width:160px;"><div align="center" style="margin:0px 10px; width:130px; height:130px; border:0px; float:left; ">
									<img style="width:130px;height:130px;" src="<%=basePath%>photosc/${map.ptoux }"/>
								</div></td>
								<td align="right" style="width:80px;height:20px;">姓名：</td>
								<td align="left">${map.PName}</td>
							</tr>
							<tr>
								<td align="right" style="width:80px;height:20px;">性别：</td>
								<td align="left">${map.PSex}</td>
							</tr>
							<tr>
								<td align="right" style="width:80px;height:20px;">出生日期：</td>
								<td align="left">${map.PBirthTime}</td>
							</tr>
							<tr>
								<td align="right" style="width:80px;height:20px;">联系方式：</td>
								<td align="left">${map.PPhone}</td>
							</tr>
							<tr>
								<td align="right" style="width:80px;height:20px;">家乡：</td>
								<td align="left">${map.PHometown}</td>
							</tr>
							<tr>
								<td align="right" style="width:80px;height:12px;"></td>
								<td align="left"></td>
							</tr>
							<tr>
								<td colspan="3">个人介绍：${map.pcontent }</td>
							</tr>
							<tr></tr>
						</table>
						</logic:iterate>
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
