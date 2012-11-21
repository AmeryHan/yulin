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
<title>动态发布</title>
<link href="../layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%= root %>/js/ckeditor/ckeditor.js"></script>
</head>

<body>
<div id="header"></div>	
	<jsp:include page="SystemNav.jsp" flush="true"/>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">动态发布</span></div>
    <jsp:include page="SystemMenu.jsp" flush="true"/>
	   <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	<h3>动态发布</h3>
                	<div class="divMargen">
						<form id="form1" name="form1" method="post" action="${pageContext.request.contextPath}/NewsAdd.do">
							<table width="80%" class="display" width="100%" cellpadding="0" cellspacing="0" border="0">
								<tr>
									<td class="tableFontAlign">标题：</td>
									<td><input class="inputStyle"  name="newsTitle"/></td>
								</tr>
								<tr>
									<td class="tableFontAlign">发布人：</td>
									<td><input class="inputStyle"  name="newsAuthor"/></td>
								</tr>
								<tr>
									<td class="tableFontAlign">内容：</td>
									<td><textarea   name="newsContent"  style="height: 250px; width:520px;" cols="60" rows="50"></textarea></td>
								</tr>
								<script type="text/javascript">
									//<![CDATA[
										CKEDITOR.replace( 'newsContent',
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
<jsp:include page="SystemFooter.jsp" flush="true"/>

</body>
</html>
