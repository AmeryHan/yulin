<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��Ա����б�</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
	<div id="nav">
    	<ul>
     <li><a href="System/main.jsp">��¼����ϵͳ</a></li>
         
        <li><a href="${pageContext.request.contextPath}/AnSelect.do">��ʾ��ҳ</a></li>
 
         
    	</ul>
    </div>
<div id="mainContent">
	<div id="tips">��ǰλ�ã�<span class="fontColor">��Ա����б�</span></div>
    <jsp:include page="SystemMenu.jsp" flush="true"/>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	  
                   	<h3>��Ա����б�</h3>
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
                       	  
                        <li><a href="#">1���б����ݷ綯������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
                        <li><a href="#">1���б����ݷ� ��������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1���б����ݷ� ��������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1���б����ݷ� ��������ʯ�跨���ķ�ɫ��</a><span id="Date">2012/12/14</span></li>
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
<p>��Ȩ���У������̻� ���ַֻ�&nbsp;&nbsp;&nbsp;&nbsp; <a
	href="yrzdmain.html">����֧�֣��Ϻ��Ƶ���Ϣ�Ƽ�������</a></p>
</div>

</body>
</html>
