<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��ҵ��Ա��Ϣ</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			��ǰλ�ã�<span class="fontColor">��ҵ��Ա��Ϣ</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>����</h3>
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
					<h3>��ҵ��Ա��Ϣ</h3>
					<div id="ListWrapper">
						<form id="lyname">
							<logic:iterate id="map" collection="${requestScope.arr}">
								<table width="80%" class="display" width="100%" cellpadding="0" cellspacing="0" border="0" style="font-size:14px; line-height:20px;">
									<tr>
										<td align="right" style="width:80px;">������</td>
										<td align="left">${map.pname}</td>
									</tr>
									<tr>
										<td align="right">�Ա�</td>
										<td align="left">${map.psex}</td>
									</tr>
									<tr>
										<td align="right">ְ��</td>
										<td align="left">${map.unitPost}</td>
									</tr>
									<tr>
										<td align="right">��ϵ��ʽ��</td>
										<td align="left">${map.unitPhone}</td>
									</tr>
									<tr>
										<td align="right">��˾���ƣ�</td>
										<td align="left">${map.unitName}</td>
									</tr>
									<tr>
										<td align="right">��˾��ַ��</td>
										<td align="left"><a href="${map.unitWebsite }">${map.unitWebsite }</a></td>
									</tr>
									<tr>
										<td align="right" colspan="2">��˾���ܣ�${map.unitContent}</td>
									</tr>
								</table>
							</logic:iterate>
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
