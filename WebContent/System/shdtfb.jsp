<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商会动态发布</title>
<link href="../layout.css" rel="stylesheet" type="text/css" />
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
	<div id="tips">当前位置：<span class="fontColor">商会动态发布</span></div>
    <div id="mainLeft">
    	<div class="sharp color1">
            <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
            <div class="content">  
                  <h3><span class="fontColor"><big><big>M</big></big>enu</span>导航</h3>
                  <div id="menuLeft">
                  	<ul>
              <li><a href="ggaofb.jsp">公告发布</a></li>					
    <li><a href="${pageContext.request.contextPath}/PersonalSelect.do?plid=2">个人申请审批</a></li>
        <li><a href="${pageContext.request.contextPath}/UnitSelect.do?utid=2">单位申请审批</a></li>
        <li><a href="shdtfb.jsp">商会动态发布</a></li>
        <li><a href="zcdxfb.jsp">管理前线发布</a></li>
            <li><a href="jxfb.jsp">家乡信息发布</a></li>
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
                	<h3>商会动态发布</h3>
					<p>
                     <form id="form1" name="form1" method="post" action="${pageContext.request.contextPath}/NewsAdd.do">
                <table width="80%"  >
                 
					   <tr>
                        <td>&nbsp;&nbsp;&nbsp;标题：</td>
                        <td><input class="inputStyle"  name="newsTitle"/></td>
                    </tr>
                    <tr>
                        <td> &nbsp;&nbsp;&nbsp;发布人：</td>
                        <td><input class="inputStyle"  name="newsAuthor"/></td>
                    </tr>
               
                 
				 
                
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;内容：</td>
                        <td h>
                            <textarea   name="newsContent"  style="height:250px;" cols="60" rows="50"></textarea>                       </td>
                    </tr>
                    <tr>
                      <td height="35" align="right">&nbsp;&nbsp;&nbsp;
                      <input align="middle" class="canselBtn"  type="submit"  value="发布" /></td>
                        <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <input align="middle"  name="button" type="button" class="canselBtn" value="取消" /></td>
                    </tr>
                </table>
                </form>    
				</p>
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
