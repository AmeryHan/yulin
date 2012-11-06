<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统管理</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String str= request.getSession().getServletContext().getRealPath("photosc"); 
str+="\\";
System.err.println(path+"="+str);
%>
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
window.location.href='${pageContext.request.contextPath}/photosc.do?url='+filepath; 
} 
} 
 </script>
<body>
<div id="header">  	</div>	
	<div id="nav">
    	<ul>
       <li><a href="System/main.jsp">登录管理系统</a></li>
         
        <li><a href="${pageContext.request.contextPath}/AnSelect.do">显示首页</a></li>
 
         
    	</ul>
    </div>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">相册</span></div>
    <jsp:include page="SystemMenu.jsp" flush="true"/>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	<h3>相册管理</h3>
                	<div>
				<input type="file" id="file"/>
				<span id="error" class='errorInfo'></span>
					<input type="button" value="上传" id="DataReport"
					onclick="validateFile()"/>
			</div>
	 
		
                    <p>	
			   	
			<table>
			<tr>
		 
			<td>图片名称</td>
			<td> &nbsp;&nbsp;&nbsp;&nbsp; 上传时间 </td>
			<td> &nbsp;&nbsp;&nbsp;&nbsp; 选中删除 </td>
			</tr>
		<logic:iterate id="map" collection="${requestScope.arr}" >
			<tr>
	

			<td><a href="${pageContext.request.contextPath}/PhotoOne.do?mbid=2&id=${map.id}">${map.url }</a></td>
			<td> &nbsp;&nbsp;&nbsp;&nbsp; ${map.phototime } </td>
			<td>
			
				  <td align="right"><input type="checkbox" onclick="window.location.href='${pageContext.request.contextPath}/PhotoDel.do?id=${map.id}'; "></input></td>
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
