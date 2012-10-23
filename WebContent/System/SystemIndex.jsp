<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统管理</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header">  	</div>	
	<div id="nav">
    	<ul>
       <li><a href="System/main.jsp">登录管理系统</a></li>
         
        <li><a href="${pageContext.request.contextPath}/AnSelect.do">显示首页</a></li>
 
         
    	</ul>
    </div>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">商会介绍</span></div>
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
                	<h3>商会介绍</h3>
                    <p>这是最基本的圆角框，无图片，四个圆角全部采用标签绘制，兼容所有浏览器，无HACK，使用时只需添加一个class = " color1 "即可，下面的所有颜色方案你可以灵活自定义。</p>      
                </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
            </div>
    </div>
    <div class="clear"></div>
</div>
<div id="footer">
  <ul>
  <!-- 
    	 <li><a href="chamberDetial.jsp">商会介绍</a></li>
        <li><a href="shanghuidt.jsp">商会动态</a></li>
        <li><a href="huiyuandw.jsp">会员单位</a></li>
        <li><a href="guanliqx.jsp">管理前线</a></li>
        <li><a href="shicdt.jsp">市场动态</a></li>
        <li><a href="wuhuaxinyu.jsp">物华心语</a></li>
        <li><a href="falvweiq.jsp">法律维权</a></li>
        <li><a href="lxwm.jsp">联系我们</a></li>
         -->
    </ul>
    <hr />
<p>版权所有：陕西商会 榆林分会&nbsp;&nbsp;&nbsp;&nbsp; <a
	href="yrzdmain.html">技术支持：上海悠得信息科技工作室</a></p>
</div>

</body>
</html>
