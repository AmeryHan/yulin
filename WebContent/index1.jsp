<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
 
<title>��ҳ</title>
<link href="index.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
	<div id="nav">
    <ul>
           <li><a href="${pageContext.request.contextPath}/AnSelect.do">��ҳ</a></li>
          
        <li><a href="chamberDetial.jsp">�̻����</a></li>
        <li><a href="${pageContext.request.contextPath}/NewSelect.do">�̻ᶯ̬</a></li>
        <li><a href="${pageContext.request.contextPath}/PolicySelect.do">���߶���</a></li>
        <li><a href="huiyuandw.jsp">��Ա��λ</a></li>
        <li><a href="guanliqx.jsp">����ǰ��</a></li>
        <li><a href="shicdt.jsp">�г���̬</a></li>
        <li><a href="wuhuaxinyu.jsp">�ﻪ����</a></li>
        <li><a href="falvweiq.jsp">����άȨ</a></li>
        <li><a href="lxwm.jsp">��ϵ����</a></li>
    </ul>
    </div>

<div id="container">
  <div id="tips">��ǰλ�ã�<span class="fontColor">��ҳ</span></div>
  <div id="notice">
  	<div id="more"><a href="#">����</a></div>
  	<ul>
  	<table>
  	
<logic:iterate id="map" collection="${requestScope.arr}" >
<tr>
<td width="180px" align="left">&nbsp;<a href="${pageContext.request.contextPath}/AnSelOne.do?id=${map.anID}">${map.anTitle}</a></td>
<td width="60px" align="right">&nbsp;${map.anTime}</td>
</tr>
</logic:iterate>
</table>
    </ul>
  </div>
  <div id="office">
  	<div id="more"><a href="#">����</a></div>
  	<ul>
  	          	<table>
  	
<logic:iterate id="map2" collection="${requestScope.arr2}" >
<tr>
<td width="130px" align="left">&nbsp;<a href="${pageContext.request.contextPath}/PolicySelDne.do?id=${map2.policyId}">${map2.policyTitle}</a></td>
<td width="60px" align="right">&nbsp;${map2.policyTime}</td>
</tr>
</logic:iterate>
</table>
  	<!-- 
    	<li><a href="#">���߶���һ</a></li>
        <li><a href="#">���߶���һ</a></li>
        <li><a href="#">���߶���һ</a></li>
        <li><a href="#">���߶���һ</a></li>
        <li><a href="#">���߶���һ</a></li>
         -->
    </ul>
  </div>
  <div id="middelinfo">
  	<div id="registerbtn">
          <input type="button" value=""  class="personbtn" onclick="window.location.href='gerensq.jsp'"/>
                        <input type="button" value=""  onclick="window.location.href='danwsq.jsp'" class="companybtn" />
                        <input type="button" value="" onclick="window.location.href='lxwm.jsp'" class="linkbtn" />
    </div>
    <div id="chamberContainer">
    	<div id="chambertitle">�̻ᶯ̬</div>
         <div id="more"><a href="#">����</a></div>
        <ul>
          	<table>
  	
<logic:iterate id="map1" collection="${requestScope.arr1}" >
<tr>
<td width="130px" align="left">&nbsp;<a href="${pageContext.request.contextPath}/NewSelOne.do?id=${map1.newsId}">${map1.newsTitle}</a></td>
<td width="60px" align="right">&nbsp;${map1.newsTime}</td>
</tr>
</logic:iterate>
</table>
<!-- 
        	<li><a href="#">�̻ᶯ̬һ</a></li>
            <li><a href="#">�̻ᶯ̬һ</a></li>
            <li><a href="#">�̻ᶯ̬һ</a></li>
            <li><a href="#">�̻ᶯ̬һ</a></li>
            <li><a href="#">�̻ᶯ̬һ</a></li>
             -->
        </ul>       
    </div>
    <div id="personBar">
    	<div id="chambertitle">����ר��</div>
        <div id="personInfo"><img src="#" />���ڻ����ȥ�����¸п���֣���˵ļ�����������ջ��������ڵľ��Ŀ��ȵ��ң�������·...<span id="vipMore"><a href="#">����</a></span>
		</div>
    </div>
<div id="vipBar">
    	<div id="chambertitle">��Ա��λ</div>
        <div id="personInfo"><img src="#" />���ڻ����ȥ�����¸п���֣���˵ļ�����������ջ����ڵ��Һ����������ô�ң�������·...<span id="vipMore"><a href="#">����</a></span>
		</div>
    </div>
  </div>
</div>
<div id="footer">
<ul>
    	 
        <li><a href="#">�̻����</a></li>
         <li><a href="${pageContext.request.contextPath}/NewSelect.do">�̻ᶯ̬</a></li>
           <li><a href="${pageContext.request.contextPath}/PolicySelect.do">���߶���</a></li>
        <li><a href="#">��Ա��λ</a></li>
        <li><a href="#">����ǰ��</a></li>
        <li><a href="#">�г���̬</a></li>
		<li><a href="#">���߶���</a></li>
        <li><a href="#">�ﻪ����</a></li>
        <li><a href="#">����άȨʾ</a></li>
        <li><a href="#">��ϵ����</a></li>
    </ul>
    <hr />
    <p>��Ȩ����:�Ϻ����������̻�&nbsp;&nbsp;&nbsp;&nbsp;����֧�֣���Ȼ�Եù�����</p>
</div>
</body>
</html>
