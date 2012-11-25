<%@ page language="java" pageEncoding="GBK" isELIgnored="false"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
	prefix="logic"%>
<%@ page import="java.util.*,com.yulinsh.vo.StructureVO;"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>组织机构</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>
<style>
</style>
<!-- onclick="javascript:window.close()"-->
<body>
	<div id="header"></div>
	<jsp:include page="indexMenu.jsp" flush="true" />
	<div id="mainContent">
		<div id="tips">
			当前位置：<span class="fontColor">组织机构</span>
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
					<h3>组织机构</h3>
					<div id="ListWrapper">
						<form id="lyname">
							<table>

								<tr>
									<td colspan="0" style="text-align: left">荣誉会长：&nbsp;</td>

								</tr>


								<tr>
									<td>
										<%
    int a=0;
    ArrayList arr = (ArrayList) request.getAttribute("arr1");
    StructureVO vo=null;
    for(int i=0;i<arr.size();i++)
    {
    	 vo=(StructureVO) arr.get(i);
    	if(vo.getSshzw().equals("1"))
    	{
    	 
    
        
                a++;
                if(a!=12){
                	 
               
                %> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%= vo.getId() %>"><%= vo.getSname() %></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
                }else
                {
                
                	%> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%= vo.getId() %>"><%= vo.getSname() %></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
                	 if(a==24)
                	 {
                		 a=0;
                	 }
                }
            %> <%
    	}
}  
    %>
									</td>
								</tr>
								<tr>
									<td width=800><hr />
									</td>
								</tr>
								<tr>
									<td colspan="0" style="text-align: left">会长：&nbsp;</td>

								</tr>


								<tr>
									<td>
										<%
    int b=0;
    ArrayList arr1 = (ArrayList) request.getAttribute("arr1");
   StructureVO vo1=null;
    for(int i=0;i<arr1.size();i++)
    {
    	 vo1=(StructureVO) arr1.get(i);
    	if(vo1.getSshzw().equals("2"))
    	{
    	 
    
        
                b++;
                if(b!=12){
                	 
               
                %> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%= vo1.getId() %>"><%= vo1.getSname() %></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
                }else
                {
                
                	%> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%= vo1.getId() %>"><%= vo1.getSname() %></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
                	 if(b==24)
                	 {
                		 b=0;
                	 }
                }
            %> <%
    	}
}  
    %>
									</td>
								</tr>
								<tr>
									<td width=800><hr />
									</td>
								</tr>

								<tr>
									<td colspan="0" style="text-align: left">副会长：&nbsp;</td>

								</tr>


								<tr>
									<td>
										<%
    int c=0;
    ArrayList arr2 = (ArrayList) request.getAttribute("arr1");
  StructureVO vo2=null;
    for(int i=0;i<arr2.size();i++)
    {
    	 vo2=(StructureVO) arr2.get(i);
    	if(vo2.getSshzw().equals("3"))
    	{
    	 
    
        
                c++;
                if(c!=12){
                	 
               
                %> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%= vo2.getId() %>"><%= vo2.getSname() %></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
                }else
                {
                
                	%> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%= vo2.getId() %>"><%= vo2.getSname() %></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
                	 if(c==24)
                	 {
                		 c=0;
                	 }
                }
            %> <%
    	}
}  
    %>
									</td>
								</tr>
								<tr>
									<td width=800><hr />
									</td>
								</tr>
								<tr>
									<td colspan="0" style="text-align: left">秘书长：&nbsp;</td>

								</tr>


								<tr>
									<td>
										<%
    int d=0;
    ArrayList arr3 = (ArrayList) request.getAttribute("arr1");
  StructureVO vo3=null;
    for(int i=0;i<arr3.size();i++)
    {
    	 vo3=(StructureVO) arr3.get(i);
    	if(vo3.getSshzw().equals("4"))
    	{
    	 
    
        
                d++;
                if(d!=12){
                	 
               
                %> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%= vo3.getId() %>"><%= vo3.getSname() %></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
                }else
                {
                
                	%> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%= vo3.getId() %>"><%= vo3.getSname() %></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
                	 if(d==24)
                	 {
                		 d=0;
                	 }
                }
            %> <%
    	}
}  
    %>
									</td>
								</tr>
								<tr>
									<td width=800><hr />
									</td>
								</tr>
								<tr>
									<td colspan="0" style="text-align: left">副秘书长：&nbsp;</td>

								</tr>


								<tr>
									<td>
										<%
    int e=0;
    ArrayList arr4 = (ArrayList) request.getAttribute("arr1");
  StructureVO vo4=null;
    for(int i=0;i<arr4.size();i++)
    {
    	 vo4=(StructureVO) arr4.get(i);
    	if(vo4.getSshzw().equals("5"))
    	{
    	 
    
        
                d++;
                if(d!=12){
                	 
               
                %> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%= vo4.getId() %>"><%= vo4.getSname() %></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
                }else
                {
                
                	%> </br> <a
										href="${pageContext.request.contextPath}/StructureShow.do?id=<%= vo4.getId() %>"><%= vo4.getSname() %></a>&nbsp;&nbsp;
										&nbsp;&nbsp; <%
                	 if(e==24)
                	 {
                		 e=0;
                	 }
                }
            %> <%
    	}
}  
    %>
									</td>
								</tr>
								<tr>
									<td width=800><hr />
									</td>
								</tr>
								</ul>
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
