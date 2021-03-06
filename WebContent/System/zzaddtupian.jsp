<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String str = request.getSession().getServletContext()
			.getRealPath("photosc");
	
	String str1 = request.getSession().getServletContext().getServerInfo();
	str += "\\";
	
	String url = new String(request.getRequestURL());
	
	//System.out.println(basePath+request.getQueryString());
	//System.out.println(request.getServletPath());
	//System.out.println(request.getHeader("Referer"));
	//System.out.println(request.get);
	
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人员添加</title>
<link href="../layout.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript">
	function validateFile() {
		var flag = true;
		var fileObject = document.getElementById("file");
		var errorObject = document.getElementById("error");
		var filepath = fileObject.value;//路径
		if (filepath == undefined || filepath == "") {
			fileObject.focus();
			errorObject.innerText = "请选择上传文件！";
			flag = false;
		} else {
			var fileArr = filepath.split("\\");
			var fileTArr = fileArr[fileArr.length - 1].toLowerCase().split(".");
			var filetype = fileTArr[fileTArr.length - 1];
			if (filetype != "jpg" && filetype != "jpg") {
				fileObject.focus();
				errorObject.innerText = "上传文件必须为jpg文件！";
				flag = false;
			} else {
				errorObject.innerText = "";
			}
		}
		//进行其他相关校验 
		if (flag) {
			alert("文件上传成功" + filepath);
			window.location.href = '${pageContext.request.contextPath}/StructureAdd.do?url='
					+ filepath + '&tupdid=1';
		}
	}
</script>
<body>
	<div id="header"></div>
	<jsp:include page="SystemNav.jsp" flush="true" />
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">人员添加</span>
		</div>
		<jsp:include page="SystemMenu.jsp" flush="true" />
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>替换头像</h3>
					<div class="divMargen">
						<table width="80%" class="display" width="100%" cellpadding="0" cellspacing="0" border="0">
							
							<tr>
								<td class="tableFontAlign">姓名：</td>
								<td>
								<input class="inputStyle" name="pName" value="${map.sname}" />
								<input type="hidden" class="inputStyle" name="zuzhiid" value="${map.id}" />
								</td>
							</tr>
							
							<tr>
								<td class="tableFontAlign">头像：</td>
								<td height="144px;"><img
									src="<%=basePath%>photosc/<%=request.getParameter("fileName")%>"
									alt="<%=request.getParameter("fileName")%>"
									style="width: 142px; height: 142px; border: 1px solid grey;" />
								</td>

							
							<html:form action="/upload.do" method="post"
								enctype="multipart/form-data">
								<tr>
									<td class="tableFontAlign"><html:hidden
											property="requestURL"
											value="<%=new String(request.getRequestURL()) %>" />上传图片：</td>
									<td><html:file property="file" />&nbsp;<html:submit>上传</html:submit>&nbsp;</td>
								</tr>
							</html:form>
						
							<tr>
								<td class="tableFontAlign"></td>
								<td height="20px;"></td>
							</tr>
							<form id="form1" name="form1" method="post"
								action="${pageContext.request.contextPath}/StructureAdd.do?&tupianOnly=true&id=${map1.id }">
							<tr>
								
								<input type="hidden" class="inputStyle" name="zuzhiid" value="${map.id}" />
								</td>
							</tr>

							<tr>
								<td><input type="hidden" name="photname" value="<%=request.getParameter("fileName")%>" /></td>
								<td align="right"><input class="canselBtn" type="submit"
									value="确认" /></td>
							</tr>
							</form>
						</table>
					</div>
					<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>

				</div>
			</div>
			</div>
			<div class="clear"></div>
		</div>
		
		<jsp:include page="SystemFooter.jsp" flush="true" />
</body>
</html>
