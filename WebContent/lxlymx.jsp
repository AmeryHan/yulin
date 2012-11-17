<%@ page language="java" pageEncoding="GBK" isELIgnored="false" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>老乡留言明细</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
	<jsp:include page="indexMenu.jsp" flush="true"/>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">老乡留言明细</span></div>
    <div id="mainLeft">
    	<div class="sharp color1">
            <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
            <div class="content">  
                  <h3><span class="fontColor"><big><big>M</big></big>enu</span>导航</h3>
                  <div id="menuLeft">
                  	<ul>
                  		<li><a href="chamberDetial.jsp">商会介绍</a></li>
	<li><a
		href="${pageContext.request.contextPath}/NewSelect.do?newid=1">商会动态</a></li>
	<li><a href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">会员单位</a></li>
	<li><a
		href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">管理前线</a></li>
	<li><a
		href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">会员随笔</a></li>
	<li><a
		href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">家乡</a></li>
	<li><a
		href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">老乡留言</a></li>
	  <li><a href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&str1=0&str2=6">图片展示</a></li>
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
                               <input type="button" value="" class="personbtn"  onclick="window.location.href='gerensq.jsp'; " />
              <input type="button" value="" class="companybtn"  onclick="window.location.href='danwsq.jsp'; " />
               <input type="button" value="" class="linkbtn"  onclick="window.location.href='lxwm.jsp'; " />
                      </div>
                </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
            </div>
    </div>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	<h3>老乡留言明细</h3>
				
                     <div id="ListWrapper">
					 	<form id="lyname">
					<table>
					<tr>
					<td>
					 <textarea type="text"  value=""   style="text-align:left" cols="60"  rows="3"  >
					 </textarea>
					</td>
					</tr>
					<tr>
					<td  style="text-align:right;">
						 <input  type="submit" value="保存"   align="right"   />
					</td>
					</tr>
					<tr>
					<td><hr /></td>
						
					</tr>
				<tr><td>&nbsp;&nbsp;	  * 他没有在大声的呐喊而是惊恐的看着这位似人非人的物件，
			 * ，那个红红的物件，貌似感觉出他的惊恐，移了移下所谓的身体，
			 * 对他说:不要害怕，我不会伤害你的，你就在这里静静的养病吧。
			 * 他从惊恐中换过来对着他说：那你是谁，怎么会这样呢，长的这样</td></tr>
				<tr><td>发布者：游客&nbsp;&nbsp;&nbsp;&nbsp;  时间：2012-2-9</td></tr>
				<tr>
						<td><hr /></td>
						
					</tr>
				<tr><td>&nbsp;&nbsp;	  * 他没有在大声的呐喊而是惊恐的看着这位似人非人的物件，
		 ，长的这样</td></tr>
				<tr><td>发布者：游客&nbsp;&nbsp;&nbsp;&nbsp;  时间：2012-2-9</td></tr>
				<tr>
						<td><hr /></td>
						
					</tr>
				<tr><td>&nbsp;&nbsp;	  * 他没有在大声的呐喊而是惊恐的看着这位似人非人的物件，
			 * ，那个红红的物件，貌似感觉出他的惊恐，移了移下所谓的身体长的这样</td></tr>
				<tr><td>发布者：游客&nbsp;&nbsp;&nbsp;&nbsp;  时间：2012-2-9</td></tr>
				
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
      <li><a href="chamberDetial.jsp">商会介绍</a></li>
	<li><a
		href="${pageContext.request.contextPath}/NewSelect.do?newid=1">商会动态</a></li>
	<li><a href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">会员单位</a></li>
	<li><a
		href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">管理前线</a></li>
	<li><a
		href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">会员随笔</a></li>
	<li><a
		href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">家乡</a></li>
	<li><a
		href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">老乡留言</a></li>
 
 <li><a href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&str1=0&str2=6">图片展示</a></li>
 <!-- 
	<li><a href="flgw.jsp">法律顾问</a></li>
	 -->
	<li><a href="lxwm.jsp">联系我们</a></li>
    </ul>
    <hr />
<p>版权所有：陕西商会 榆林分会&nbsp;&nbsp;&nbsp;&nbsp; <a
	href="yrzdmain.html">技术支持：上海悠得信息科技工作室</a></p>
</div>

</body>
</html>
