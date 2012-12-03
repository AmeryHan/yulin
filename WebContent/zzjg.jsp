<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<%@ page import="java.util.*,com.yulinsh.vo.StructureVO;"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>组织机构</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>
<style>
</style>
<!-- onclick="javascript:window.close()"-->
<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true" />
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">组织机构</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3><span class="fontColor">导航</span></h3>
					<jsp:include page="indexNav.jsp" flush="true" />
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
			<!-- registerbtn       -->
			<jsp:include page="indexRegister.jsp" flush="true"/>
		</div>
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>组织机构</h3>
					<div id="ListWrapper">
							<table>
								<tr><td colspan="0" style="text-align: left">荣誉会长：&nbsp;</td></tr>
								<tr>
									<td>
										<%
											int a = 0;
											ArrayList arr = (ArrayList) request.getAttribute("arr1");
											for (int i = 0; i < arr.size(); i++) {
												StructureVO vo = (StructureVO) arr.get(i);
												if ("1".equals(vo.getSshzw())) {

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
									<td width=800><hr />
									</td>
								</tr>
								<tr>
									<td colspan="0" style="text-align: left">顾问：&nbsp;</td>
								</tr>
								<tr>
									<td>
										<%
											int d = 0;
											ArrayList arr3 = (ArrayList) request.getAttribute("arr1");
											StructureVO vo3 = null;
											for (int i = 0; i < arr3.size(); i++) {
												vo3 = (StructureVO) arr3.get(i);
												if ("4".equals(vo3.getSshzw())) {

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
									<td width=800><hr />
									</td>
								</tr>
								<tr>
									<td colspan="0" style="text-align: left">会长：&nbsp;</td>

								</tr>


								<tr>
									<td>
										<%
											int b = 0;
											ArrayList arr1 = (ArrayList) request.getAttribute("arr1");
											StructureVO vo1 = null;
											for (int i = 0; i < arr1.size(); i++) {
												vo1 = (StructureVO) arr1.get(i);
												if ("2".equals(vo1.getSshzw())) {

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
									<td width=800><hr />
									</td>
								</tr>
								<tr>
									<td colspan="0" style="text-align: left">执行会长：&nbsp;</td>
								</tr>
								<tr>
									<td>
										<%
											int e = 0;
											ArrayList arr4 = (ArrayList) request.getAttribute("arr1");
											StructureVO vo4 = null;
											for (int i = 0; i < arr4.size(); i++) {
												vo4 = (StructureVO) arr4.get(i);
												if ("5".equals(vo4.getSshzw())) {

													e++;
													if (e != 4) {
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
								<tr>
									<td width=800><hr />
									</td>
								</tr>
								<tr>
									<td colspan="0" style="text-align: left">常务副会长：&nbsp;</td>
								</tr>
								<tr>
									<td>
										<%
											int f = 0;
											ArrayList arr5 = (ArrayList) request.getAttribute("arr1");
											StructureVO vo5 = null;
											for (int i = 0; i < arr5.size(); i++) {
												vo5 = (StructureVO) arr5.get(i);
												if ("6".equals(vo5.getSshzw())) {

													f++;
													if (f != 4) {
										%> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo5.getId()%>"><%=vo5.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	} else {
 %> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo5.getId()%>"><%=vo5.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	if (f == 8) {
 					f = 0;
 				}
 			}
 %> <%
 	}
 	}
 %>
									</td>
								</tr>
								<tr>
									<td width=800><hr />
									</td>
								</tr>
								<tr>
									<td colspan="0" style="text-align: left">副会长：&nbsp;</td>
								</tr>


								<tr>
									<td>
										<%
											int c = 0;
											ArrayList arr2 = (ArrayList) request.getAttribute("arr1");
											StructureVO vo2 = null;
											for (int i = 0; i < arr2.size(); i++) {
												vo2 = (StructureVO) arr2.get(i);
												if ("3".equals(vo2.getSshzw())) {
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
									<td width=800><hr />
									</td>
								</tr>
								<tr>
									<td colspan="0" style="text-align: left">监事长：&nbsp;</td>
								</tr>
								<tr>
									<td>
										<%
											int m = 0;
											ArrayList arr7 = (ArrayList) request.getAttribute("arr1");
											StructureVO vo7 = null;
											for (int i = 0; i < arr7.size(); i++) {
												vo7 = (StructureVO) arr7.get(i);
												if ("8".equals(vo7.getSshzw())) {

													m++;
													if (m != 4) {
										%> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo7.getId()%>"><%=vo7.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	} else {
 %> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo7.getId()%>"><%=vo7.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	if (m == 8) {
 					m = 0;
 				}
 			}
 %> <%
 	}
 	}
 %>
									</td>
								</tr>
								<tr>
									<td width=800><hr />
									</td>
								</tr>
								<tr>
									<td colspan="0" style="text-align: left">监事：&nbsp;</td>
								</tr>
								<tr>
									<td>
										<%
											int n = 0;
											ArrayList arr8 = (ArrayList) request.getAttribute("arr1");
											StructureVO vo8 = null;
											for (int i = 0; i < arr8.size(); i++) {
												vo8 = (StructureVO) arr8.get(i);
												if ("9".equals(vo8.getSshzw())) {

													n++;
													if (n != 4) {
										%> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo8.getId()%>"><%=vo8.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	} else {
 %> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo8.getId()%>"><%=vo8.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	if (n == 8) {
 					n = 0;
 				}
 			}
 %> <%
 	}
 	}
 %>
									</td>
								</tr>
								<tr>
									<td width=800><hr />
									</td>
								</tr>
								<tr>
									<td colspan="0" style="text-align: left">秘书长：&nbsp;</td>
								</tr>
								<tr>
									<td>
										<%
											int g = 0;
											ArrayList arr6 = (ArrayList) request.getAttribute("arr1");
											StructureVO vo6 = null;
											for (int i = 0; i < arr6.size(); i++) {
												vo6 = (StructureVO) arr6.get(i);
												if ("7".equals(vo6.getSshzw())) {

													g++;
													if (g != 4) {
										%> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo6.getId()%>"><%=vo6.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	} else {
 %> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo6.getId()%>"><%=vo6.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	if (g == 8) {
 					g = 0;
 				}
 			}
 %> <%
 	}
 	}
 %>
									</td>
								</tr>
								<tr>
									<td width=800><hr />
									</td>
								</tr>
								<tr>
									<td colspan="0" style="text-align: left">副秘书长：&nbsp;</td>
								</tr>
								<tr>
									<td>
										<%
											int h = 0;
											ArrayList arr9 = (ArrayList) request.getAttribute("arr1");
											StructureVO vo9 = null;
											for (int i = 0; i < arr9.size(); i++) {
												vo9 = (StructureVO) arr9.get(i);
												if ("10".equals(vo9.getSshzw())) {

													h++;
													if (h != 4) {
										%> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo9.getId()%>"><%=vo9.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	} else {
 %> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%=vo9.getId()%>"><%=vo9.getSname()%></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
 	if (h == 8) {
 					h = 0;
 				}
 			}
 %> <%
 	}
 	}
 %>
									</td>
								</tr>
							</table>
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
