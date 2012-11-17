<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��λ����</title>
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
window.location.href='${pageContext.request.contextPath}/UnitAdd.do?url='+filepath; 
} 
} 
 </script>
<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			��ǰλ�ã�<span class="fontColor">��λ����</span>
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
					<h3>��λ����</h3>
					<div class="divMargen">
						<form id="form1" name="form1" method="post"
							action="${pageContext.request.contextPath}/UnitAdd.do">
							<table width="80%" class="display" width="100%" cellpadding="0" cellspacing="0" border="0">
								<tr>
									<td class="tableFontAlign">��˾���ƣ�</td>
									<td><input class="inputStyle" name="unitName" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">ע��������</td>
									<td><input class="inputStyle" name="pname" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">�Ա�</td>
									<td><input name="psex" type="radio" value="��" />��
										&nbsp;&nbsp; <input name="psex" type="radio" value="Ů" />Ů</td>
								</tr>
	
								<tr>
									<td class="tableFontAlign">ְ��</td>
									<td><input class="inputStyle" name="unitPost" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">�绰��</td>
									<td><input class="inputStyle" name="unitPhone" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">���䣺</td>
									<td><input class="inputStyle" name="unitMailBox" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">QQ��</td>
									<td><input class="inputStyle" name="unitQQ" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">MSN��</td>
									<td><input class="inputStyle" name="unitMsn" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">��˾��ַ��</td>
									<td><input class="inputStyle" name="unitWebsite" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">���˼�飺</td>
									<td><textarea class="inputStyle" name="unitContent"
											style="height: 250px; width:520px;" cols="3" rows="10"></textarea></td>
								</tr>
								<tr>
									<td></td>
									<td align="right"><input class="canselBtn" type="submit" value="����"/>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>

		<div class="clear"></div>
	</div>
	<jsp:include page="indexFooter.jsp" flush="true" />
</body>
</html>
