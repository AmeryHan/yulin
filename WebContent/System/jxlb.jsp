<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�����б�</title>
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
	<div id="tips">��ǰλ�ã�<span class="fontColor">�����б�</span></div>
    <div id="mainLeft">
    	<div class="sharp color1">
            <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
            <div class="content">  
                  <h3><span class="fontColor"><big><big>M</big></big>enu</span>����</h3>
                  <div id="menuLeft">
                  	<ul>
                <li><a href="System/ggaofb.jsp">���淢��</a></li>					
    <li><a href="${pageContext.request.contextPath}/PersonalSelect.do?plid=2">������������</a></li>
        <li><a href="${pageContext.request.contextPath}/UnitSelect.do?utid=2">��λ��������</a></li>
        <li><a href="System/shdtfb.jsp">�̻ᶯ̬����</a></li>
        <li><a href="System/zcdxfb.jsp">����ǰ�߷���</a></li>
            <li><a href="System/jxfb.jsp">������Ϣ����</a></li>
               <li><a href="System/zzadd.jsp">��֯��Ա���</a></li>
                                       <li><a href="${pageContext.request.contextPath}/StructureList.do">��֯��Ա�б�</a></li>
     <li><a href="${pageContext.request.contextPath}/AnSelect2.do?anid=2">�����б�</a></li>
      <li><a href="${pageContext.request.contextPath}/NewSelect.do?newid=2">�̻ᶯ̬�б�</a></li>
     <li><a href="${pageContext.request.contextPath}/PolicySelect.do?pyid=2">����ǰ���б�</a></li>
        <li><a href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=2">���������б�</a></li>
        <li><a href="${pageContext.request.contextPath}/MemberSelect.do?mbid=2">��Ա����б�</a></li>
        <li><a href="${pageContext.request.contextPath}/HometownSelect.do?htid=2">������Ϣ�б�</a></li>
          <li><a href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=2">���</a></li>
                    </ul>
                  </div>
            </div>
            <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
    	</div>
<!-- registerbtn      
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
             --> 
   </div>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	  
                   	<h3>�����б�</h3>
                    <div id="ListWrapper">
                   	  <ul>
                   	 
                       	  		<table>
				<logic:iterate id="map" collection="${requestScope.arr}" >
<tr id="r1">
 
 <td  id="tt" style="text-align:left"><a href="#">${map.hometitle} </a></td>
<td  id="tt" style="text-align:left"><a href="#">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;${map.username} </a></td>

<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;${map.hometime}</td>
	  <td align="right"><input type="checkbox" onclick="window.location.href='${pageContext.request.contextPath}/HometownDel.do?id=${map.homeid}'; "    ></input></td>
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
