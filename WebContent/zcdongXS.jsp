<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>���߶�����ʾ</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header">  	</div>	
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
<div id="mainContent">
	<div id="tips">��ǰλ�ã�<span class="fontColor">���߶�����ʾ</span></div>
    <div id="mainLeft">
    	<div class="sharp color1">
            <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
            <div class="content">  
                  <h3><span class="fontColor"><big><big>M</big></big>enu</span>����</h3>
                  <div id="menuLeft">
                  	<ul>
                     <li><a href="chamberDetial.jsp">�̻����</a></li>
          <li><a href="${pageContext.request.contextPath}/NewSelect.do">�̻ᶯ̬</a></li>
        <li><a href="${pageContext.request.contextPath}/PolicySelect.do">���߶���</a></li>
        
        <li><a href="huiyuandw.jsp">��Ա��λ</a></li>
        <li><a href="guanliqx.jsp">����ǰ��</a></li>
        <li><a href="shicdt.jsp">�г���̬</a></li>
        <li><a href="wuhuaxinyu.jsp">�ﻪ����</a></li>
        <li><a href="falvweiq.jsp">����άȨ</a></li>
 
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
                <h3>���߶�����ʾ</h3>
          
                   
                    <table width="600" border="1" align="center">
                     <logic:iterate id="map" collection="${requestScope.arr1}" >
                      <tr>
                        <th colspan="3" scope="col">&nbsp;${map.policyTitle}</th>
                      </tr>
                      <tr>
                        <th scope="row">&nbsp;${map.policyTime}</th>
                        <td colspan="2">&nbsp;${map.policyAuthor}</td>
                      </tr>
                      <tr>
                     <th colspan="4" height="380px"> ${map.policyContent}
         
                       </th>
                      </tr>
                            </logic:iterate>
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
