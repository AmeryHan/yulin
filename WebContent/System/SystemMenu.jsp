<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<script type="text/javascript" src="js/_MenuTree.js"></script>
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
								[1,"公告发布","System/ggaofb.jsp"],
								[1,"公告列表","${pageContext.request.contextPath}/AnSelect2.do?anid=2"],
							[0,"审批管理","#"],
								[1,"个人审批","${pageContext.request.contextPath}/PersonalSelect.do?plid=2"],
								[1,"企业审批","${pageContext.request.contextPath}/UnitSelect.do?utid=2"],
							[0,"组织人员管理","#"],
								[1,"人员添加","System/zzadd.jsp"],
								[1,"人员列表","${pageContext.request.contextPath}/StructureList.do"],
							[0,"公告管理","#"],
								[1,"公告发布","System/ggaofb.jsp"],
								[1,"公告列表","${pageContext.request.contextPath}/AnSelect2.do?anid=2"],
							[0,"管理前线管理","#"],
								[1,"前线发布","System/zcdxfb.jsp"],
								[1,"前线列表","${pageContext.request.contextPath}/PolicySelect.do?pyid=2"],
							[0,"商会信息管理","#"],
								[1,"动态发布","System/shdtfb.jsp"],
								[1,"动态列表","${pageContext.request.contextPath}/NewSelect.do?newid=2"],
							[0,"家乡信息管理","#"],
								[1,"信息发布","System/jxfb.jsp"],
								[1,"信息列表","${pageContext.request.contextPath}/HometownSelect.do?htid=2"],
							[0,"相册管理","#"],
								[1,"相册发布","#"],
								[1,"相册列表","${pageContext.request.contextPath}/PhotoSelect.do?mbid=2"],
							[0,"其他管理","#"],
								[1,"老乡留言","${pageContext.request.contextPath}/LaoxSelect.do?lxid=2"],
								[1,"会员随笔","${pageContext.request.contextPath}/MemberSelect.do?mbid=2"]
						);
						var MSDN = new _MenuTree("MSDN", arrData, "images/MSDN/");
						MSDN.Draw();
						//]]>
					</script>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>