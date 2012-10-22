<%@ page language="java" pageEncoding="GBK" isELIgnored="false" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String str= request.getSession().getServletContext().getRealPath("photosc"); 
str+="\\";

%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>组织人员添加</title>
<link href="../layout.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript"> 
function validateFile(){ 
var flag=true; 
var fileObject=document.getElementById("file"); 
var errorObject=document.getElementById("error"); 
var filepath=fileObject.value;//路径
if(filepath==undefined||filepath==""){ 
fileObject.focus(); 
errorObject.innerText="请选择上传文件！"; 
flag=false; 
}else{ 
var fileArr=filepath.split("\\"); 
var fileTArr=fileArr[fileArr.length-1].toLowerCase().split("."); 
var filetype=fileTArr[fileTArr.length-1]; 
if(filetype!="jpg"&&filetype!="jpg"){ 
fileObject.focus(); 
errorObject.innerText="上传文件必须为jpg文件！"; 
flag=false; 
}else{ 
errorObject.innerText=""; 
} 
} 
//进行其他相关校验 
if(flag){ 
alert("文件上传成功"+filepath); 
window.location.href='${pageContext.request.contextPath}/StructureAdd.do?url='+filepath+'&tupdid=1'; 
} 
} 
 </script>
<body>
<div id="header"></div>	
	<div id="nav">
    	<ul>  <li><a href="System/main.jsp">登录管理系统</a></li>
         
        <li><a href="${pageContext.request.contextPath}/AnSelect.do">显示首页</a></li>
    	</ul>
    </div>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">组织人员添加</span></div>
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
<!-- registerbtn      --> 
            
    </div>
    <div id="mainRight">
   	  <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	 
					 	<h3>组织人员添加</h3>
					  
 
                <form id="form1" name="form1" method="post" action="">
                  <b class="b5"></b>
                  <table width="80%"  >
                    <tr>
                     <td>&nbsp;&nbsp;&nbsp; </td>
                        <td> 
                     
 		 
	 
     	<img src="#" height="142px" alt=""   
            style="width: 136px" />
 

                        
                        </td>
                        </tr>
                        <tr>
                        <td>&nbsp;&nbsp;&nbsp;头像：</td>
                        <td> 
                        <div>
				<input type="file" id="file"   />
				<span id="error" class='errorInfo'></span>
				<input type="button" value="上传" id="DataReport"
					onclick="validateFile()"/>
			</div>
		 </td>
                    </tr>
                
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;姓名：</td>
                        <td><input class="inputStyle"  name="pName"/></td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;性别：</td>
                        <td><input name="pSex" type="radio" value="" />男 &nbsp;&nbsp; <input name="pSex" type="radio" value="" />女</td>
                    </tr>
                    
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;商会职务：</td>
                        <td> 
                            <select  name="pHometown">
                        <option value="1">名誉会长</option>
                          <option  value="2">会长</option>
                            <option  value="3">副会长</option>
                              <option  value="4">秘书长</option>
                                <option  value="5">副秘书长</option>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp; 简介：</td>
                        <td>
                            <textarea   name="pContent" cols="60" rows="10"></textarea>
                       </td>
                    </tr>
                    <tr>
                        <td align="right"><input align="right" class="regBtn" type="submit" value="注册"  /></td>
                        <td ><input class="canselBtn" type="button" value="取消"  /></td>
                    </tr>
                </table>
          
                </form>
                                 </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
                 
                    </div>
    </div>
    <div class="clear"></div>
</div>
<div id="footer">
  <ul>
 
    <hr />
<p>版权所有：陕西商会 榆林分会&nbsp;&nbsp;&nbsp;&nbsp; <a
	href="yrzdmain.html">技术支持：上海悠得信息科技工作室</a></p>
</div>

</body>
</html>
