<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��Ա�����Ϣ����</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			��ǰλ�ã�<span class="fontColor">��Ա�����Ϣ����</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>����</h3>
					<jsp:include page="indexNav.jsp" flush="true" />
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>

			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<div id="registerbtn">
						<input type="button" value="" class="personbtn"
							onclick="window.location.href='gerensq.jsp'" /> <input
							type="button" value=""
							onclick="window.location.href='danwsq.jsp'" class="companybtn" />
						<input type="button" value=""
							onclick="window.location.href='lxwm.jsp'" class="linkbtn" />
					</div>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>

		</div>
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>��Ա�����Ϣ����</h3>
					<p>
						<form id="form1" name="form1" method="post"
							action="${pageContext.request.contextPath}/MemberAdd.do">
							<table width="80%">

								<tr>
									<td>&nbsp;&nbsp;&nbsp;���⣺</td>
									<td><input class="inputStyle" name="membertitle" />
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;�����ˣ�</td>
									<td><input class="inputStyle" name="username" />
									</td>
								</tr>

								<!-- 
					   <tr>
                        <td>&nbsp;&nbsp;&nbsp;����ʱ�䣺</td>
                        <td><input class="inputStyle" name="membertime"/></td>
                    </tr>
                  -->

								<tr>
									<td>&nbsp;&nbsp;&nbsp;���ݣ�</td>
									<td><textarea name="membercontent" style="height: 250px;"
											cols="65" rows="50"></textarea></td>
								</tr>
								<tr>
									<td height="35" align="right">&nbsp;&nbsp;&nbsp; <input
										align="middle" class="canselBtn" type="submit" value="����" />
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp; <input align="middle" name="button"
										type="button" class="canselBtn" value="ȡ��" />
									</td>
								</tr>
							</table>
						</form>
					</p>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>

		<div class="clear"></div>
	</div>
	<div id="footer">
		<ul>
			<li><a href="chamberDetial.jsp">�̻����</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/NewSelect.do?newid=1">�̻ᶯ̬</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">��Ա��λ</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">����ǰ��</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">��Ա���</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">����</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">��������</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&str1=0&str2=6">ͼƬչʾ</a>
			</li>
			<!-- 
	<li><a href="flgw.jsp">���ɹ���</a></li>
	 -->
			<li><a href="lxwm.jsp">��ϵ����</a>
			</li>
		</ul>
		<hr />
		<p>
			��Ȩ���У������̻� ���ַֻ�&nbsp;&nbsp;&nbsp;&nbsp; <a href="yrzdmain.html">����֧�֣��Ϻ��Ƶ���Ϣ�Ƽ�������</a>
		</p>
	</div>

</body>
</html>
