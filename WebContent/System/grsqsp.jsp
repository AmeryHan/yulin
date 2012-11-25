<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人审批</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="SystemNav.jsp" flush="true" />
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">个人审批</span>
		</div>
		<jsp:include page="SystemMenu.jsp" flush="true" />
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>个人审批</h3>
					<div id="ListWrapper">
						<ul>
							<table id="listNotice" class="display" width="100%" cellpadding="0" cellspacing="0" border="0">
								<thead>
									<tr>
										<th align="left">注册姓名</th>
										<th align="left">性别</th>
										<th align="left">电话</th>
										<!-- <th>现居地址</th> -->
										<th align="left">家乡</th>
										<th align="left">注册时间</th>
										<th align="left">状态</th>
										<th align="left">操作</th>
									</tr>
								</thead>
								<tbody>
									<logic:iterate id="map" collection="${requestScope.arr}">
										<tr class="gradeC">
											<c:choose>
												<c:when test="${fn:length(map.PName) > 10}"><td align="left" title="${map.PName}">&nbsp;<a href="${pageContext.request.contextPath}/PersonalOne.do?id=${map.pid}">${fn:substring(map.PName, 0, 10)}...</a></td></c:when>   
										    	<c:otherwise><td align="left">&nbsp;<a href="${pageContext.request.contextPath}/PersonalOne.do?id=${map.pid}">${map.PName}</a></td></c:otherwise>
										    </c:choose>
										    <td align="left">&nbsp;${map.PSex}</td>
										    <%-- <td>&nbsp;${map.PBirthTime}</td> --%>
										    <td align="left">&nbsp;${map.PPhone}</td>
										    <%-- <td>&nbsp;${map.PQQ}</td> --%>
										    <%-- <c:choose>
												<c:when test="${fn:length(map.PResidence) > 15}"><td title="${map.PResidence}">&nbsp;${fn:substring(map.PResidence, 0, 15)}...</td></c:when>   
										    	<c:otherwise><td>&nbsp;${map.PResidence}</td></c:otherwise>
										    </c:choose> --%>
										    <td align="left">&nbsp;${map.PHometown}</td>
										    <c:choose>
												<c:when test="${fn:length(map.pzctime) > 10}"><td align="left" title="${map.pzctime}">&nbsp;${fn:substring(map.pzctime, 0, 10)}</td></c:when>   
										    	<c:otherwise><td align="left">&nbsp;${map.pzctime}</td></c:otherwise>
										    </c:choose>
											<c:choose>
												<c:when test="${(map.PAuditState) == 2}"><td align="left">&nbsp;通过</td></c:when>
										    	<c:otherwise><td align="left">&nbsp;未审核</td></c:otherwise>
										    </c:choose>
											<td align="left">
												<a href="#" onclick="confirmation('${map.pid}');">删除</a>
												<c:choose>
													<c:when test="${(map.PAuditState) != 2}"><a href="#" onclick="window.location.href='${pageContext.request.contextPath}/PersonalUpd.do?tupdid=3&id=${map.pid}';">通过&nbsp;</a></c:when>
											    </c:choose>
											</td>
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
		$(document).ready(function() {$('#listNotice').dataTable();} );
		function confirmation(id) {
			if (confirm("您确定要删除这条记录吗？")){
				window.location.href="${pageContext.request.contextPath}/PersonalDel.do?tupdid=3&id="+id;
			}
		}
	</script>
	<jsp:include page="SystemFooter.jsp" flush="true" />

</body>

</html>
