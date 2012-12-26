<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人员列表</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
	<jsp:include page="SystemNav.jsp" flush="true"/>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">人员列表</span></div>
    <jsp:include page="SystemMenu.jsp" flush="true"/>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                   	<h3>人员列表</h3>
                   	<div id="ListWrapper">
						<ul>
							<table id="listNotice" class="display" width="100%" cellpadding="0" cellspacing="0" border="0">
								<thead>
									<tr>
										<th align="left">姓名</th>
				                        <th align="left">性别</th>
				                        <th align="left">商会职务</th>
										<th align="left">操作</th>
									</tr>
								</thead>
								<tbody>
									<logic:iterate id="map" collection="${requestScope.arr1}">
										<tr class="gradeC">
											<c:choose>
												<c:when test="${fn:length(map.sname) > 10}"><td align="left" title="${map.sname}">&nbsp;<a href="${pageContext.request.contextPath}/StructureShow.do?id=${map.id}">${fn:substring(map.sname, 0, 10)}...</a></td></c:when>   
										    	<c:otherwise><td>&nbsp;<a href="${pageContext.request.contextPath}/StructureShow.do?id=${map.id}">${map.sname}</a></td></c:otherwise>
										    </c:choose>
										    <td align="left">&nbsp;${map.ssex}</td>
										    <td align="left">&nbsp;
										    <c:choose>
												<c:when test="${map.sshzw eq 1}">名誉会长</c:when>
												<c:when test="${map.sshzw eq 4}">顾问</c:when>
												<c:when test="${map.sshzw eq 2}">会长</c:when>
												<c:when test="${map.sshzw eq 5}">执行会长</c:when>
												<c:when test="${map.sshzw eq 6}">常务副会长</c:when>
												<c:when test="${map.sshzw eq 3}">副会长</c:when>
												<c:when test="${map.sshzw eq 8}">监事长</c:when>
												<c:when test="${map.sshzw eq 9}">监事</c:when>
												<c:when test="${map.sshzw eq 7}">秘书长</c:when>
										    	<c:otherwise>副秘书长</c:otherwise>
										    </c:choose></td>
											<td align="left">
											<a href="${pageContext.request.contextPath}/StructureShow.do?id=${map.id}&type=houtai&xiugai=1">修改</a>&nbsp;
											<a href="${pageContext.request.contextPath}/StructureShow.do?id=${map.id}&type=tupian">替换头像</a>&nbsp;
											<a href="#" onclick="confirmation('${map.id}');">删除</a></td>
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
		        "aaSorting": [[ 0, "desc" ]]
		    });} );
			function confirmation(id) {
				if (confirm("您确定要删除这条记录吗？")){
					window.location.href="${pageContext.request.contextPath}/StructureDel.do?tupdid=3&id="+id;
				}
			}
		</script>
<jsp:include page="SystemFooter.jsp" flush="true"/>

</body>

</html>
