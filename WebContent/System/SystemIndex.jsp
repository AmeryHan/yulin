<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ϵͳ����</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/_MenuTree.js"></script>
<link href="css/_MenuTree.css" rel="stylesheet" type="text/css" />
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
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>����</h3>
					<script type="text/javascript">
						//<![CDATA[
						var arrData = new Array(
							[0,"�������","#"],
								[1,"���淢��","System/ggaofb.jsp"],
								[1,"�����б�","${pageContext.request.contextPath}/AnSelect2.do?anid=2"],
							[0,"��������","#"],
								[1,"��������","${pageContext.request.contextPath}/PersonalSelect.do?plid=2"],
								[1,"��ҵ����","${pageContext.request.contextPath}/UnitSelect.do?utid=2"],
							[0,"��֯��Ա����","#"],
								[1,"��Ա���","System/zzadd.jsp"],
								[1,"��Ա�б�","${pageContext.request.contextPath}/StructureList.do"],
							[0,"�������","#"],
								[1,"���淢��","System/ggaofb.jsp"],
								[1,"�����б�","${pageContext.request.contextPath}/AnSelect2.do?anid=2"],
							[0,"����ǰ�߹���","#"],
								[1,"ǰ�߷���","System/zcdxfb.jsp"],
								[1,"ǰ���б�","${pageContext.request.contextPath}/PolicySelect.do?pyid=2"],
							[0,"�̻���Ϣ����","#"],
								[1,"��̬����","System/shdtfb.jsp"],
								[1,"��̬�б�","${pageContext.request.contextPath}/NewSelect.do?newid=2"],
							[0,"������Ϣ����","#"],
								[1,"��Ϣ����","System/jxfb.jsp"],
								[1,"��Ϣ�б�","${pageContext.request.contextPath}/HometownSelect.do?htid=2"],
							[0,"������","#"],
								[1,"��ᷢ��","#"],
								[1,"����б�","${pageContext.request.contextPath}/PhotoSelect.do?mbid=2"],
							[0,"��������","#"],
								[1,"��������","${pageContext.request.contextPath}/LaoxSelect.do?lxid=2"],
								[1,"��Ա���","${pageContext.request.contextPath}/MemberSelect.do?mbid=2"]
						);
						var MSDN = new _MenuTree("MSDN", arrData, "images/MSDN/");
						MSDN.Draw();
						//]]>
					</script>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>
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
