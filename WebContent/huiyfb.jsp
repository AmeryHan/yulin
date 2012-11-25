<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员随笔信息发布</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">会员随笔信息发布</span>
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

			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<div id="registerbtn">
						<input type="button" value="" class="personbtn"
							onclick="window.location.href='gerensq.jsp'" /> <input
							type="button" value=""
							onclick="window.location.href='danwsq.jsp'" class="companybtn" />
						<input type="button" value=""
							onclick="window.location.href='lxwm.jsp'" class="linkbtn" />
					</div>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>

		</div>
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>会员随笔信息发布</h3>
					<div class="divMargen">
						<form id="form1" name="form1" method="post"
							action="${pageContext.request.contextPath}/MemberAdd.do">
							<table width="80%" class="display" width="100%" cellpadding="0" cellspacing="0" border="0">
								<tr>
									<td class="tableFontAlign">标题：</td>
									<td><input class="inputStyle" name="membertitle" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">发布人：</td>
									<td><input class="inputStyle" name="username" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">内容：</td>
									<td><textarea name="membercontent" style="height: 250px; width:520px;"
											cols="60" rows="60"></textarea></td>
								</tr>
								<tr>
									<td></td>
									<td align="right"><input class="canselBtn" type="submit" value="发布"/>
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
