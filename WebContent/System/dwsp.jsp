<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��ҵ����</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="SystemNav.jsp" flush="true" />
	<div id="mainContent">
		<div id="tips">
			��ǰλ�ã�<span class="fontColor">��ҵ����</span>
		</div>
		<jsp:include page="SystemMenu.jsp" flush="true" />
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>��ҵ����</h3>
					<div id="ListWrapper">
						<ul>
							<table id="listNotice" class="display" width="100%" cellpadding="0" cellspacing="0" border="0">
								<thead>
									<tr>
										<th align="left">��ҵ����</th>
										<th align="left">����</th>
										<th align="left">�Ա�</th>
										<th align="left">ְ��</th>
										<th align="left">�绰</th>
										<th align="left">ע��ʱ��</th>
										<th align="left">״̬</th>
										<th align="left">����</th>
									</tr>
								</thead>
								<tbody>
									<logic:iterate id="map" collection="${requestScope.arr}">
										<tr class="gradeC">
											<c:choose>
												<c:when test="${fn:length(map.unitName) > 10}"><td align="left" title="${map.unitName}">&nbsp;<a href="${pageContext.request.contextPath}/UnitSelectOne.do?utid=1&id=${map.unitID} ">${fn:substring(map.unitName, 0, 10)}...</a></td></c:when>   
										    	<c:otherwise><td align="left">&nbsp;<a href="${pageContext.request.contextPath}/UnitSelectOne.do?utid=1&id=${map.unitID} ">${map.unitName}</a></td></c:otherwise>
										    </c:choose>
										    <c:choose>
												<c:when test="${fn:length(map.pname) > 8}"><td align="left" title="${map.pname}">&nbsp;${fn:substring(map.pname, 0, 8)}...</td></c:when>   
										    	<c:otherwise><td align="left">&nbsp;${map.pname}</td></c:otherwise>
										    </c:choose>
											<td align="left">&nbsp;${map.psex}</td>
											<td align="left">&nbsp;${map.unitPost}</td>
											<td align="left">&nbsp;${map.unitPhone}</td>
											<c:choose>
												<c:when test="${fn:length(map.unittime) > 10}"><td align="left" title="${map.unittime}">&nbsp;${fn:substring(map.unittime, 0, 10)}</td></c:when>   
										    	<c:otherwise><td align="left">&nbsp;${map.unittime}</td></c:otherwise>
										    </c:choose>
											<c:choose>
												<c:when test="${(map.unitAuditState) == 2}"><td align="left">&nbsp;ͨ��</td></c:when>
										    	<c:otherwise><td align="left">&nbsp;δ���</td></c:otherwise>
										    </c:choose>
										    <td align="left">
										    	<a href="#" onclick="confirmation('${map.unitID}');">ɾ��</a>
										    	<c:choose>
													<c:when test="${(map.unitAuditState) != 2}"><a href="#" onclick="window.location.href='${pageContext.request.contextPath}/UnitUpd.do?id=${map.unitID}';">ͨ��&nbsp;</a></c:when>
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
		$(document).ready(function() {$('#listNotice').dataTable({
	        "aaSorting": [[ 5, "desc" ]]
	    });} );
		function confirmation(id) {
			if (confirm("��ȷ��Ҫɾ��������¼��")){
				window.location.href="${pageContext.request.contextPath}/UnitDel.do?id="+id;
			}
		}
	</script>
	<jsp:include page="SystemFooter.jsp" flush="true" />
</body>
</html>
