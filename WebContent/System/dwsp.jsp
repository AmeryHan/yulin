<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��λ��������</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
	<jsp:include page="SystemNav.jsp" flush="true"/>
<div id="mainContent">
	<div id="tips">��ǰλ�ã�<span class="fontColor">��λ��������</span></div>
    <jsp:include page="SystemMenu.jsp" flush="true"/>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	  
                   	<h3>��λ��������</h3>
                         <p>
			 	<table  >
			 	 
                     <tr>
                        <td>&nbsp;&nbsp;��˾���ƣ�</td>
             
                        <td> &nbsp;&nbsp;������</td>
                  
                        <td>&nbsp;&nbsp;�Ա�</td>
                  
                        <td>&nbsp;&nbsp;ְ��</td>
                    
                        <td>&nbsp;&nbsp;�绰��</td>
                     
                        <td>&nbsp;&nbsp;QQ��</td>
              <td>&nbsp;&nbsp;&nbsp;ע��ʱ��</td>
                               <td>&nbsp;&nbsp;&nbsp;����״̬</td>
                    </tr>
              
                
		 <logic:iterate id="map" collection="${requestScope.arr}" >
                    <tr>
                     <td>&nbsp;&nbsp;&nbsp;${map.unitName} </td>
                   
                        <td>&nbsp;&nbsp;&nbsp;${map.pname} </td>
                                  <td>&nbsp;&nbsp;&nbsp;${map.psex} </td>
                       
                        <td>&nbsp;&nbsp;&nbsp;${map.unitPost} </td>
                       
                        <td>&nbsp;&nbsp;&nbsp;${map.unitPhone} </td>
                       
                        <td>&nbsp;&nbsp;&nbsp;${map.unitQQ} </td>
                      
                  
              	 <td width="100px">${map.unittime}</td>
                    
                      
                 
                   
                     
                
				
					       <td>&nbsp;&nbsp;&nbsp;${map.unitAuditState} </td>
				 <td align="right"><input type="checkbox" onclick="window.location.href='${pageContext.request.contextPath}/UnitUpd.do?id=${map.unitID}' ;"    ></input></td>
					 <td align="right"><input type="checkbox" onclick="window.location.href='${pageContext.request.contextPath}/UnitDel.do?id=${map.unitID}' ;"    ></input></td>
				
					</tr>	
					</logic:iterate> 
					</table> 
					  </p> 
					 
          </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
            </div>
    </div>
    <div class="clear"></div>
</div>
<jsp:include page="SystemFooter.jsp" flush="true"/>
</body>
</html>
