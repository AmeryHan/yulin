<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员随笔列表</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
	<div id="nav">
    	<ul>
     <li><a href="System/main.jsp">登录管理系统</a></li>
         
        <li><a href="${pageContext.request.contextPath}/AnSelect.do">显示首页</a></li>
 
         
    	</ul>
    </div>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">会员随笔列表</span></div>
    <jsp:include page="SystemMenu.jsp" flush="true"/>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	  
                   	<h3>会员随笔列表</h3>
                    <div id="ListWrapper">
                   	  <ul>
                   	                       	  		<table>
				<logic:iterate id="map" collection="${requestScope.arr}" >
<tr id="r1">
 
 <td  id="tt" style="text-align:left">${map.membertitle} </td>
<td  id="tt" style="text-align:left">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;${map.username} </td>

<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;${map.membertime}</td>
	  <td align="right"><input type="checkbox" onclick="window.location.href='${pageContext.request.contextPath}/MemberDel.do?id=${map.memberid}'; "    ></input></td>
</tr>
</logic:iterate>
</table>
<!-- 
                       	  
                        <li><a href="#">1、列表数据风动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
                        <li><a href="#">1、列表数据风 动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1、列表数据风 动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1、列表数据风 动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
						  -->
                        </ul>
                    </div>
 
					 
          </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
            </div>
    </div>
    <div class="clear"></div>
</div>
<div id="footer">
  <ul>
   
    </ul>
    <hr />
<p>版权所有：陕西商会 榆林分会&nbsp;&nbsp;&nbsp;&nbsp; <a
	href="yrzdmain.html">技术支持：上海悠得信息科技工作室</a></p>
</div>

</body>
</html>
