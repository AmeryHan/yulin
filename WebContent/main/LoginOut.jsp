<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
  <head>
    <base />
    
    <title>LoginOut.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <form name="f1" method="get">

   <table border="1">
<tr>
 <th>用户名
 <th>地址
</tr>
<tr>
<logic:iterate id="map" collection="${requestScope.arr}" >
<td>&nbsp;<a href="/Services/preSeeback.do?ServicingId=">${map.anTitle}</a></td>
<td>&nbsp;${map.anConent}</td>
</tr>
</logic:iterate>
    </table>
    <center><a href="Index.jsp"> 返  回</a> </center>
  </form>
  </body>
</html>
