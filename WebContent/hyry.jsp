<%@ page language="java" pageEncoding="GBK" isELIgnored="false" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��Ա</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>
<%
int   i=0;
%>
<!-- onclick="javascript:window.close()"-->
<body>
<div id="header"></div>	
	<div id="nav">
    	<ul>
 <li><a href="${pageContext.request.contextPath}/AnSelect.do">��ҳ</a></li>
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
	<li><a href="lxwm.jsp">��ϵ����</a></li>
    	</ul>
    </div>
<div id="mainContent">
	<div id="tips">��ǰλ�ã�<span class="fontColor">��Ա</span></div>
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
                        <input type="button" value="" class="personbtn" />
                        <input type="button" value="" class="companybtn" />
                        <input type="button" value="" class="linkbtn" />
                      </div>
                </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
            </div>
    </div>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	<h3>��Ա</h3>
					 <div id="ListWrapper">
					 	<form id="lyname">
					<table>
					  <tr >
    <td colspan="10" style="text-align:left">
					 ���»�Ա��ʾû���Ⱥ�˳�� &nbsp;</td>
					 
  </tr>
  <tr>  	<td   width=600 ><hr    /></td>
  
</tr>
 <ul>
        <tr>
                     <td> 
 <logic:iterate id="map" collection="${requestScope.arr}">
             
                      <%
    
        
                i++;
                if(i!=12){
                	 
               
                %>
                     <a href="${pageContext.request.contextPath}/PersonalOne.do?id=${map.pid}">${map.PName}</a>&nbsp;&nbsp; &nbsp;&nbsp; 
                     
                <%
                }else
                {
                
                	%>
                 
                	   </br>
                		   <a href="${pageContext.request.contextPath}/PersonalOne.do?id=${map.pid}">${map.PName}
                		   </a>&nbsp;&nbsp; &nbsp;&nbsp; 
                     
 
                
                     
                	<%
                	 
                	 if(i==24)
                	 {
                		 i=0;
                	 }
                }
                
           
            %>
               </logic:iterate>
                      </td>
               </tr>
 		</ul>
 
					</table>
					 </form>
				 	 
					 </div>   
					 
              
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
