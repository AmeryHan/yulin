<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>���淢��</title>
<link href="../layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="SystemNav.jsp" flush="true" />
	<div id="mainContent">
		<div id="tips">
			��ǰλ�ã�<span class="fontColor">���淢��</span>
		</div>
		<jsp:include page="SystemMenu.jsp" flush="true" />
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>���淢��</h3>
					<div class="divMargen">
						<form id="form1" name="form1" method="post"
							action="${pageContext.request.contextPath}/AnAdd.do">
							<table width="80%">
								<tr>
									<td class="tableFontAlign">���⣺</td>
									<td><input class="inputStyle" name="anTitle" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">�����ˣ�</td>
									<td><input class="inputStyle" name="anAuthor" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">���ݣ�</td>
									<td><textarea name="anConent" style="height: 250px;"
											cols="60" rows="50"></textarea></td>
								</tr>
								<tr>
									<td></td>
									<td align="right"><input class="canselBtn" type="submit" value="����"/>
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
	<jsp:include page="SystemFooter.jsp" flush="true" />

</body>
</html>
