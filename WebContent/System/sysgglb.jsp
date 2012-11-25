<%@ page language="java" pageEncoding="GBK" isELIgnored="false" contentType="text/html; charset=GBK"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>公告列表</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="SystemNav.jsp" flush="true" />
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">公告列表</span>
		</div>
		<jsp:include page="SystemMenu.jsp" flush="true" />
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>公告列表</h3>
					<div id="ListWrapper">
						<ul>
							<table id="listNotice" class="display" width="100%" cellpadding="0" cellspacing="0" border="0">
								<thead>
									<tr>
										<th align="left">标题</th>
										<th align="left">发布人</th>
										<th align="left">发布时间</th>
										<th align="left">操作</th>
									</tr>
								</thead>
								<tbody>
									<logic:iterate id="map1" collection="${requestScope.arr}">
										<tr class="gradeC">
											<c:choose>
												<c:when test="${fn:length(map1.anTitle) > 10}"><td align="left" title="${map1.anTitle}">&nbsp;<a href="${pageContext.request.contextPath}/AnSelOne.do?id=${map1.anID}">${fn:substring(map1.anTitle, 0, 10)}...</a></td></c:when>   
										    	<c:otherwise><td align="left">&nbsp;<a href="${pageContext.request.contextPath}/AnSelOne.do?id=${map1.anID}">${map1.anTitle}</a></td></c:otherwise>
										    </c:choose>
										    <c:choose>
												<c:when test="${fn:length(map1.anAuthor) > 15}"><td align="left" title="${map1.anAuthor}">&nbsp;${fn:substring(map1.anAuthor, 0, 15)}...</td></c:when>   
										    	<c:otherwise><td align="left">&nbsp;${map1.anAuthor}</td></c:otherwise>
										    </c:choose>
											<td align="left">&nbsp;${map1.anTime}</td>
											<td align="left"><a href="#" onclick="confirmation('${map1.anID}');">删除</a></td>
										</tr>
									</logic:iterate>
								</tbody>
							</table>
						</ul>
					</div>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<script type="text/javascript" charset="GBK">
			$(document).ready(function() {$('#listNotice').dataTable({
		        "aaSorting": [[ 2, "desc" ]]
		    });} );
			function confirmation(id) {
				if (confirm("您确定要删除这条记录吗？")){
					window.location.href="${pageContext.request.contextPath}/AnDel.do?id="+id;
				}
			}
		</script>
	<jsp:include page="SystemFooter.jsp" flush="true" />

</body>
</html>
