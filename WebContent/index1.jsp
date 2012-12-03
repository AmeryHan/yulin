<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
 
<title>首页</title>
<link href="index.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
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

<div id="container">
  <div id="tips">当前位置：<span class="fontColor">首页</span></div>
  <div id="notice">
  	<div id="more"><a href="#">更多</a></div>
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
  	<div id="more"><a href="#">更多</a></div>
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
    	<li><a href="#">政策动向一</a></li>
        <li><a href="#">政策动向一</a></li>
        <li><a href="#">政策动向一</a></li>
        <li><a href="#">政策动向一</a></li>
        <li><a href="#">政策动向一</a></li>
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
    	<div id="chambertitle">商会动态</div>
         <div id="more"><a href="#">更多</a></div>
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
        	<li><a href="#">商会动态一</a></li>
            <li><a href="#">商会动态一</a></li>
            <li><a href="#">商会动态一</a></li>
            <li><a href="#">商会动态一</a></li>
            <li><a href="#">商会动态一</a></li>
             -->
        </ul>       
    </div>
    <div id="personBar">
    	<div id="chambertitle">人物专栏</div>
        <div id="personInfo"><img src="#" />现在回想过去，往事感慨万分，如此的坚持最终有了收获，所以现在的景的咖啡店大家，少走弯路...<span id="vipMore"><a href="#">更多</a></span>
		</div>
    </div>
<div id="vipBar">
    	<div id="chambertitle">会员单位</div>
        <div id="personInfo"><img src="#" />现在回想过去，往事感慨万分，如此的坚持最终有了收获，所在的我很乐意给大家让大家，少走弯路...<span id="vipMore"><a href="#">更多</a></span>
		</div>
    </div>
  </div>
</div>
<div id="footer">
<ul>
    	 
        <li><a href="#">商会介绍</a></li>
         <li><a href="${pageContext.request.contextPath}/NewSelect.do">商会动态</a></li>
           <li><a href="${pageContext.request.contextPath}/PolicySelect.do">政策动向</a></li>
        <li><a href="#">会员单位</a></li>
        <li><a href="#">管理前线</a></li>
        <li><a href="#">市场动态</a></li>
		<li><a href="#">政策动向</a></li>
        <li><a href="#">物华心语</a></li>
        <li><a href="#">法律维权示</a></li>
        <li><a href="#">联系我们</a></li>
    </ul>
    <hr />
    <p>版权所有:上海陕西榆林商会&nbsp;&nbsp;&nbsp;&nbsp;技术支持：悠然自得工作室</p>
</div>
</body>
</html>
