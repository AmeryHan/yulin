<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>���ɹ���</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			��ǰλ�ã�<span class="fontColor">���ɹ���</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3><span class="fontColor">����</span></h3>
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
					<h3>���ɹ���</h3>

					<div id="ListWrapper">
						<form id="lyname">
							<table>
								<tr>
									<td rowspan="4" style="text-align: center">&nbsp; <img
										src="../../../../Documents and Settings/zhuhuaqiang/My Documents/ģ��1/mm_training_photo.jpg"
										width="70" height="100" />
									</td>
									<td>&nbsp;��������ΰ</td>

								</tr>
								<tr>
									<td>&nbsp;�Ա�Ů</td>

								</tr>
								<tr>
									<td>&nbsp;ְ�񣺾���</td>

								</tr>
								<tr>
									<td>&nbsp;��˾���ƣ�
										<ul>
											<a href="hydwmx.jsp">��Ȼ�Եù�����</a>
										</ul>
									</td>

								</tr>
								<tr>
									<td colspan="2">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���������󣬿����Լ�����һ���ª��é�����ȫ�������� *
										���ֵĻ��������ܣ� * �������ţ� �ҵ�����ʲô�ط�������ô��������⵽������ô���� *
										����ʹ����ź��ţ���ʱ��һ���������֡�ȫ�������������˽����� *
										����˵����Ҫ���ˣ������Ҽҡ���ȫ������Թ��ۣ����ڲ��˴���˵���� * �úõ����š� *
										��û���ڴ������ź����Ǿ��ֵĿ�����λ���˷��˵������ * ���Ǹ����������ò�Ƹо������ľ��֣�����������ν�����壬 *
										����˵:��Ҫ���£��Ҳ����˺���ģ���������ﾲ���������ɡ� *
										���Ӿ����л�����������˵��������˭����ô�������أ��������������... *
										�������ϱ������죬֪���Լ�˵���ˡ��������������壬 * ����˵����������.... *
										û�е���˵�꣬��廰˵����ô�������أ�����ô���������أ����������ǹ�ʵ�� *
										��ô�������أ������ܲ�����...���Һ�����ȥɽ�����ʱ���ǿ���һ�źܴ��������� *
										���Ƕ���ԣ�������ժ�˺ö�ö��д��к�����棬�����һ����ָ�������������أ� * ��ô����....�㲻����������� *
										������˵�����ǿ����������������кܴ�ܺ�����棬 *
										��������������Ǹ�����Ļ������Ѿ�����������磬����������գ���������Σ���˼䣬 * �˼����Ҫ������..., *
										�����м������������Ǻ���һ��ģ����п����𣬿��˵���� *
										���Ȳ�Ҫ�����ģ���Ҳ��֪������������ǽ������������İ���������ˣ� * ��....��������̾�˿����� *
										�������Ժ������������������é���ݶ���һ�仰Ҳû��˵�� *
										����˵:�㲻Ҫ�ѹ�����������������ȥ����....,˵�������������忴�˿����� * �߳���é��.......</td>
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
						 <input  type="submit" value="����"   align="right"   />
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
