<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理前线发布</title>
<link href="../layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
	<jsp:include page="SystemMenu.jsp" flush="true"/>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">管理前线发布</span></div>
    <jsp:include page="SystemMenu.jsp" flush="true"/>
	   <div id="mainRight">
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	<h3>管理前线发布</h3>
					<p>
                     <form id="form1" name="form1" method="post" action="${pageContext.request.contextPath}/PolicyAdd.do">
                <table width="80%"  >
                 
					   <tr>
                        <td>&nbsp;&nbsp;&nbsp;标题：</td>
                        <td><input class="inputStyle"  name="policyTitle"/></td>
                    </tr>
                    <tr>
                        <td> &nbsp;&nbsp;&nbsp;发布人：</td>
                        <td><input class="inputStyle"  name="policyAuthor"/></td>
                    </tr>
               
                 <!-- 
					   <tr>
                        <td>&nbsp;&nbsp;&nbsp;发布时间：</td>
                        <td><input class="inputStyle" name="policyTime"/></td>
                    </tr>
                 
                 -->
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;内容：</td>
                        <td >
                            <textarea   name="policyContent"  style="height:250px;" cols="60" rows="50"></textarea>                       </td>
                    </tr>
                    <tr>
                      <td height="35" align="right">&nbsp;&nbsp;&nbsp;
                      <input align="middle" class="canselBtn"  type="submit"  value="发布" /></td>
                        <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <input align="middle"  name="button" type="button" class="canselBtn" value="取消" /></td>
                    </tr>
                </table>
                </form>    
				</p>
                </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
            </div>
    </div>
 
    <div class="clear"></div>
</div>
<jsp:include page="SystemFooter.jsp" flush="true"/>

</body>
</html>
