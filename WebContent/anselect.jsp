<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ page import="java.util.*,com.yulinsh.vo.StructureVO;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="index.css" rel="stylesheet" type="text/css" />
<title>��ҳ</title>
</head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	String str = request.getSession().getServletContext()
			.getRealPath("photosc");
	str += "\\";
	System.err.println(path + "=" + str);
	String str1 = "";
%>
<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true" />
	<div id="container">
		<div id="tips">
			��ǰλ�ã�<span class="fontColor">��ҳ</span>
		</div>
		<div id="lineWrapper">
			<div id="noticeWrapper">
				<div class="sharp color1">
					<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
					<div class="content">
						<h3>
							<span class="fontColor">����</span>
						</h3>
						<div id="notice">
							<span class="more"><a href="${pageContext.request.contextPath}/AnSelect2.do?anid=1">����</a></span>
							<table width="100%" cellpadding="2" cellspacing="3" border="0">
								<logic:iterate id="map" collection="${requestScope.arr}">
									<tr id="r1">
										<c:choose>
											<c:when test="${fn:length(map.anTitle) > 20}"><td title="${map.anTitle}">&nbsp;<a href="${pageContext.request.contextPath}/AnSelOne.do?id=${map.anID}"><span>${fn:substring(map.anTitle, 0, 20)}...</span></a></td></c:when>   
									    	<c:otherwise><td>&nbsp;<a href="${pageContext.request.contextPath}/AnSelOne.do?id=${map.anID}">${map.anTitle}</a></td></c:otherwise>
									    </c:choose>
									    <td align="right"><span>${map.anTime}</span></td>
									</tr>
								</logic:iterate>
							</table>
						</div>
					</div>
					<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
				</div>
			</div>
			<!--middle-->
			<div id="MidWrapper">
				<div class="sharp color1">
					<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
					<div class="content">
						<h3>
							<span class="fontColor">�̻ᶯ̬</span>
						</h3>
						<div id="notice">
							<span class="more"><a href="${pageContext.request.contextPath}/NewSelect.do?newid=1">����</a></span>
							<table width="100%" cellpadding="2" cellspacing="3" border="0">
								<logic:iterate id="map1" collection="${requestScope.arr1}">
									<tr id="r1">
										<c:choose>
											<c:when test="${fn:length(map1.newsTitle) > 35}"><td align="left" title="${map1.newsTitle}">&nbsp;<a href="${pageContext.request.contextPath}/NewSelOne.do?newid=${map1.newsId }"><span>${fn:substring(map1.newsTitle, 0, 35)}...</span></a></td></c:when>   
									    	<c:otherwise><td align="left">&nbsp;<a href="${pageContext.request.contextPath}/NewSelOne.do?newid=${map1.newsId }">${map1.newsTitle}</a></td></c:otherwise>
									    </c:choose>
									    <td align="right"><span>${map1.newsTime}</span></td>
									</tr>
								</logic:iterate>
							</table>
						</div>
					</div>
					<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
				</div>
			</div>
			<!--right-->
			<div id="noticeWrapper">
				<div class="sharp color1">
					<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
					<div class="content">
						<h3>
							<span class="fontColor">��ҵ��Ա</span>
						</h3>
						<div id="notice">
							<span class="more"><a href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">����</a></span>
							<table width="100%" cellpadding="2" cellspacing="3" border="0">
								<logic:iterate id="map6" collection="${requestScope.arr6}">
									<tr id="r1">
										<c:choose>
											<c:when test="${fn:length(map6.unitName) > 15}"><td align="left" title="${map6.unitName}">&nbsp;
											<a href="${pageContext.request.contextPath}/UnitSelectOne.do?utid=1&id=${map6.unitID } "><span>${fn:substring(map6.unitName, 0, 15)}...</span></a></td></c:when>   
									    	<c:otherwise><td align="left">&nbsp;<a href="${pageContext.request.contextPath}/UnitSelectOne.do?utid=1&id=${map6.unitID } ">${map6.unitName}</a></td></c:otherwise>
									    </c:choose>
									    <td><span>${map6.pname}</span></td>
									    <td align="right"><span>${map6.unitPost}</span></td>
									    <%-- <logic:iterate id="map6" collection="${requestScope.arr6}">
											<td>����:${map6.pname }</br> �Ա�:${map6.psex } </br>
												��˾����:${map6.unitName }</br> ְ��:${map6.unitPost }</br> ����:
												${map6.unitContent }</td>
										</logic:iterate> --%>
									</tr>
								</logic:iterate>
							</table>
						</div>
					</div>
					<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
				</div>
			</div>
			<div style="clear: both"></div>
		</div>
		<div style="clear: both"></div>
		<div id="lineWrapper">
			<div id="noticeWrapper">
				<div class="sharp color1">
					<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
					<div class="content">
						<h3>
							<span class="fontColor">ע��</span>
						</h3>
						<div id="notice">
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
			<!--middle-->
			<div id="MidWrapper">
				<div class="sharp color1">
					<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
					<div class="content">
						<h3>
							<span class="fontColor">����ǰ��</span>
						</h3>
						<div id="notice">
							<span class="more"> <a href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">����</a></span>
							<table width="100%" cellpadding="2" cellspacing="3" border="0">
								<logic:iterate id="map2" collection="${requestScope.arr2}">
									<tr id="r1">
										<c:choose>
											<c:when test="${fn:length(map2.policyTitle) > 35}"><td align="left" title="${map2.policyTitle}">&nbsp;<a href="${pageContext.request.contextPath}/PolicySelOne.do?id=${map2.policyId}">${fn:substring(map2.policyTitle, 0, 35)}...</a></td></c:when>   
									    	<c:otherwise><td align="left">&nbsp;<a href="${pageContext.request.contextPath}/PolicySelOne.do?id=${map2.policyId}">${map2.policyTitle}</a></td></c:otherwise>
									    </c:choose>
									    <td align="right"><span>${map2.policyTime}</span></td>
									</tr>
								</logic:iterate>
							</table>
						</div>
					</div>
					<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
				</div>
			</div>
			<!--right-->
			<div id="noticeWrapper">
				<div class="sharp color1">
					<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
					<div class="content">
						<h3>
							<span class="fontColor">���˻�Ա</span>
						</h3>
						<div id="notice">
							<span class="more"><a href="${pageContext.request.contextPath}/PersonalSelect.do?plid=1">����</a></span>
							<table width="100%" cellpadding="2" cellspacing="3" border="0">
								<logic:iterate id="map7" collection="${requestScope.arr7}">
									<tr id="r1">
										<c:choose>
											<c:when test="${fn:length(map7.PName) > 8}"><td align="left" title="${map7.PName}">&nbsp;
											<a href="${pageContext.request.contextPath}/PersonalOne.do?id=${map7.pid}"><span>${fn:substring(map7.PName, 0, 8)}...</span></a></td></c:when>   
									    	<c:otherwise><td align="left">&nbsp;<a href="${pageContext.request.contextPath}/PersonalOne.do?id=${map7.pid}">${map7.PName}</a></td></c:otherwise>
									    </c:choose>
									    <c:choose>
											<c:when test="${fn:length(map7.PHometown) > 15}"><td align="left" title="${map7.PHometown}">&nbsp;<span>${fn:substring(map7.PHometown, 0, 15)}...</span></td></c:when>   
									    	<c:otherwise><td align="left">&nbsp;${map7.PHometown}</td></c:otherwise>
									    </c:choose>
									    <td align="right"><span>${map7.PSex}</span></td>
									</tr>
								</logic:iterate>
							</table>
						</div>
					</div>
					<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
				</div>
			</div>
			<div style="clear: both"></div>
		</div>
		<div style="clear: both"></div>
		<!--bottom-->
		<div id="lineWrapper">
			<div id="OrgInsWrapper">
				<div class="sharp color1">
					<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
					<div class="content">
						<h3>
							<span class="fontColor">��֯����</span>
						</h3>
						<div id="OrgIns1">
							<span class="more"><a
								href="${pageContext.request.contextPath}/StructureXS.do">����</a>
							</span>
							<table>
								<tr><td colspan="0" style="text-align: left">�����᳤��&nbsp;</td></tr>
								<tr>
									<td>
										<%
											int a = 0;
											ArrayList arr = (ArrayList) request.getAttribute("arr8");
											for (int i = 0; i < arr.size(); i++) {
												StructureVO vo = (StructureVO) arr.get(i);
												if (vo.getSshzw().equals("1")) {

													a++;
													if (a != 4) {
										%> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo.getId()%>"><%=vo.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	} else {
 %> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo.getId()%>"><%=vo.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	if (a == 8) {
 					a = 0;
 				}
 			}
 %> <%
 	}
 	}
 %>
									</td>
								</tr>

								<tr>
									<td colspan="0" style="text-align: left">�᳤��&nbsp;</td>

								</tr>


								<tr>
									<td>
										<%
											int b = 0;
											ArrayList arr1 = (ArrayList) request.getAttribute("arr8");
											StructureVO vo1 = null;
											for (int i = 0; i < arr1.size(); i++) {
												vo1 = (StructureVO) arr1.get(i);
												if (vo1.getSshzw().equals("2")) {

													b++;
													if (b != 4) {
										%> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo1.getId()%>"><%=vo1.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	} else {
 %> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo1.getId()%>"><%=vo1.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	if (b == 8) {
 					b = 0;
 				}
 			}
 %> <%
 	}
 	}
 %>
									</td>
								</tr>


								<tr>
									<td colspan="0" style="text-align: left">���᳤��&nbsp;</td>

								</tr>


								<tr>
									<td>
										<%
											int c = 0;
											ArrayList arr2 = (ArrayList) request.getAttribute("arr8");
											StructureVO vo2 = null;
											for (int i = 0; i < arr2.size(); i++) {
												vo2 = (StructureVO) arr2.get(i);
												if (vo2.getSshzw().equals("3")) {

													c++;
													if (c != 4) {
										%> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo2.getId()%>"><%=vo2.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	} else {
 %> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo2.getId()%>"><%=vo2.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	if (c == 8) {
 					c = 0;
 				}
 			}
 %> <%
 	}
 	}
 %>
									</td>
								</tr>

								<tr>
									<td colspan="0" style="text-align: left">���鳤��&nbsp;</td>

								</tr>


								<tr>
									<td>
										<%
											int d = 0;
											ArrayList arr3 = (ArrayList) request.getAttribute("arr8");
											StructureVO vo3 = null;
											for (int i = 0; i < arr3.size(); i++) {
												vo3 = (StructureVO) arr3.get(i);
												if (vo3.getSshzw().equals("4")) {

													d++;
													if (d != 4) {
										%> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo3.getId()%>"><%=vo3.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	} else {
 %> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo3.getId()%>"><%=vo3.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	if (d == 8) {
 					d = 0;
 				}
 			}
 %> <%
 	}
 	}
 %>
									</td>
								</tr>

								<tr>
									<td colspan="0" style="text-align: left">�����鳤��&nbsp;</td>

								</tr>


								<tr>
									<td>
										<%
											int e = 0;
											ArrayList arr4 = (ArrayList) request.getAttribute("arr8");
											StructureVO vo4 = null;
											for (int i = 0; i < arr4.size(); i++) {
												vo4 = (StructureVO) arr4.get(i);
												if (vo4.getSshzw().equals("5")) {

													d++;
													if (d != 4) {
										%> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo4.getId()%>"><%=vo4.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	} else {
 %> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo4.getId()%>"><%=vo4.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	if (e == 8) {
 					e = 0;
 				}
 			}
 %> <%
 	}
 	}
 %>
									</td>
								</tr>

								</ul>
							</table>


						</div>
					</div>
					<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
				</div>
			</div>
			<!--middle-->
			<div id="SbWrapper">
				<div class="sharp color1">
					<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
					<div class="content">
						<h3>
							<span class="fontColor">��Ա���</span>
						</h3>
						<div id="OrgIns2">
							<span class="more"> <a href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">����</a></span>
							<table width="100%" cellpadding="2" cellspacing="3" border="0">
								<logic:iterate id="map4" collection="${requestScope.arr4}">
									<tr id="r1">
										<c:choose>
											<c:when test="${fn:length(map4.membertitle) > 35}"><td align="left" title="${map4.membertitle}">&nbsp;<a href="${pageContext.request.contextPath}/MemberOne.do?id=${map4.memberid}"><span>${fn:substring(map4.membertitle, 0, 35)}...</span></a></td></c:when>   
									    	<c:otherwise><td align="left">&nbsp;<a href="${pageContext.request.contextPath}/MemberOne.do?id=${map4.memberid}">${map4.membertitle}</a></td></c:otherwise>
									    </c:choose>
									    <td align="right"><span>${map4.membertime}</span></td>
									</tr>
								</logic:iterate>
							</table>
						</div>
						<h3>
							<span class="fontColor">������</span>
						</h3>
						<div id="OrgIns2">
							<span class="more"><a href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">����</a></span>
							<table width="100%" cellpadding="2" cellspacing="3" border="0">
								<logic:iterate id="map3" collection="${requestScope.arr3}">
									<tr id="r1">
										<c:choose>
											<c:when test="${fn:length(map3.hometitle) > 35}"><td align="left" title="${map3.hometitle}">&nbsp;<a href="${pageContext.request.contextPath}/HometownSelectOne.do?id=${map3.homeid}"><span>${fn:substring(map3.hometitle, 0, 35)}...</span></a></td></c:when>   
									    	<c:otherwise><td align="left">&nbsp;<a href="${pageContext.request.contextPath}/HometownSelectOne.do?id=${map3.homeid}">${map3.hometitle}</a></td></c:otherwise>
									    </c:choose>
									    <td align="right"><span>${map3.hometime}</span></td>
									</tr>
								</logic:iterate>
							</table>
						</div>
					</div>
					<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
				</div>
			</div>
			<div id="OrgInsWrapper">
				<div class="sharp color1">
					<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
					<div class="content">
						<h3>
							<span class="fontColor">��������</span>
						</h3>
						<div id="OrgIns1">
							<span class="more"><a
								href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">����</a>
							</span>
							<ul>
								<table>
									<logic:iterate id="map5" collection="${requestScope.arr5}">




										<tr id="r1">
											<td>&nbsp;&nbsp;${map5.laoxcontent}</td>
										</tr>
										<tr>
											<td>&nbsp;&nbsp;${map5.laoxtime}</td>
										</tr>
										<tr>
											<td><hr />
											</td>
									</logic:iterate>
									<!-- 
		<tr id="r1">
			<td style="text-align: left" id="t2"><a href="glqxmx.html">1���Ϻ��ٰ촦���̻���</a></td>
			<td style="text-align: right">&nbsp; &nbsp; &nbsp; &nbsp; <span
				id="Date">2012/2/4</span></td>
		</tr>
		<tr id="r1">
			<td style="text-align: left" id="t2"><a href="glqxmx.html">2���Ϻ��ٰ촦���̻���</a></td>
			<td style="text-align: right">&nbsp; &nbsp; &nbsp; &nbsp; <span
				id="Date">2012/2/4</span></td>
		</tr>
		<tr id="r1">
			<td style="text-align: left" id="t2"><a href="glqxmx.html">3���Ϻ��ٰ촦���̻���</a></td>
			<td style="text-align: right">&nbsp; &nbsp; &nbsp; &nbsp; <span
				id="Date">2r112/2/4</span></td>
		</tr>
		<tr id="r1">
			<td style="text-align: left" id="t2"><a href="glqxmx.html">4���Ϻ��ٰ촦���̻���</a></td>
			<td style="text-align: right">&nbsp; &nbsp; &nbsp; &nbsp; <span
				id="Date">2012/2/4</span></td>
		</tr>
		<tr id="r1">
			<td style="text-align: left" id="t2"><a href="glqxmx.html">5���Ϻ��ٰ촦���̻���</a></td>
			<td style="text-align: right">&nbsp; &nbsp; &nbsp; &nbsp; <span
				id="Date">2012/2/4</span></td>
		</tr>
		<tr id="r1">
			<td style="text-align: left" id="t2"><a href="glqxmx.html">5���Ϻ��ٰ촦���̻���</a></td>
			<td style="text-align: right">&nbsp; &nbsp; &nbsp; &nbsp; <span
				id="Date">2r112/2/4</span></td>
		</tr>
 -->

								</table>


								<!--
                            <li><a href="lxlymx.html">1���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">2���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">3���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">4���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">5���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
						
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                      	-->

							</ul>
						</div>
					</div>
					<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
				</div>
			</div>
			<div style="clear: both"></div>
		</div>
	</div>
	<jsp:include page="indexFooter.jsp" flush="true" />
</body>
</html>
