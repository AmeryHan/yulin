<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>��¼����ϵͳ</title>
<link href="../layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header"></div>	
	<div id="nav">
    	<ul>
        <li><a href="main.jsp">��¼����ϵͳ</a></li>
         
    
 
         
    	</ul>
    </div>
<div id="mainContent">
	<div id="tips">��ǰλ�ã�<span class="fontColor">ϵͳ��¼</span></div>
     
	   <div >
    	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                	<h3>ϵͳ��¼</h3>
					<p>
                     <form id="form1" name="form1" method="post" action="${pageContext.request.contextPath}/main.do">
                <table width="80%"  >
                 
					   <tr>
                        <td>&nbsp;&nbsp;&nbsp;�û�����</td>
                        <td><input class="inputStyle"  name="username"/></td>
                    </tr>
                    <tr>
                        <td> &nbsp;&nbsp;&nbsp;���룺</td>
                        <td><input class="inputStyle"  name="userpwsd"/></td>
                    </tr>
               
                 
				 
                    <tr>
                      <td height="35" align="right">&nbsp;&nbsp;&nbsp;
                      <input align="middle" class="canselBtn"  type="submit"  value="��¼" /></td>
                        <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <input align="middle"  name="button" type="button" class="canselBtn"  value="ȡ��" /></td>
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
<div id="footer">
 
    <hr />
<p>��Ȩ���У������̻� ���ַֻ�&nbsp;&nbsp;&nbsp;&nbsp; <a
	href="yrzdmain.html">����֧�֣��Ϻ��Ƶ���Ϣ�Ƽ�������</a></p>
</div>

</body>
<script> 
 
 function openUpload(){ 
 
    openUpload(null,'JPG,GIF,JPEG,PNG','5',callback);   
}
function callback(realName,saveName,maxSize){   
    $("#photo_").val(saveName);   
 
}  
function openUpload(functionId,fileType,maxSize,callback){
	var url = root+"/CommonController.jhtml?method=goFileUpload&";
	if(functionId!=null){
		url = url + "functionId="+functionId+"&";
	}
	if(fileType!=null){
		url = url + "fileType="+fileType+"&";
	}
	if(maxSize!=null){
		url = url + "maxSize="+maxSize;
	}
	var win = window.showModalDialog(url,"","dialogWidth:300px;dialogHeight:150px;scroll:no;status:no");
	if(win != null){
		var arrWin = win.split(",");
		callback(arrWin[0],arrWin[1],arrWin[2]);
	}
}
</script>
</html>
