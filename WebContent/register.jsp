<%@ page language="java" pageEncoding="GBK" isELIgnored="false" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<title>无标题文档</title>
</head>

<body>
<div id="header"></div>	
<jsp:include page="indexMenu.jsp" flush="true"/>
<div id="registerWrapper">
	<div id="tips">当前位置：<span class="fontColor">个人申请</span></div>
	<div class="sharp color1">
    	<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
        	<div class="content">  
                <form id="form1" name="form1" method="post" action="">
                <table width="80%"  >
                    <tr>
                        <td>头像：</td>
                        <td><input name="" type="image" /></td>
                    </tr>
                    <tr>
                        <td>注册姓名：</td>
                        <td><input class="inputStyle"  /></td>
                    </tr>
                    <tr>
                        <td>性别：</td>
                        <td><input name="" type="radio" value="" />男 &nbsp;&nbsp; <input name="" type="radio" value="" />女</td>
                    </tr>
                    <tr>
                        <td>出生日期：</td>
                        <td><input class="inputStyle" /></td>
                    </tr>
                    <tr>
                        <td>电话：</td>
                        <td><input class="inputStyle" /></td>
                    </tr>
                    <tr>
                        <td>邮箱：</td>
                        <td><input class="inputStyle" /></td>
                    </tr>
                    <tr>
                        <td>qq：</td>
                        <td><input class="inputStyle" /></td>
                    </tr>
                      <tr>
                        <td>msn：</td>
                        <td><input class="inputStyle" /></td>
                    </tr>
                    <tr>
                        <td>审核状态：</td>
                        <td><input class="inputStyle" /></td>
                    </tr>
                    <tr>
                        <td>现居地址：</td>
                        <td><input class="inputStyle" /></td>
                    </tr>
                    <tr>
                        <td>家乡：</td>
                        <td><input class="inputStyle" /></td>
                    </tr>
                    <tr>
                        <td>个人简介：</td>
                        <td>
                            <textarea  class="inputStyle"name="" cols="" rows="5"></textarea>
                       </td>
                    </tr>
                    <tr>
                        <td align="right"><input align="right" class="regBtn" type="button" value="注册" /></td>
                        <td ><input class="canselBtn" type="button" value="取消" /></td>
                    </tr>
                </table>
                </form>
                    </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
            </div>
    </div>
</div>
<div class="clear"></div>
<div id="footer">
  <ul>
              <li><a href="#">商会介绍</a></li>
        <li><a href="#">商会动态</a></li>
        <li><a href="#">会员单位</a></li>
        <li><a href="#">管理前线</a></li>
        <li><a href="#">市场动态</a></li>
		<li><a href="#">政策动向</a></li>
        <li><a href="#">物华心语</a></li>
        <li><a href="#">法律维权示</a></li>
        <li><a href="#">联系我们</a></li>
    </ul>
    <hr />
<p>版权所有：陕西商会 榆林分会&nbsp;&nbsp;&nbsp;&nbsp; <a
	href="yrzdmain.html">技术支持：悠然自得工作室</a></p>
</div>

</body>
</html>
