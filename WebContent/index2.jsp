<%@ page language="java" pageEncoding="GBK" isELIgnored="false" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 
<link href="index.css" rel="stylesheet" type="text/css" />
<title>��ҳ</title>
</head>

<body>
<div id="header"></div>	
<div id="nav">
	<ul>
	    <li><a href="index.jsp">��ҳ</a></li>
        <li><a href="chamberDetial.jsp">�̻����</a></li>
        <li><a href="${pageContext.request.contextPath}/NewSelect.do?newid=1">�̻ᶯ̬</a></li>
        <li><a href="huiyuandw.jsp">��Ա��λ</a></li>
        <li><a href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">����ǰ��</a></li>
        <li><a href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">��Ա���</a></li>
        <li><a href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">����</a></li>
        <li><a href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">��������</a></li>
        <li><a href="lxwm.jsp">��ϵ����</a></li>
 
	</ul>
</div>
<div id="container">
  <div id="tips">��ǰλ�ã�<span class="fontColor">��ҳ</span></div>
  <div id="lineWrapper">
    <div id="noticeWrapper">
      <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
        <div class="content">  
          <h3><span class="fontColor">����</span></h3>
              <div id="notice">
                  <span class="more"><a href="#">����</a></span>
                <ul>
				<table>
				<logic:iterate id="map" collection="${requestScope.arr}" >
<tr id="r1">
<td  id="tt" style="text-align:left"><a href="ggmx.jsp">${map.anTitle} </a></td>

<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;${map.anTime}</td>
</tr>
</logic:iterate>
<!--  <td width="180px" align="left">&nbsp;<a href="${pageContext.request.contextPath}/AnSelOne.do?id=${map.anID}"></a></td>
				<tr id="r1">
				<td  id="tt" style="text-align:left"><a href="ggmx.jsp">����һ </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
					<tr id="r1">
				<td style="text-align:left"><a href="ggmx.jsp">8���ٿ��������</a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
					<tr id="r1">
				<td style="text-align:left"><a href="ggmx.jsp">������</a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
					<tr id="r1">
				<td style="text-align:left"><a href="ggmx.jsp">������</a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
					<tr id="r1">
				<td style="text-align:left"><a href="ggmx.jsp">������</a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
				-->
				</table>
                </ul>
              </div>
        </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
      </div>
    </div>
    <!--middle-->
     <div id="MidWrapper">
      <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                      <h3><span class="fontColor">�̻ᶯ̬</span></h3>
                  <div id="notice">
                          <span class="more"><a href="shanghuidt.jsp">����</a></span>
                        <ul>
						<table>
						<logic:iterate id="map1" collection="${requestScope.arr1}" >
	<tr id="r1">
	<td  id="t1" style="text-align:left">&nbsp;<a href="hdtmx.jsp">${map1.newsTitle}</a></td>
   <td style="text-align:right">&nbsp;${map1.newsTime}</td>
   </tr>
</logic:iterate>
						<!-- 
				<tr id="r1">${pageContext.request.contextPath}/NewSelOne.do?id=${map1.newsId}
			 
				<td  id="t1" style="text-align:left"><a href="shdtmx.jsp">1���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr id="r1">
				<td  id="t1" style="text-align:left"><a href="shdtmx.jsp">2���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
				<tr id="r1">
				<td  id="t1" style="text-align:left"><a href="shdtmx.jsp">3���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
				<tr id="r1">
				<td  id="t1" style="text-align:left"><a href="shdtmx.jsp">4���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
				<tr id="r1">
				<td  id="t1" style="text-align:left"><a href="shdtmx.jsp">5���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
				 -->
				</table>
                            
             
                        </ul>
                      </div>
                </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
      </div>
    </div>
    <!--right-->
    <div id="noticeWrapper">
      <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
        <div class="content">  
          <h3><span class="fontColor">��ҵ��Ա</span></h3>
              <div id="notice">
                  <span class="more"><a href="huiyuandw.jsp">����</a></span>
                <div id="personInfo">
					<table>
				<tr> <td><img   src="images/logo.gif" width="50"  height="40"/></td>
				<td>&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;���ڻ����ȥ�����¸п���֣���˵ļ�����������ջ��������ڵľ��Ŀ��ȵ��ң�������·...</td></tr>
				
				</table> </div>
              </div>
        </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
      </div>
    </div>
    <div style="clear:both"></div>
  </div>
  <div style="clear:both"></div>
    <div id="lineWrapper">
    <div id="noticeWrapper">
      <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
        <div class="content">  
          <h3><span class="fontColor">ע��</span></h3>
             <div id="notice">
             <input type="button" value="" class="personbtn"  onclick="window.location.href='gerensq.jsp'; " />
              <input type="button" value="" class="companybtn"  onclick="window.location.href='danwsq.jsp'; " />
               <input type="button" value="" class="linkbtn"  onclick="window.location.href='lxwm.jsp'; " />
             </div>
        </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
      </div>
    </div>
    <!--middle-->
     <div id="MidWrapper">
      <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                      <h3><span class="fontColor">����ǰ��</span></h3>
                      <div id="notice">
                          <span class="more"><a href="guanliqx.jsp">����</a></span>
                        <ul>
						<table>
						<tr id="r1"> 
						<td style="text-align:left" id="t1">  <a href="glqxmx.jsp">1���Ϻ��ٰ촦���̻���</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t1">  <a href="glqxmx.jsp">2���Ϻ��ٰ촦���̻���</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t1">  <a href="glqxmx.jsp">3���Ϻ��ٰ촦���̻���</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t1">  <a href="glqxmx.jsp">4���Ϻ��ٰ촦���̻���</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t1">  <a href="glqxmx.jsp">5���Ϻ��ٰ촦���̻���</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
						</table>
                          <!--
                            <li><a href="#">2���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">3���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">4���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">5���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
							-->
                        </ul>
                      </div>
                </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
      </div>
    </div>
    <!--right-->
    <div id="noticeWrapper">
      <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
        <div class="content">  
          <h3><span class="fontColor">���˻�Ա</span></h3>
              <div id="notice">
                  <span class="more"><a href="hyry.jsp">����</a></span>
                <div id="personInfo">
				<table>
				<tr> <td><img   src="images/headb2.png" width="50"  height="80"/></td>
				<td>&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;���ڻ����ȥ�����¸п���֣���˵ļ�����������ջ��������ڵľ��Ŀ��ȵ��ң�������·...</td></tr>
				
				</table>
				</div>
              </div>
        </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
      </div>
    </div>
    <div style="clear:both"></div>
  </div>
  <div style="clear:both"></div>
  <!--bottom-->
  <div id="lineWrapper">
       <div id="OrgInsWrapper">
      	<div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
        <div class="content">  
          <h3><span class="fontColor">��֯����</span></h3>
              <div id="OrgIns1">
                  <span class="more"><a href="zzjg.jsp">����</a></span>
                  <dl>
                    <dt>�̻����</dt>
                  </dl>
                  <dl>
                	<dt>����᳤</dt>
                	<dd>
                    	<ul>
                        	<li><a href="hyrymx.jsp">����</a></li>
                            <li>����</li>
                        </ul>
                    </dd>
                  </dl>
                  <dl>
                	<dt>�᳤</dt>
                	<dd>
                    	<ul>
                        	<li><a href="hyrymx.jsp">����&nbsp;&nbsp;ĳĳ��˾</a></li>
                        </ul>
                    </dd>
                  </dl>
                  <dl>
                	<dt>����᳤</dt>
                	<dd>
                    	<ul>
                        	<li><a href="hyrymx.jsp">����&nbsp;&nbsp;ĳĳ��˾</a></li>
                            <li><a href="hyrymx.jsp">����&nbsp;&nbsp;ĳĳ��˾</a></li>
                        </ul>
                    </dd>
                  </dl>
                  <dl>
                	<dt>����</dt>
                  </dl>
              
 
                  
              </div>
        </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
      </div>
    </div>
      <!--middle-->
     <div id="SbWrapper">
      <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
                <div class="content">  
                      <h3><span class="fontColor">��Ա���</span></h3>
                      <div id="OrgIns">
					            <span class="more"><a href="shicdt.jsp">����</a></span>
               
                        <ul>
								<table>
				<tr  >
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">1���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr  >
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">2���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr   >
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">3���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr  >
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">4���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr >
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">5���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				</table>
				<!--
                            <li><a href="hysbmx.jsp">1���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">2���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">3���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">4���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">5���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
							-->
                        </ul>
                      </div>
                      <h3><span class="fontColor">����</span></h3>
                      <div id="OrgIns">
                          <span class="more"><a href="wuhuaxinyu.jsp">����</a></span>
                        <ul>
                           						 
                           									<table>
						<logic:iterate id="map3" collection="${requestScope.arr3}" >
							<tr id="0">
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">${map3.hometitle}</a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">${map3.hometime}</span></td>
			 
				</tr>
 
</logic:iterate>
			 
				<tr id="0">
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">2���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr id="0">
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">3���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr id="0">
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">4���Ϻ��ٰ촦���̻��� </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr id="0">
			 
				</table>
                        </ul>
                      </div>
                </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
      </div>
    </div>
     <div id="OrgInsWrapper">
      <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
        <div class="content">  
          <h3><span class="fontColor">��������</span></h3>
              <div id="OrgIns1">
                  <span class="more"><a href="falvweiq.jsp">����</a></span>
                		<ul>
									<table>
						<tr id="r1"> 
						<td style="text-align:left" id="t2">  <a href="glqxmx.jsp">1���Ϻ��ٰ촦���̻���</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t2">  <a href="glqxmx.jsp">2���Ϻ��ٰ촦���̻���</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t2">  <a href="glqxmx.jsp">3���Ϻ��ٰ촦���̻���</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2r112/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t2">  <a href="glqxmx.jsp">4���Ϻ��ٰ촦���̻���</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t2">  <a href="glqxmx.jsp">5���Ϻ��ٰ촦���̻���</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
								<tr id="r1">
						<td style="text-align:left" id="t2">  <a href="glqxmx.jsp">5���Ϻ��ٰ촦���̻���</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2r112/2/4</span></td>
						</tr>
					 
				 
						</table>
				 
								 
						<!--
                            <li><a href="lxlymx.jsp">1���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">2���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">3���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">4���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">5���Ϻ��ٰ촦���̻���</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
						
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                      	-->
							
                        </ul>
              </div>
        </div>
                <b class="b5"></b><b class="b6"></b><b class="b7"></b><b class="b8"></b>    
      </div>
    </div>
    <div style="clear:both"></div>
 </div>
</div>
<div id="footer">
<ul>
 
        <li><a href="chamberDetial.jsp">�̻����</a></li>
        <li><a href="${pageContext.request.contextPath}/NewSelect.do?newid=1">�̻ᶯ̬</a></li>
        <li><a href="huiyuandw.jsp">��Ա��λ</a></li>
        <li><a href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">����ǰ��</a></li>
        <li><a href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">��Ա���</a></li>
        <li><a href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">����</a></li>
        <li><a href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">��������</a></li>
        <li><a href="lxwm.jsp">��ϵ����</a></li>
    </ul>
    <hr />
    <p>��Ȩ���У������̻� ���ַֻ�&nbsp;&nbsp;&nbsp;&nbsp;  <a href="http://www.youranzide.com">����֧�֣���Ȼ�Եù�����</a></p>
</div>
</body>
</html>
