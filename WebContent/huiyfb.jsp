<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员随笔信息发布</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">会员随笔信息发布</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>导航</h3>
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
					<h3>会员随笔信息发布</h3>
					<p>
						<form id="form1" name="form1" method="post"
							action="${pageContext.request.contextPath}/MemberAdd.do">
							<table width="80%">

								<tr>
									<td>&nbsp;&nbsp;&nbsp;标题：</td>
									<td><input class="inputStyle" name="membertitle" />
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;发布人：</td>
									<td><input class="inputStyle" name="username" />
									</td>
								</tr>

								<!-- 
					   <tr>
                        <td>&nbsp;&nbsp;&nbsp;发布时间：</td>
                        <td><input class="inputStyle" name="membertime"/></td>
                    </tr>
                  -->

								<tr>
									<td>&nbsp;&nbsp;&nbsp;内容：</td>
									<td><textarea name="membercontent" style="height: 250px;"
											cols="65" rows="50"></textarea></td>
								</tr>
								<tr>
									<td height="35" align="right">&nbsp;&nbsp;&nbsp; <input
										align="middle" class="canselBtn" type="submit" value="发布" />
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp; <input align="middle" name="button"
										type="button" class="canselBtn" value="取消" />
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
			<li><a href="chamberDetial.jsp">商会介绍</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/NewSelect.do?newid=1">商会动态</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">会员单位</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">管理前线</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">会员随笔</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">家乡</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">老乡留言</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&str1=0&str2=6">图片展示</a>
			</li>
			<!-- 
	<li><a href="flgw.jsp">法律顾问</a></li>
	 -->
			<li><a href="lxwm.jsp">联系我们</a>
			</li>
		</ul>
		<hr />
		<p>
			版权所有：陕西商会 榆林分会&nbsp;&nbsp;&nbsp;&nbsp; <a href="yrzdmain.html">技术支持：上海悠得信息科技工作室</a>
		</p>
	</div>

</body>
</html>
