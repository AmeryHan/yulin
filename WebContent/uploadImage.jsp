<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
 <head>
  <title>JSP for UploadFileForm form</title>
 </head>
 <body>
  <html:form action="/upload.do" method="post" enctype="multipart/form-data">
   file : <html:file property="file"/><html:errors property="file"/><br/>
   <html:submit/><html:cancel/>
  </html:form>
 </body>
</html>