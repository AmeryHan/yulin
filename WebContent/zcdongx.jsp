<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>���߶���</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
	<div id="nav">
    	<ul>
          <li><a href="${pageContext.request.contextPath}/AnSelect.do">��ҳ</a></li>
          
         <li><a href="chamberDetial.jsp">�̻����</a></li>
        <li><a href="shanghuidt.jsp">�̻ᶯ̬</a></li>
          <li><a href="zcdongx.jsp">���߶���</a></li>
        
        <li><a href="huiyuandw.jsp">��Ա��λ</a></li>
        <li><a href="guanliqx.jsp">����ǰ��</a></li>
        <li><a href="shicdt.jsp">�г���̬</a></li>
        <li><a href="wuhuaxinyu.jsp">�ﻪ����</a></li>
        <li><a href="falvweiq.jsp">����άȨ</a></li>
        <li><a href="lxwm.jsp">��ϵ����</a></li>
    	</ul>
    </div>
<div id="mainContent">
	<div id="tips">��ǰλ�ã�<span class="fontColor">���߶���</span></div>
    <div id="mainLeft">
    	<div class="sharp color1">
            <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
            <div class="content">  
                  <h3><span class="fontColor"><big><big>M</big></big>enu</span>����</h3>
                  <div id="menuLeft">
                  	<ul>
                  		<li><a href="chamberDetial.jsp">�̻����</a></li>
	<li><a
		href="${pageContext.request.contextPath}/NewSelect.do?newid=1">�̻ᶯ̬</a></li>
	<li><a href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">��Ա��λ</a></li>
	<li><a
		href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">����ǰ��</a></li>
	<li><a
		href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">��Ա���</a></li>
	<li><a
		href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">����</a></li>
	<li><a
		href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">��������</a></li>
     <li><a href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&str1=0&str2=6">ͼƬչʾ</a></li>
        
                    </ul>
                  </div>
            </div>
            <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
    	</div>
<!-- registerbtn       --> 
            <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                      <div id="registerbtn">
                                           <input type="button" value=""  class="personbtn" onclick="window.location.href='gerensq.jsp'"/>
                        <input type="button" value=""  onclick="window.location.href='danwsq.jsp'" class="companybtn" />
                        <input type="button" value="" onclick="window.location.href='lxwm.jsp'" class="linkbtn" />
                      </div>
                </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
            </div>
    </div>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	  
                   	<h3>���߶���</h3>
                    <div id="ListWrapper">
                   	  <ul>
                   	    	  <logic:iterate id="map1" collection="${requestScope.arr1}" >
 

                       	<li><a href="${pageContext.request.contextPath}/PolicySelOne.do?id=${map1.policyId}">${map1.policyTitle}</a>
                       	<span id="Date">${map1.policyTime}</span></li>
                       	</logic:iterate>
                       	<!-- 
                       	<li><a href="#">1���б����ݷ綯 ������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
                        <li><a href="#">1���б����ݷ綯������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
                        <li><a href="#">1���б����ݷ� ��������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1���б����ݷ� ��������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1���б����ݷ� ��������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
						 -->
                        </ul>
                    </div>
			<!--		<table  >
		   <tr>
					     <li><a href="#">1���б�����1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2012/12/14</a></li>
					 
					</tr>
						<tr>
					     <li><a href="#">2���б�����2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2012/12/14</a></li>
					 
					</tr>
						<tr>
					     <li><a href="#">3���б�����3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2012/12/14</a></li>
					 
					</tr>
						<tr>
					     <li><a href="#">4���б�����4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2012/12/14</a></li>
					 
					</tr>
						<tr>
					 <td   align="left">2���б�����2</td>	<td width="100"></td> <td align="right">2012/12/14</td>
					</tr>	<tr>
					 <td   align="left">3���б�����3</td>	<td width="100"></td> <td>2012/12/14</td>
					</tr>	<tr>
					 <td   align="left">4���б�����4</td>	<td width="100"></td> <td>2012/12/14</td>
					</tr>	<tr>
					 <td   align="left">5���б�����5</td>	<td width="100"></td> <td>2012/12/14</td>
					</tr>
					</table>-->
					 
          </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
            </div>
    </div>
    <div class="clear"></div>
</div>
<div id="footer">
  <ul>
  <li><a href="chamberDetial.jsp">�̻����</a></li>
	<li><a
		href="${pageContext.request.contextPath}/NewSelect.do?newid=1">�̻ᶯ̬</a></li>
	<li><a href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">��Ա��λ</a></li>
	<li><a
		href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">����ǰ��</a></li>
	<li><a
		href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">��Ա���</a></li>
	<li><a
		href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">����</a></li>
	<li><a
		href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">��������</a></li>
 
	 <li><a href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&str1=0&str2=6">ͼƬչʾ</a></li>
 <!-- 
	<li><a href="flgw.jsp">���ɹ���</a></li>
	 -->
	<li><a href="lxwm.jsp">��ϵ����</a></li>
    </ul>
    <hr />
<p>��Ȩ���У������̻� ���ַֻ�&nbsp;&nbsp;&nbsp;&nbsp; <a
	href="yrzdmain.html">����֧�֣��Ϻ��Ƶ���Ϣ�Ƽ�������</a></p>
</div>

</body>
</html>
