<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图片展示</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String str= request.getSession().getServletContext().getRealPath("photosc"); 
str+="\\";
System.err.println(path+"="+str);
int i=0;
int a=0;
%>
<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true" />
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">图片展示</span>
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
					<h3>图片展示</h3>
					<p>
						<table>
							<tr>
								<td><logic:iterate id="map"
										collection="${requestScope.arr}">

										<%
    
        
                i++;
                if(i!=5){
                	 
               
                %>


										<a
											href="${pageContext.request.contextPath}/PhotoOne.do?mbid=1&id=${map.id}">
											<img src="<%=str %>${map.url }" height=100 " alt=""
											style="width: 100" /> </a>


										<%
                }else
                {
                
                	%>

										</br>
										<a
											href="${pageContext.request.contextPath}/PhotoOne.do?mbid=1&id=${map.id}">
											<img src="<%=str %>${map.url }" height="100" alt=""
											style="width: 100" /> </a>


										<%
                	 
                	 if(i==10)
                	 {
                		 i=0;
                	 }
                }
                
     
            %>

									</logic:iterate></td>
							</tr>
							</br>
							</br>
							<tr>

								<td height=25>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
							<tr>

								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
							<tr>

								<td><a
									href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&sy=1">上一页
								</a> <a
									href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&xy=2">下一页</a>
								</td>
							</tr>
						</table>

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
