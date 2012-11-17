<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>公告发布</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">公告发布</span>
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
			<!-- registerbtn       -->
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<div id="registerbtn">
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
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>公告发布</h3>
					<p>
						<form id="form1" name="form1" method="post" action="">
							<table width="80%">

								<tr>
									<td>&nbsp;&nbsp;&nbsp;标题：</td>
									<td><input class="inputStyle" />
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;发布人：</td>
									<td><input class="inputStyle" />
									</td>
								</tr>


								<tr>
									<td>&nbsp;&nbsp;&nbsp;发布时间：</td>
									<td><input class="inputStyle" />
									</td>
								</tr>


								<tr>
									<td>&nbsp;&nbsp;&nbsp;内容：</td>
									<td h><textarea class="inputStyle" name=""
											style="height: 70px;" cols="3" rows="10"></textarea></td>
								</tr>
								<tr>
									<td height="35" align="right">&nbsp;&nbsp;&nbsp;<input
										align="middle" class="canselBtn" type="button" value="发布" />
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;<input align="middle" name="button"
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
	<jsp:include page="indexFooter.jsp" flush="true" />
</body>
</html>
