<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ page import="java.util.*,com.yulinsh.vo.StructureVO;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="index.css" rel="stylesheet" type="text/css" />
<title>��ҳ</title>
</head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String str= request.getSession().getServletContext().getRealPath("photosc"); 
str+="\\";
System.err.println(path+"="+str);
String str1="";
 
%>
<body>
<div id="header"></div>
<div id="nav">
<ul>
	 <li><a href="${pageContext.request.contextPath}/AnSelect.do">��ҳ</a></li>
	<li><a href="chamberDetial.jsp">�̻����</a></li>
	<li><a
		href="${pageContext.request.contextPath}/NewSelect.do?newid=1">�̻ᶯ̬</a></li>
	<li><a href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">��Ա��λ</a></li>
	<li><a
		href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">����ǰ��</a></li>
	<li><a
		href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">��Ա���</a></li>
	<li><a
		href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">����</a></li>
	<li><a
		href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">��������</a></li>
	<li><a href="lxwm.jsp">��ϵ����</a></li>

</ul>
</div>
main.html">����֧�֣��Ϻ��Ƶ���Ϣ�Ƽ�������</a></p>
</div>
</body>
</html>
