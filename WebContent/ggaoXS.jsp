<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>公告显示</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">公告显示</span>
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
					<div id="ListWrapper">
						<h3>公告显示</h3>


						<table width="600" border="0" align="center">
							<logic:iterate id="map" collection="${requestScope.arr}">

								<tr>
									<td colspan="10" style="text-align: center">${map.anTitle}
										&nbsp;</td>
								</tr>
								<tr>
									<td style="text-align: right">发布者：${map.anAuthor}
										&nbsp;&nbsp; &nbsp;&nbsp;</td>
									<td style="text-align: left">时间：${map.anTime}</td>
								</tr>
								<tr>
									<td colspan="2">&nbsp;&nbsp;&nbsp;${map.anConent}</td>
								</tr>





							</logic:iterate>

							<!-- 
                     <logic:iterate id="map" collection="${requestScope.arr}" >
                      <tr>
                        <th colspan="3" scope="col">&nbsp;${map.anTitle}</th>
                      </tr>
                      <tr>
                        <th scope="row">&nbsp;${map.anTime}</th>
                        <td colspan="2">&nbsp;${map.anAuthor}</td>
                      </tr>
                      <tr>
                     <th colspan="4" height="380px"> ${map.anConent}
         
                       </th>
                      </tr>
                            </logic:iterate>
                             -->
						</table>

					</div>
					<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<jsp:include page="indexFooter.jsp" flush="true" />
</body>
</html>
