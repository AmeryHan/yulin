<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>家乡列表</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
	<div id="nav">
    	<ul>
    <li><a href="System/main.jsp">登录管理系统</a></li>
         
        <li><a href="${pageContext.request.contextPath}/AnSelect.do">显示首页</a></li>
 
 
    	</ul>
    </div>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">家乡列表</span></div>
    <div id="mainLeft">
    	<div class="sharp color1">
            <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
            <div class="content">  
                  <h3><span class="fontColor"><big><big>M</big></big>enu</span>导航</h3>
                  <div id="menuLeft">
                  	<ul>
                <li><a href="System/ggaofb.jsp">公告发布</a></li>					
    <li><a href="${pageContext.request.contextPath}/PersonalSelect.do?plid=2">个人申请审批</a></li>
        <li><a href="${pageContext.request.contextPath}/UnitSelect.do?utid=2">单位申请审批</a></li>
        <li><a href="System/shdtfb.jsp">商会动态发布</a></li>
        <li><a href="System/zcdxfb.jsp">管理前线发布</a></li>
            <li><a href="System/jxfb.jsp">家乡信息发布</a></li>
               <li><a href="System/zzadd.jsp">组织人员添加</a></li>
                                       <li><a href="${pageContext.request.contextPath}/StructureList.do">组织人员列表</a></li>
     <li><a href="${pageContext.request.contextPath}/AnSelect2.do?anid=2">公告列表</a></li>
      <li><a href="${pageContext.request.contextPath}/NewSelect.do?newid=2">商会动态列表</a></li>
     <li><a href="${pageContext.request.contextPath}/PolicySelect.do?pyid=2">管理前线列表</a></li>
        <li><a href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=2">老乡留言列表</a></li>
        <li><a href="${pageContext.request.contextPath}/MemberSelect.do?mbid=2">会员随笔列表</a></li>
        <li><a href="${pageContext.request.contextPath}/HometownSelect.do?htid=2">家乡信息列表</a></li>
          <li><a href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=2">相册</a></li>
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
                	  
                   	<h3>家乡列表</h3>
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
                        <li><a href="#">1、列表数据风动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
                        <li><a href="#">1、列表数据风 动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1、列表数据风 动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
						<li><a href="#">1、列表数据风 动旛动服石髓法发的发色弱</a><span id="Date">2012/12/14</span></li>
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
<p>版权所有：陕西商会 榆林分会&nbsp;&nbsp;&nbsp;&nbsp; <a
	href="yrzdmain.html">技术支持：上海悠得信息科技工作室</a></p>
</div>

</body>
</html>
