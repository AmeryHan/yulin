<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>单位申请审批</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
	<jsp:include page="SystemNav.jsp" flush="true"/>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">单位申请审批</span></div>
    <jsp:include page="SystemMenu.jsp" flush="true"/>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	  
                   	<h3>单位申请审批</h3>
                         <p>
			 	<table  >
			 	 
                     <tr>
                        <td>&nbsp;&nbsp;公司名称：</td>
             
                        <td> &nbsp;&nbsp;姓名：</td>
                  
                        <td>&nbsp;&nbsp;性别：</td>
                  
                        <td>&nbsp;&nbsp;职务：</td>
                    
                        <td>&nbsp;&nbsp;电话：</td>
                     
                        <td>&nbsp;&nbsp;QQ：</td>
              <td>&nbsp;&nbsp;&nbsp;注册时间</td>
                               <td>&nbsp;&nbsp;&nbsp;审批状态</td>
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
