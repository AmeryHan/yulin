<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
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
							<span class="more"><a
								href="${pageContext.request.contextPath}/AnSelect2.do?anid=1">����</a>
							</span>
							<ul>
								<table>
									<logic:iterate id="map" collection="${requestScope.arr}">

										<tr id="r1">
											<td id="tt" style="text-align: left"><a
												href="${pageContext.request.contextPath}/AnSelOne.do?id=${map.anID}">${map.anTitle}
											</a>
											</td>
											<td style="text-align: right">&nbsp; &nbsp; &nbsp;
												&nbsp; <span id="Date">${map.anTime}</span>
											</td>
										</tr>
									</logic:iterate>
									<!-- 
				<tr id="r1">
				<td  id="tt" style="text-align:left"><a href="ggmx.html">����һ </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
					<tr id="r1">
				<td style="text-align:left"><a href="ggmx.html">8���ٿ��������</a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
			 -->
								</table>
							</ul>
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
							<span class="more"><a
								href="${pageContext.request.contextPath}/NewSelect.do?newid=1">����</a>
							</span>
							<ul>
								<table>
									<logic:iterate id="map1" collection="${requestScope.arr1}">
										<tr id="r1">
											<td id="t1" style="text-align: left">&nbsp;<a
												href="${pageContext.request.contextPath}/NewSelOne.do?newid=${map1.newsId }">${map1.newsTitle}</a>
											</td>
											<td style="text-align: right">&nbsp;${map1.newsTime}</td>
										</tr>
									</logic:iterate>
									<!-- 
				<tr id="r1">
			 
				<td  id="t1" style="text-align:left"><a href="shdtmx.html">1���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr id="r1">
				<td  id="t1" style="text-align:left"><a href="shdtmx.html">2���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
  -->
								</table>


							</ul>
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
							<span class="more"><a
								href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">����</a>
							</span>
							<div id="personInfo">
								<table>
									<tr>
										<logic:iterate id="map6" collection="${requestScope.arr6}">
											<td>����:${map6.pname }</br> �Ա�:${map6.psex } </br>
												��˾����:${map6.unitName }</br> ְ��:${map6.unitPost }</br> ����:
												${map6.unitContent }</td>
										</logic:iterate>
									</tr>

								</table>
							</div>
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
							<span class="more"> <a
								href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">����</a>
							</span>
							<ul>
								<table>
									<logic:iterate id="map2" collection="${requestScope.arr2}">


										<tr id="r1">
											<td style="text-align: left" id="t1"><a
												href="${pageContext.request.contextPath}/PolicySelOne.do?id=${map2.policyId}">${map2.policyTitle}</a>
											</td>
											<td style="text-align: right">&nbsp; &nbsp; &nbsp;
												&nbsp; <span id="Date">${map2.policyTime}</span>
											</td>


										</tr>
									</logic:iterate>
									<!-- 
		<tr id="r1">
			<td style="text-align: left" id="t1"><a href="glqxmx.html">2���Ϻ��ٰ촦���̻���</a></td>
			<td style="text-align: right">&nbsp; &nbsp; &nbsp; &nbsp; <span
				id="Date">2012/2/4</span></td>
		</tr>
 -->
								</table>
								<!--
                            <li><a href="#">2���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">3���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">4���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">5���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
							-->
							</ul>
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
							<span class="more"><a
								href="${pageContext.request.contextPath}/PersonalSelect.do?plid=1">����</a>
							</span>
							<div id="personInfo">
								<table>
									<tr>
										<logic:iterate id="map7" collection="${requestScope.arr7}">
											<td><img src="<%=str%>${map7.ptoux }" width="80"
												height="100" />

												<td>&nbsp;&nbsp;&nbsp;����:${map7.PName }</br>
													&nbsp;&nbsp;&nbsp;�Ա�:${map7.PSex } </br> &nbsp;&nbsp;&nbsp;����:

													&nbsp;&nbsp;${map7.pcontent }</td>
										</logic:iterate>


									</tr>

								</table>
							</div>
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

								<tr>
									<td colspan="0" style="text-align: left">�����᳤��&nbsp;</td>

								</tr>


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
							<span class="more"> <a
								href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">����</a>
							</span>

							<ul>
								<table>
									<logic:iterate id="map4" collection="${requestScope.arr4}">



										<tr>

											<td id="t1" style="text-align: left"><a
												href="${pageContext.request.contextPath}/MemberOne.do?id=${map4.memberid}">
													${map4.membertitle} </a>
											</td>
											<td style="text-align: right">&nbsp; &nbsp; &nbsp;
												&nbsp; <span id="Date">${map4.membertime}</span>
											</td>

										</tr>
									</logic:iterate>


								</table>

							</ul>
						</div>
						<h3>
							<span class="fontColor">����</span>
						</h3>
						<div id="OrgIns2">
							<span class="more"><a
								href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">����</a>
							</span>
							<ul>
								<table>
									<logic:iterate id="map3" collection="${requestScope.arr3}">


										<tr id="0">

											<td id="t1" style="text-align: left"><a
												href="${pageContext.request.contextPath}/HometownSelectOne.do?id=${map3.homeid}">${map3.hometitle}
											</a>
											</td>
											<td style="text-align: right">&nbsp; &nbsp; &nbsp;
												&nbsp; <span id="Date">${map3.hometitle}</span>
											</td>

										</tr>
									</logic:iterate>



								</table>
							</ul>
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
