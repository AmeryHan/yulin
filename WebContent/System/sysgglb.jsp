<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>公告列表</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
	<jsp:include page="SystemNav.jsp" flush="true"/>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">公告列表</span></div>
    <jsp:include page="SystemMenu.jsp" flush="true"/>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	  
                   	<h3>公告列表</h3>
                    <div id="ListWrapper">
                   	  <ul>
                   	 
                       	  					<table>
						<logic:iterate id="map1" collection="${requestScope.arr}" >
	<tr id="r1">
	<td  id="t1" style="text-align:left">&nbsp;<a href="#">${map1.anTitle}</a></td>
	<td  id="t1" style="text-align:left">&nbsp;<a href="#">${map1.anAuthor}</a></td>
   <td style="text-align:right">&nbsp;${map1.anTime}</td>
 <td align="right"><input type="checkbox" onclick="window.location.href='${pageContext.request.contextPath}/AnDel.do?id=${map1.anID}'; "    ></input></td>
   </tr>
</logic:iterate>
</table>
                    
                        </ul>
                    </div>
 
					 
          </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
            </div>
    </div>
    <div class="clear"></div>
</div>
<jsp:include page="SystemFooter.jsp" flush="true"/>

</body>
</html>
