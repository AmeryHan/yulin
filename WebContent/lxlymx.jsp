<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>老乡留言明细</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true" />
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">老乡留言明细</span>
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
					<h3>老乡留言明细</h3>

					<div id="ListWrapper">
						<form id="lyname">
							<table>
								<tr>
									<td><textarea type="text" value=""
											style="text-align: left" cols="60" rows="3">
					 </textarea></td>
								</tr>
								<tr>
									<td style="text-align: right;"><input type="submit"
										value="保存" align="right" /></td>
								</tr>
								<tr>
									<td><hr />
									</td>

								</tr>
								<tr>
									<td>&nbsp;&nbsp; * 他没有在大声的呐喊而是惊恐的看着这位似人非人的物件， *
										，那个红红的物件，貌似感觉出他的惊恐，移了移下所谓的身体， * 对他说:不要害怕，我不会伤害你的，你就在这里静静的养病吧。
										* 他从惊恐中换过来对着他说：那你是谁，怎么会这样呢，长的这样</td>
								</tr>
								<tr>
									<td>发布者：游客&nbsp;&nbsp;&nbsp;&nbsp; 时间：2012-2-9</td>
								</tr>
								<tr>
									<td><hr />
									</td>

								</tr>
								<tr>
									<td>&nbsp;&nbsp; * 他没有在大声的呐喊而是惊恐的看着这位似人非人的物件， ，长的这样</td>
								</tr>
								<tr>
									<td>发布者：游客&nbsp;&nbsp;&nbsp;&nbsp; 时间：2012-2-9</td>
								</tr>
								<tr>
									<td><hr />
									</td>

								</tr>
								<tr>
									<td>&nbsp;&nbsp; * 他没有在大声的呐喊而是惊恐的看着这位似人非人的物件， *
										，那个红红的物件，貌似感觉出他的惊恐，移了移下所谓的身体长的这样</td>
								</tr>
								<tr>
									<td>发布者：游客&nbsp;&nbsp;&nbsp;&nbsp; 时间：2012-2-9</td>
								</tr>

							</table>
						</form>

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
