<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��֯��Ա��Ϣ</title>
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
			��ǰλ�ã�<span class="fontColor">��֯��Ա��Ϣ</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3><span class="fontColor">����</span></h3>
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
					<h3>��֯��Ա��Ϣ</h3>

					<div id="ListWrapper">
						<form id="lyname">
							<table>

									<tr>
										<td rowspan="5" style="text-align: center">&nbsp; <img
											src="<%=basePath %>photosc/${map.stoux }" style="width:110px;height:120px;"/></td>
										<td colspan="2">&nbsp;������${map.sname}</td>

									</tr>
									<tr>
										<td colspan="2">&nbsp;�Ա�${map.ssex}</td>

									</tr>
									<tr>
										<td colspan="2">&nbsp;�̻�ְ��
										<c:choose>
												<c:when test="${map.sshzw eq 1}">�����᳤</c:when>
												<c:when test="${map.sshzw eq 4}">����</c:when>
												<c:when test="${map.sshzw eq 2}">�᳤</c:when>
												<c:when test="${map.sshzw eq 5}">ִ�л᳤</c:when>
												<c:when test="${map.sshzw eq 6}">���񸱻᳤</c:when>
												<c:when test="${map.sshzw eq 3}">���᳤</c:when>
												<c:when test="${map.sshzw eq 8}">���³�</c:when>
												<c:when test="${map.sshzw eq 9}">����</c:when>
												<c:when test="${map.sshzw eq 7}">���鳤</c:when>
										    	<c:otherwise>�����鳤</c:otherwise>
										    </c:choose></td>

									</tr>
							</table>

							<table>
								<tr>
									<td colspan="0">&nbsp;���˽��ܣ�</td>

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
