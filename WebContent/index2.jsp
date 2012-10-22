<%@ page language="java" pageEncoding="GBK" isELIgnored="false" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 
<link href="index.css" rel="stylesheet" type="text/css" />
<title>首页</title>
</head>

<body>
<div id="header"></div>	
<div id="nav">
	<ul>
	    <li><a href="index.jsp">首页</a></li>
        <li><a href="chamberDetial.jsp">商会介绍</a></li>
        <li><a href="${pageContext.request.contextPath}/NewSelect.do?newid=1">商会动态</a></li>
        <li><a href="huiyuandw.jsp">会员单位</a></li>
        <li><a href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">管理前线</a></li>
        <li><a href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">会员随笔</a></li>
        <li><a href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">家乡</a></li>
        <li><a href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">老乡留言</a></li>
        <li><a href="lxwm.jsp">联系我们</a></li>
 
	</ul>
</div>
<div id="container">
  <div id="tips">当前位置：<span class="fontColor">首页</span></div>
  <div id="lineWrapper">
    <div id="noticeWrapper">
      <div class="sharp color1">
                <b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b4"></b> 
        <div class="content">  
          <h3><span class="fontColor">公告</span></h3>
              <div id="notice">
                  <span class="more"><a href="#">更多</a></span>
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
				<td  id="tt" style="text-align:left"><a href="ggmx.jsp">公告一 </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
					<tr id="r1">
				<td style="text-align:left"><a href="ggmx.jsp">8号召开成立大会</a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
					<tr id="r1">
				<td style="text-align:left"><a href="ggmx.jsp">公告三</a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
					<tr id="r1">
				<td style="text-align:left"><a href="ggmx.jsp">公告四</a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
					<tr id="r1">
				<td style="text-align:left"><a href="ggmx.jsp">公告五</a></td>
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
                      <h3><span class="fontColor">商会动态</span></h3>
                  <div id="notice">
                          <span class="more"><a href="shanghuidt.jsp">更多</a></span>
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
			 
				<td  id="t1" style="text-align:left"><a href="shdtmx.jsp">1、上海举办处理商会大会 </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr id="r1">
				<td  id="t1" style="text-align:left"><a href="shdtmx.jsp">2、上海举办处理商会大会 </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
				<tr id="r1">
				<td  id="t1" style="text-align:left"><a href="shdtmx.jsp">3、上海举办处理商会大会 </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
				<tr id="r1">
				<td  id="t1" style="text-align:left"><a href="shdtmx.jsp">4、上海举办处理商会大会 </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
				</tr>
				<tr id="r1">
				<td  id="t1" style="text-align:left"><a href="shdtmx.jsp">5、上海举办处理商会大会 </a></td>
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
          <h3><span class="fontColor">企业会员</span></h3>
              <div id="notice">
                  <span class="more"><a href="huiyuandw.jsp">更多</a></span>
                <div id="personInfo">
					<table>
				<tr> <td><img   src="images/logo.gif" width="50"  height="40"/></td>
				<td>&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;现在回想过去，往事感慨万分，如此的坚持最终有了收获，所以现在的景的咖啡店大家，少走弯路...</td></tr>
				
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
          <h3><span class="fontColor">注册</span></h3>
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
                      <h3><span class="fontColor">管理前线</span></h3>
                      <div id="notice">
                          <span class="more"><a href="guanliqx.jsp">更多</a></span>
                        <ul>
						<table>
						<tr id="r1"> 
						<td style="text-align:left" id="t1">  <a href="glqxmx.jsp">1、上海举办处理商会大会</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t1">  <a href="glqxmx.jsp">2、上海举办处理商会大会</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t1">  <a href="glqxmx.jsp">3、上海举办处理商会大会</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t1">  <a href="glqxmx.jsp">4、上海举办处理商会大会</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t1">  <a href="glqxmx.jsp">5、上海举办处理商会大会</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
						</table>
                          <!--
                            <li><a href="#">2、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">3、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">4、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">5、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
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
          <h3><span class="fontColor">个人会员</span></h3>
              <div id="notice">
                  <span class="more"><a href="hyry.jsp">更多</a></span>
                <div id="personInfo">
				<table>
				<tr> <td><img   src="images/headb2.png" width="50"  height="80"/></td>
				<td>&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;现在回想过去，往事感慨万分，如此的坚持最终有了收获，所以现在的景的咖啡店大家，少走弯路...</td></tr>
				
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
          <h3><span class="fontColor">组织机构</span></h3>
              <div id="OrgIns1">
                  <span class="more"><a href="zzjg.jsp">更多</a></span>
                  <dl>
                    <dt>商会顾问</dt>
                  </dl>
                  <dl>
                	<dt>名义会长</dt>
                	<dd>
                    	<ul>
                        	<li><a href="hyrymx.jsp">张三</a></li>
                            <li>张三</li>
                        </ul>
                    </dd>
                  </dl>
                  <dl>
                	<dt>会长</dt>
                	<dd>
                    	<ul>
                        	<li><a href="hyrymx.jsp">张三&nbsp;&nbsp;某某公司</a></li>
                        </ul>
                    </dd>
                  </dl>
                  <dl>
                	<dt>常务会长</dt>
                	<dd>
                    	<ul>
                        	<li><a href="hyrymx.jsp">张三&nbsp;&nbsp;某某公司</a></li>
                            <li><a href="hyrymx.jsp">张三&nbsp;&nbsp;某某公司</a></li>
                        </ul>
                    </dd>
                  </dl>
                  <dl>
                	<dt>理事</dt>
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
                      <h3><span class="fontColor">会员随笔</span></h3>
                      <div id="OrgIns">
					            <span class="more"><a href="shicdt.jsp">更多</a></span>
               
                        <ul>
								<table>
				<tr  >
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">1、上海举办处理商会大会 </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr  >
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">2、上海举办处理商会大会 </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr   >
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">3、上海举办处理商会大会 </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr  >
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">4、上海举办处理商会大会 </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr >
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">5、上海举办处理商会大会 </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				</table>
				<!--
                            <li><a href="hysbmx.jsp">1、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">2、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">3、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">4、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">5、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
							-->
                        </ul>
                      </div>
                      <h3><span class="fontColor">家乡</span></h3>
                      <div id="OrgIns">
                          <span class="more"><a href="wuhuaxinyu.jsp">更多</a></span>
                        <ul>
                           						 
                           									<table>
						<logic:iterate id="map3" collection="${requestScope.arr3}" >
							<tr id="0">
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">${map3.hometitle}</a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">${map3.hometime}</span></td>
			 
				</tr>
 
</logic:iterate>
			 
				<tr id="0">
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">2、上海举办处理商会大会 </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr id="0">
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">3、上海举办处理商会大会 </a></td>
				<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
			 
				</tr>
				<tr id="0">
			 
				<td  id="t1" style="text-align:left"><a href="hysbmx.jsp">4、上海举办处理商会大会 </a></td>
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
          <h3><span class="fontColor">老乡留言</span></h3>
              <div id="OrgIns1">
                  <span class="more"><a href="falvweiq.jsp">更多</a></span>
                		<ul>
									<table>
						<tr id="r1"> 
						<td style="text-align:left" id="t2">  <a href="glqxmx.jsp">1、上海举办处理商会大会</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t2">  <a href="glqxmx.jsp">2、上海举办处理商会大会</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t2">  <a href="glqxmx.jsp">3、上海举办处理商会大会</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2r112/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t2">  <a href="glqxmx.jsp">4、上海举办处理商会大会</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
							<tr id="r1">
						<td style="text-align:left" id="t2">  <a href="glqxmx.jsp">5、上海举办处理商会大会</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></td>
						</tr>
								<tr id="r1">
						<td style="text-align:left" id="t2">  <a href="glqxmx.jsp">5、上海举办处理商会大会</a></td>
						<td style="text-align:right">&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2r112/2/4</span></td>
						</tr>
					 
				 
						</table>
				 
								 
						<!--
                            <li><a href="lxlymx.jsp">1、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">2、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">3、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">4、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
                            <li><a href="#">5、上海举办处理商会大会</a>&nbsp; &nbsp; &nbsp; &nbsp; <span id="Date">2012/2/4</span></li>
						
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
 
        <li><a href="chamberDetial.jsp">商会介绍</a></li>
        <li><a href="${pageContext.request.contextPath}/NewSelect.do?newid=1">商会动态</a></li>
        <li><a href="huiyuandw.jsp">会员单位</a></li>
        <li><a href="${pageContext.request.contextPath}/PolicySelect.do?pyid=1">管理前线</a></li>
        <li><a href="${pageContext.request.contextPath}/MemberSelect.do?mbid=1">会员随笔</a></li>
        <li><a href="${pageContext.request.contextPath}/HometownSelect.do?htid=1">家乡</a></li>
        <li><a href="${pageContext.request.contextPath}/LaoxSelect.do?lxid=1">老乡留言</a></li>
        <li><a href="lxwm.jsp">联系我们</a></li>
    </ul>
    <hr />
    <p>版权所有：陕西商会 榆林分会&nbsp;&nbsp;&nbsp;&nbsp;  <a href="http://www.youranzide.com">技术支持：悠然自得工作室</a></p>
</div>
</body>
</html>
