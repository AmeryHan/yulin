<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>政策动向显示</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header">  	</div>	
	<div id="nav">
    	<ul>
        <li><a href="${pageContext.request.contextPath}/AnSelect.do">首页</a></li>
        <li><a href="chamberDetial.jsp">商会介绍</a></li>
            <li><a href="${pageContext.request.contextPath}/NewSelect.do">商会动态</a></li>
        <li><a href="${pageContext.request.contextPath}/PolicySelect.do">政策动向</a></li>
        
        <li><a href="huiyuandw.jsp">会员单位</a></li>
        <li><a href="guanliqx.jsp">管理前线</a></li>
        <li><a href="shicdt.jsp">市场动态</a></li>
        <li><a href="wuhuaxinyu.jsp">物华心语</a></li>
        <li><a href="falvweiq.jsp">法律维权</a></li>
        <li><a href="lxwm.jsp">联系我们</a></li>
    	</ul>
    </div>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">政策动向显示</span></div>
    <div id="mainLeft">
    	<div class="sharp color1">
            <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
            <div class="content">  
                  <h3><span class="fontColor"><big><big>M</big></big>enu</span>导航</h3>
                  <div id="menuLeft">
                  	<ul>
                     <li><a href="chamberDetial.jsp">商会介绍</a></li>
          <li><a href="${pageContext.request.contextPath}/NewSelect.do">商会动态</a></li>
        <li><a href="${pageContext.request.contextPath}/PolicySelect.do">政策动向</a></li>
        
        <li><a href="huiyuandw.jsp">会员单位</a></li>
        <li><a href="guanliqx.jsp">管理前线</a></li>
        <li><a href="shicdt.jsp">市场动态</a></li>
        <li><a href="wuhuaxinyu.jsp">物华心语</a></li>
        <li><a href="falvweiq.jsp">法律维权</a></li>
 
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
                <h3>政策动向显示</h3>
          
                   
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
