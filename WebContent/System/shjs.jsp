<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%
	String root = request.getContextPath();//equal to : /appname
	String appURL = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ root + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>家乡信息发布</title>
<link href="../layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%= root %>/js/ckeditor/ckeditor.js"></script>
</head>

<body>
	<div id="header"></div>
	<jsp:include page="SystemNav.jsp" flush="true" />
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">商会介绍</span>
		</div>
		<jsp:include page="SystemMenu.jsp" flush="true" />
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>商会介绍</h3>
					<div class="divMargen">
						<form id="form1" name="form1" method="post" action="${pageContext.request.contextPath}/OtherAdd.do?type=shjs">
							<table width="80%" class="display" width="100%" cellpadding="0" cellspacing="0" border="0">
								
								<tr>
									<td class="tableFontAlign">发稿人：</td>
									<td><input class="inputStyle" name="username" value="${vo.anAuthor }" /></td>
								</tr>
								<tr>
									<td class="tableFontAlign">商会介绍：</td>
									<td><textarea name="content" style="height: 250px; width:520px;" cols="60" rows="50">${vo.anConent }</textarea></td>
								</tr>
								<script type="text/javascript">
									//<![CDATA[
										CKEDITOR.replace( 'content',
											{
												fullPage : true,
												extraPlugins : 'docprops',
												language: 'zh-cn'
											});
									//]]>
								</script>
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
	<jsp:include page="SystemFooter.jsp" flush="true" />

</body>
</html>
