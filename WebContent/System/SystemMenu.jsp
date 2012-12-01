<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<script language='javascript' src='js/jquery.js'></script>
<script language='javascript' src='js/jquery.dataTables.js'></script>
<script language='javascript' src='js/_MenuTree.js'></script>
<style type="text/css" title="currentStyle">
			@import "css/demo_page.css";
			@import "css/demo_table.css";
		</style>
<link href="css/_MenuTree.css" rel="stylesheet" type="text/css" />
<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>导航</h3>
					<script type="text/javascript">
						//<![CDATA[
						var arrData = new Array(
							[0,"公告管理","#"],
								[1,"公告发布","${pageContext.request.contextPath}/AnSelOne.do?type=houtai"],
								[1,"公告列表","${pageContext.request.contextPath}/AnSelect2.do?anid=2"],
							[0,"审批管理","#"],
								[1,"个人审批","${pageContext.request.contextPath}/PersonalSelect.do?plid=2"],
								[1,"企业审批","${pageContext.request.contextPath}/UnitSelect.do?utid=2"],
							[0,"组织人员管理","#"],
								[1,"人员添加","${pageContext.request.contextPath}/StructureShow.do?type=houtai"],
								[1,"人员列表","${pageContext.request.contextPath}/StructureList.do"],
							[0,"管理前线管理","#"],
								[1,"前线发布","${pageContext.request.contextPath}/zcdxfb.do"],
								[1,"前线列表","${pageContext.request.contextPath}/PolicySelect.do?pyid=2"],
							[0,"商会动态管理","#"],
								[1,"动态发布","${pageContext.request.contextPath}/shdtfb.do"],
								[1,"动态列表","${pageContext.request.contextPath}/NewSelect.do?newid=2"],
							[0,"家乡风采管理","#"],
								[1,"风采发布","${pageContext.request.contextPath}/jxfb.do"],
								[1,"风采列表","${pageContext.request.contextPath}/HometownSelect.do?htid=2"],
							[0,"相册管理","#"],
								[1,"相册发布","#"],
								[1,"相册列表","${pageContext.request.contextPath}/PhotoSelect.do?mbid=2"],
							[0,"其他管理","#"],
								//[1,"老乡留言","${pageContext.request.contextPath}/LaoxSelect.do?lxid=2"],
								[1,"会员随笔列表","${pageContext.request.contextPath}/MemberSelect.do?mbid=2"],
								[1,"商会介绍","${pageContext.request.contextPath}/otherSelect.do?type=shjs"],
								[1,"联系我们","${pageContext.request.contextPath}/otherSelect.do?type=lxwm"]
						);
						var MSDN = new _MenuTree("MSDN", arrData, "images/MSDN/");
						MSDN.Draw();
						//]]>
					</script>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>