<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�����б�</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			��ǰλ�ã�<span class="fontColor">�����б�</span>
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

					<h3>�����б�</h3>
					<div id="ListWrapper">
						<ul>

							<table>
								<logic:iterate id="map1" collection="${requestScope.arr}">
									<tr id="r1">
										<td id="t1" style="text-align: left">&nbsp; <a
											href="${pageContext.request.contextPath}/AnSelOne.do?id=${map1.anID}">${map1.anTitle}
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a>
										</td>
										<td style="text-align: right">&nbsp;${map1.anTime}</td>

									</tr>
								</logic:iterate>
							</table>
							<!-- 
                       	<li><a href="shdtmx.jsp">1���б����ݷ綯 ������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
                        <li><a href="#">1���б����ݷ綯������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
                        <li><a href="#">1���б����ݷ� ��������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1���б����ݷ� ��������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1���б����ݷ� ��������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
						 -->
						</ul>
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
