<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��λ����</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript"> 
function validateFile(){ 
var flag=true; 
var fileObject=document.getElementById("file"); 
var errorObject=document.getElementById("error"); 
var filepath=fileObject.value;//·��
if(filepath==undefined||filepath==""){ 
fileObject.focus(); 
errorObject.innerText="��ѡ���ϴ��ļ���"; 
flag=false; 
}else{ 
var fileArr=filepath.split("\\"); 
var fileTArr=fileArr[fileArr.length-1].toLowerCase().split("."); 
var filetype=fileTArr[fileTArr.length-1]; 
if(filetype!="jpg"&&filetype!="jpg"){ 
fileObject.focus(); 
errorObject.innerText="�ϴ��ļ�����Ϊjpg�ļ���"; 
flag=false; 
}else{ 
errorObject.innerText=""; 
} 
} 
//�����������У�� 
if(flag){ 
alert("�ļ��ϴ��ɹ�"+filepath); 
window.location.href='${pageContext.request.contextPath}/UnitAdd.do?url='+filepath; 
} 
} 
 </script>
<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true"/>
	<div id="mainContent">
		<div id="tips">
			��ǰλ�ã�<span class="fontColor">��λ����</span>
		</div>
		<div id="mainLeft">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>
						<span class="fontColor"><big><big>M</big>
						</big>enu</span>����
					</h3>
					<div id="menuLeft">
						<ul>
							<li><a href="chamberDetial.jsp">�̻����</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/NewSelect.do?newid=1">�̻ᶯ̬</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">��Ա��λ</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">����ǰ��</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">��Ա���</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">����</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">��������</a>
							</li>
							<li><a
								href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&str1=0&str2=6">ͼƬչʾ</a>
							</li>
						</ul>
					</div>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
			<!-- registerbtn       -->
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<div id="registerbtn">
						<input type="button" value="" class="personbtn"
							onclick="window.location.href='gerensq.jsp'; " /> <input
							type="button" value="" class="companybtn"
							onclick="window.location.href='danwsq.jsp'; " /> <input
							type="button" value="" class="linkbtn"
							onclick="window.location.href='lxwm.jsp'; " />
					</div>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>
		<div id="mainRight">
			<div class="sharp color1">
				<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b>
				<div class="content">
					<h3>��λ����</h3>

					<form id="form1" name="form1" method="post"
						action="${pageContext.request.contextPath}/UnitAdd.do">
						<table width="80%">

							<tr>
								<td>&nbsp;&nbsp;&nbsp;��˾���ƣ�</td>
								<td><input class="inputStyle" name="unitName" />
								</td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;ע��������</td>
								<td><input class="inputStyle" name="pname" />
								</td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;�Ա�</td>
								<td><input name="psex" type="radio" value="��" />��
									&nbsp;&nbsp; <input name="psex" type="radio" value="Ů" />Ů</td>
							</tr>

							<tr>
								<td>&nbsp;&nbsp;&nbsp;ְ��</td>
								<td><input class="inputStyle" name="unitPost" />
								</td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;�绰��</td>
								<td><input class="inputStyle" name="unitPhone" />
								</td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;���䣺</td>
								<td><input class="inputStyle" name="unitMailBox" />
								</td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;QQ��</td>
								<td><input class="inputStyle" name="unitQQ" />
								</td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;msn��</td>
								<td><input class="inputStyle" name="unitMsn" />
								</td>
							</tr>
							<!-- 
                    <tr>
                        <td >&nbsp;&nbsp;&nbsp;���״̬��</td>
                        <td><input class="inputStyle" name="unitAuditState" /></td>
                    </tr>
                     -->
							<tr>
								<td>&nbsp;&nbsp;&nbsp;��˾��ַ��</td>
								<td><input class="inputStyle" name="unitWebsite" />
								</td>
							</tr>

							<tr>
								<td>&nbsp;&nbsp;&nbsp;���˼�飺</td>
								<td><textarea class="inputStyle" name="unitContent"
										style="height: 50px;" cols="3" rows="10"></textarea></td>
							</tr>
							<tr>
								<td height="35" align="right">&nbsp;&nbsp;&nbsp;<input
									align="middle" class="canselBtn" type="submit" value="ע��" />
								</td>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;<input align="middle" name="button"
									type="button" class="canselBtn" value="ȡ��" />
								</td>
							</tr>
						</table>
					</form>
				</div>
				<b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>
			</div>
		</div>

		<div class="clear"></div>
	</div>
	<div id="footer">
		<ul>
			<li><a href="chamberDetial.jsp">�̻����</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/NewSelect.do?newid=1">�̻ᶯ̬</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/UnitSelect.do?utid=1">��Ա��λ</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">����ǰ��</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">��Ա���</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">����</a>
			</li>
			<li><a
				href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">��������</a>
			</li>

			<li><a
				href="${pageContext.request.contextPath}/PhotoSelect.do?mbid=1&str1=0&str2=6">ͼƬչʾ</a>
			</li>
			<!-- 
	<li><a href="flgw.jsp">���ɹ���</a></li>
	 -->
			<li><a href="lxwm.jsp">��ϵ����</a>
			</li>
		</ul>
		<hr />
		<p>
			��Ȩ���У������̻� ���ַֻ�&nbsp;&nbsp;&nbsp;&nbsp; <a href="yrzdmain.html">����֧�֣��Ϻ��Ƶ���Ϣ�Ƽ�������</a>
		</p>
	</div>

</body>
</html>
