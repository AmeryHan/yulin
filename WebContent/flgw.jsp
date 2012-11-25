<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>法律顾问</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">法律顾问</span>
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
					<h3>法律顾问</h3>

					<div id="ListWrapper">
						<form id="lyname">
							<table>
								<tr>
									<td rowspan="4" style="text-align: center">&nbsp; <img
										src="../../../../Documents and Settings/zhuhuaqiang/My Documents/模板1/mm_training_photo.jpg"
										width="70" height="100" />
									</td>
									<td>&nbsp;姓名：马伟</td>

								</tr>
								<tr>
									<td>&nbsp;性别：女</td>

								</tr>
								<tr>
									<td>&nbsp;职务：经理</td>

								</tr>
								<tr>
									<td>&nbsp;公司名称：
										<ul>
											<a href="hydwmx.jsp">悠然自得工作室</a>
										</ul>
									</td>

								</tr>
								<tr>
									<td colspan="2">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当他醒来后，看见自己躺在一间简陋的茅草屋里，全身动弹不的 *
										惊恐的环顾着四周， * 大声喊着： 我到底在什么地方，我怎么会在这里，这到底是怎么回事 *
										，他痛苦的呐喊着，这时，一个矮矮胖胖、全身红红的物件，走了进来， *
										对他说：不要喊了，你在我家。你全身粉碎性骨折，现在不宜大声说话， * 好好的躺着。 *
										他没有在大声的呐喊而是惊恐的看着这位似人非人的物件， * ，那个红红的物件，貌似感觉出他的惊恐，移了移下所谓的身体， *
										对他说:不要害怕，我不会伤害你的，你就在这里静静的养病吧。 *
										他从惊恐中换过来对着他说：那你是谁，怎么会这样呢，长的这样奇丑呢... *
										。他马上闭上了嘴，知道自己说错话了。它移了移下身体， * 对他说：我是酸枣.... *
										没有等他说完，你插话说：怎么会这样呢，你怎么会是酸枣呢，酸枣明明是果实啊 *
										怎么会是人呢，不可能不可能...，我和酸甜去山间玩的时候，是看到一颗很大酸枣树， *
										我们都想吃，而且我摘了好多好多有大有红的酸枣，而且我还亲手给酸甜吃酸枣了呢， * 怎么会呢....你不断难自语道， *
										他接着说：你是看到是酸枣树，是有很大很红的酸枣， *
										那是我们酸枣界那个败类的化身，它已经把我们酸枣界，搞的永无宁日，现在有来危害人间， * 人间真的要大乱了..., *
										那你有见到酸甜吗？她是和我一起的，你有看见吗，快点说啊。 *
										你先不要激动的，我也不知道，我想估计是叫我们那酸枣界的败类给收走了， * 哎....它长长的叹了口气。 *
										他听了以后呆呆的躺着那里望着茅草屋顶，一句话也没有说。 *
										它有说:你不要难过，等你伤样好了在去找她....,说完移了移下身体看了看他， * 走出了茅屋.......</td>
								</tr>
								<!--
					<tr>
					<td>
					 <textarea type="text"  value=""   style="text-align:left" cols="60"  rows="5"  >
					 </textarea>
					</td>
					</tr>
					<tr>
					<td  style="text-align:right;">
						 <input  type="submit" value="保存"   align="right"   />
					</td>
					</tr>
					-->
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
