<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>组织人员信息</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String str= request.getSession().getServletContext().getRealPath("photosc"); 
str+="\\";
System.err.println(path+"="+str);
%>
<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true" />
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">组织人员信息</span>
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
					<h3>组织人员信息</h3>

					<div id="ListWrapper">
						<form id="lyname">
							<table>

									<tr>
										<td rowspan="5" style="text-align: center">&nbsp; <img
											src="<%=basePath %>photosc/${map.stoux }" style="width:110px;height:120px;"/></td>
										<td colspan="2">&nbsp;姓名：${map.sname}</td>

									</tr>
									<tr>
										<td colspan="2">&nbsp;性别：${map.ssex}</td>

									</tr>
									<tr>
										<td colspan="2">&nbsp;商会职务：
										<c:choose>
												<c:when test="${map.sshzw eq 1}">名誉会长</c:when>
												<c:when test="${map.sshzw eq 4}">顾问</c:when>
												<c:when test="${map.sshzw eq 2}">会长</c:when>
												<c:when test="${map.sshzw eq 5}">执行会长</c:when>
												<c:when test="${map.sshzw eq 6}">常务副会长</c:when>
												<c:when test="${map.sshzw eq 3}">副会长</c:when>
												<c:when test="${map.sshzw eq 8}">监事长</c:when>
												<c:when test="${map.sshzw eq 9}">监事</c:when>
												<c:when test="${map.sshzw eq 7}">秘书长</c:when>
										    	<c:otherwise>副秘书长</c:otherwise>
										    </c:choose></td>

									</tr>
							</table>

							<table>
								<tr>
									<td colspan="0">&nbsp;个人介绍：</td>

								</tr>
								<tr>
									<td colspan="0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${map.sjs }
									</td>
								</tr>
							</table>
						</form>

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
