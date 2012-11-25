<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>企业申请</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
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
window.location.href='${pageContext.request.contextPath}/UnitAdd.do?url='+filepath; 
} 
} 
 </script>
<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">企业申请</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3><span class="fontColor">导航</span></h3>
					<jsp:include page="indexNav.jsp" flush="true" />
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
			<!-- registerbtn       -->
			<jsp:include page="indexRegister.jsp" flush="true"/>
		</div>
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>企业申请</h3>
					<div class="divMargen">
						<form id="form1" name="form1" method="post"
							action="${pageContext.request.contextPath}/UnitAdd.do">
							<table width="80%" class="display" width="100%" cellpadding="0" cellspacing="0" border="0">
								<tr>
									<td class="tableFontAlign">公司名称：</td>
									<td><input class="inputStyle" name="unitName" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">注册姓名：</td>
									<td><input class="inputStyle" name="pname" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">性别：</td>
									<td><input name="psex" type="radio" value="男" checked/>男
										&nbsp;&nbsp; <input name="psex" type="radio" value="女" />女</td>
								</tr>
	
								<tr>
									<td class="tableFontAlign">职务：</td>
									<td><input class="inputStyle" name="unitPost" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">电话：</td>
									<td><input class="inputStyle" name="unitPhone" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">邮箱：</td>
									<td><input class="inputStyle" name="unitMailBox" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">QQ：</td>
									<td><input class="inputStyle" name="unitQQ" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">MSN：</td>
									<td><input class="inputStyle" name="unitMsn" />
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">公司网址：</td>
									<td><input class="inputStyle" name="unitWebsite" value="http://"/>
									</td>
								</tr>
								<tr>
									<td class="tableFontAlign">个人简介：</td>
									<td><textarea class="inputStyle" name="unitContent"
											style="height: 250px; width:520px;" cols="3" rows="10"></textarea></td>
								</tr>
								<tr>
									<td></td>
									<td align="right"><input class="canselBtn" type="submit" value="申请"/>
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
