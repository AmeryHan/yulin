<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<script type="text/javascript" src="js/_MenuTree.js"></script>
<link href="css/_MenuTree.css" rel="stylesheet" type="text/css" />
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