<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ϵͳ����</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<div id="nav">
		<ul>
			<li><a href="System/main.jsp">��¼����ϵͳ</a></li>
			<li><a href="${pageContext.request.contextPath}/AnSelect.do">��ʾ��ҳ</a></li>
		</ul>
	</div>
	<div id="mainContent">
		<div id="tips">
			��ǰλ�ã�<span class="fontColor">�̻����</span>
		</div>
		<jsp:include page="SystemMenu.jsp" flush="true"/>
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>�̻����</h3>
					<p>�����������Բ�ǿ���ͼƬ���ĸ�Բ��ȫ�����ñ�ǩ���ƣ������������������HACK��ʹ��ʱֻ�����һ��class = "
						color1 "���ɣ������������ɫ�������������Զ��塣</p>
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
		<p>
			��Ȩ���У������̻� ���ַֻ�&nbsp;&nbsp;&nbsp;&nbsp; <a href="yrzdmain.html">����֧�֣��Ϻ��Ƶ���Ϣ�Ƽ�������</a>
		</p>
	</div>

</body>
</html>
