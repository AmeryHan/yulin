<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录管理系统</title>
<link href="../layout.css" rel="stylesheet" type="text/css" />
<script type=""></script>
</head>

<body>
	<div id="header"></div>
	<div id="nav">
		<ul>
			<li><a href="main.jsp">登录管理系统</a>
			</li>
		</ul>
	</div>
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">系统登录</span>
		</div>

		<div>
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>系统登录</h3>
					<form id="form1" name="form1" method="post"
						action="${pageContext.request.contextPath}/System/main.do">
						<table width="50%" align="center">
							<tr height="135">
								<td width="300" align="right">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td width="300" align="right">&nbsp;</td>
								<td>&nbsp;&nbsp;&nbsp;用户名：</td>
								<td><input type="text" class="inputStyle" name="username" />
								</td>
							</tr>
							<tr>
								<td width="300" align="right">&nbsp;</td>
								<td>&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;码：</td>
								<td><input type="password" class="inputStyle" name="userpwsd" />
								</td>
							</tr>
							<tr>
								<td width="300" align="right" height="70" colspan="3">&nbsp;
									<input align="middle" class="canselBtn" type="submit" value="登录" />&nbsp;&nbsp;
									<input align="middle" name="button"	type="button" class="canselBtn" value="取消" />
								</td>
							</tr>
							<tr height="135">
								<td width="300" align="right">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
						</table>
					</form>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>

		<div class="clear"></div>
	</div>
	<jsp:include page="SystemFooter.jsp" flush="true"/>

</body>
<script> 
 
 function openUpload(){ 
 
    openUpload(null,'JPG,GIF,JPEG,PNG','5',callback);   
}
function callback(realName,saveName,maxSize){   
    $("#photo_").val(saveName);   
 
}  
function openUpload(functionId,fileType,maxSize,callback){
	var url = root+"/CommonController.jhtml?method=goFileUpload&";
	if(functionId!=null){
		url = url + "functionId="+functionId+"&";
	}
	if(fileType!=null){
		url = url + "fileType="+fileType+"&";
	}
	if(maxSize!=null){
		url = url + "maxSize="+maxSize;
	}
	var win = window.showModalDialog(url,"","dialogWidth:300px;dialogHeight:150px;scroll:no;status:no");
	if(win != null){
		var arrWin = win.split(",");
		callback(arrWin[0],arrWin[1],arrWin[2]);
	}
}
</script>
</html>
