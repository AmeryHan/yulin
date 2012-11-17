<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String str= request.getSession().getServletContext().getRealPath("photosc"); 
str+="\\";
System.err.println(path+"="+str);
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��������</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>
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
window.location.href='${pageContext.request.contextPath}/PersonalAdd.do?url='+filepath+'&tupdid=1'; 
} 
} 
 </script>
<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			��ǰλ�ã�<span class="fontColor">��������</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>����</h3>
					<jsp:include page="indexNav.jsp" flush="true" />
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
			<!-- registerbtn       -->
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<div id="registerbtn">
						<input type="button" value="" class="personbtn"
							onclick="window.location.href='gerensq.jsp'; " /> <input
							type="button" value="" class="companybtn"
							onclick="window.location.href='danwsq.jsp'; " /> <input
							type="button" value="" class="linkbtn"
							onclick="window.location.href='lxwm.jsp'; " />
					</div>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">

					<h3>��������</h3>
					<logic:iterate id="map1" collection="${requestScope.arr}">

						<form id="form1" name="form1" method="post"
							action="${pageContext.request.contextPath}/PersonalAdd.do?&tupdid=2&id=${map1.pid }">
							<b class="b5"></b>
							<table width="80%">

								<tr>
									<td>&nbsp;&nbsp;&nbsp;ͷ��</td>
									<td><img src="<%=basePath %>photosc/${map.ptoux }"
										height="142px" alt="" style="width: 136px" /> <!--  
                        <div>
				<input type="file" id="file"   />
				<span id="error" class='errorInfo'></span>
				<input type="button" value="�ϴ�" id="DataReport"
					onclick="validateFile()"/>
			</div>
			--></td>
								</tr>

								<tr>
									<td>&nbsp;&nbsp;&nbsp;ע��������</td>
									<td><input class="inputStyle" name="pName" />
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;�Ա�</td>
									<td><input name="pSex" type="radio" value="��" />��
										&nbsp;&nbsp; <input name="pSex" type="radio" value="Ů" />Ů</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;�������ڣ�</td>
									<td><input class="inputStyle" name="pBirthTime" />
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;�绰��</td>
									<td><input class="inputStyle" name="pPhone" />
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;���䣺</td>
									<td><input class="inputStyle" name="pMailbox" />
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;QQ��</td>
									<td><input class="inputStyle" name="pQQ" />
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;msn��</td>
									<td><input class="inputStyle" name="pMsn" />
									</td>
								</tr>

								<tr>
									<td>&nbsp;&nbsp;&nbsp;�־ӵ�ַ��</td>
									<td><input class="inputStyle" name="pResidence" />
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;���磺</td>
									<td><input class="inputStyle" name="pHometown" />
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;���˼�飺</td>
									<td><textarea name="pContent" cols="60" rows="10"></textarea>
									</td>
								</tr>
								<tr>
									<td align="right"><input align="right" class="regBtn"
										type="submit" value="ע��" />
									</td>
									<td><input class="canselBtn" type="button" value="ȡ��" />
									</td>
								</tr>
							</table>

						</form>
					</logic:iterate>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>

			</div>
		</div>
		<div class="clear"></div>
	</div>
	<jsp:include page="indexFooter.jsp" flush="true" />
</body>
</html>
