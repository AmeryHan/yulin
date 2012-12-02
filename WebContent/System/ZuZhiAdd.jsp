<%@ page language="java" pageEncoding="GBK" isELIgnored="false" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 String str= request.getSession().getServletContext().getRealPath("photosc"); 
 str+="\\";
//String str="http://erickey.gotoip3.com/yulinsh/photosc/";

%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>组织人员添加</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript"> 
function validateFile(){ 
var flag=true; 
var fileObject=document.getElementById("file"); 
var errorObject=document.getElementById("error"); 
var filepath=fileObject.value;//路径
if(filepath==undefined||filepath==""){ 
fileObject.focus(); 
errorObject.innerText="请选择上传文件！"; 
flag=false; 
}else{ 
var fileArr=filepath.split("\\"); 
var fileTArr=fileArr[fileArr.length-1].toLowerCase().split("."); 
var filetype=fileTArr[fileTArr.length-1]; 
if(filetype!="jpg"&&filetype!="jpg"){ 
fileObject.focus(); 
errorObject.innerText="上传文件必须为jpg文件！"; 
flag=false; 
}else{ 
errorObject.innerText=""; 
} 
} 
//进行其他相关校验 
if(flag){ 
alert("文件上传成功"+filepath); 
window.location.href='${pageContext.request.contextPath}/StructureAdd.do?url='+filepath+'&tupdid=1'; 
} 
} 
 </script>
<body>
<div id="header"></div>	
	<jsp:include page="SystemNav.jsp" flush="true"/>
<div id="mainContent">
	<div id="tips">当前位置：<span class="fontColor">组织人员添加</span></div>
    <jsp:include page="SystemMenu.jsp" flush="true"/>
    <div id="mainRight">
   	  <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
					 	<h3>组织人员添加</h3>
					  	   <logic:iterate id="map1" collection="${requestScope.arr}" >
                <form id="form1" name="form1" method="post" action="${pageContext.request.contextPath}/StructureAdd.do?&tupdid=2&id=${map1.id }">
                  <b class="b5"></b>
                  <table width="80%"  >
              
                        <tr>
                        <td>&nbsp;&nbsp;&nbsp;头像：</td>
                  
                        <td> 
                        
     	<img src="<%=str %>${map1.stoux }" height="142px" alt=""   
            style="width: 136px" />
			 
		 </td>
                    </tr>
                
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;姓名：</td>
                        <td><input class="inputStyle"  name="pName"/></td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;性别：</td>
                        <td><input name="psex" type="radio" value="男" />男 &nbsp;&nbsp; <input name="psex" type="radio" value="女" />女</td>
                    </tr>
                    
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;商会职务：</td>
                        <td>    
                        <select  name="pHometown">
	                        <option value="名誉会长">名誉会长</option>
	                        <option  value="会长">会长</option>
	                        <option  value="副会长">副会长</option>
	                        <option  value="秘书长">秘书长</option>
	                        <option  value="副秘书长">副秘书长</option>
                        </select>
                        
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp; 简介：</td>
                        <td>
                            <textarea   name="pContent" cols="60" rows="10"></textarea>
                       </td>
                    </tr>
                    <tr>
                        <td align="right"><input align="right" class="regBtn" type="submit" value="注册"  /></td>
                        <td ><input class="canselBtn" type="button" value="取消"  /></td>
                    </tr>
                </table>
          
                </form>
                          
                            </logic:iterate>         </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
                 
                    </div>
    </div>
    <div class="clear"></div>
</div>
<jsp:include page="SystemFooter.jsp" flush="true"/>

</body>
</html>
