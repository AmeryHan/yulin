<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ϵͳ����</title>
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
var filepath=fileObject.value;//·��
if(filepath==undefined||filepath==""){ 
fileObject.focus(); 
errorObject.innerText="��ѡ���ϴ��ļ���"; 
flag=false; 
}else{ 
var fileArr=filepath.split("\\"); 
var fileTArr=fileArr[fileArr.length-1].toLowerCase().split("."); 
var filetype=fileTArr[fileTArr.length-1]; 
if(filetype!="jpg"&&filetype!="jpg"){ 
fileObject.focus(); 
errorObject.innerText="�ϴ��ļ�����Ϊjpg�ļ���"; 
flag=false; 
}else{ 
errorObject.innerText=""; 
} 
} 
//�����������У�� 
if(flag){ 
alert("�ļ��ϴ��ɹ�"+filepath); 
window.location.href='${pageContext.request.contextPath}/photosc.do?url='+filepath; 
} 
} 
 </script>
<body>
<div id="header">  	</div>	
	<div id="nav">
    	<ul>
       <li><a href="System/main.jsp">��¼����ϵͳ</a></li>
         
        <li><a href="${pageContext.request.contextPath}/AnSelect.do">��ʾ��ҳ</a></li>
 
         
    	</ul>
    </div>
<div id="mainContent">
	<div id="tips">��ǰλ�ã�<span class="fontColor">���</span></div>
    <jsp:include page="SystemMenu.jsp" flush="true"/>
    <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	<h3>������</h3>
                	<div>
				<input type="file" id="file"/>
				<span id="error" class='errorInfo'></span>
					<input type="button" value="�ϴ�" id="DataReport"
					onclick="validateFile()"/>
			</div>
	 
		
                    <p>	
			   	
			<table>
			<tr>
		 
			<td>ͼƬ����</td>
			<td> &nbsp;&nbsp;&nbsp;&nbsp; �ϴ�ʱ�� </td>
			<td> &nbsp;&nbsp;&nbsp;&nbsp; ѡ��ɾ�� </td>
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
    	 <li><a href="chamberDetial.jsp">�̻����</a></li>
        <li><a href="shanghuidt.jsp">�̻ᶯ̬</a></li>
        <li><a href="huiyuandw.jsp">��Ա��λ</a></li>
        <li><a href="guanliqx.jsp">����ǰ��</a></li>
        <li><a href="shicdt.jsp">�г���̬</a></li>
        <li><a href="wuhuaxinyu.jsp">�ﻪ����</a></li>
        <li><a href="falvweiq.jsp">����άȨ</a></li>
        <li><a href="lxwm.jsp">��ϵ����</a></li>
         -->
    </ul>
    <hr />
<p>��Ȩ���У������̻� ���ַֻ�&nbsp;&nbsp;&nbsp;&nbsp; <a
	href="yrzdmain.html">����֧�֣��Ϻ��Ƶ���Ϣ�Ƽ�������</a></p>
</div>

</body>
</html>
