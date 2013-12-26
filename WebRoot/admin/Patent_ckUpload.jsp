<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'uploadsFile.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
       <s:form action="admin/Patent_ckUpload" method="post" name="pos"
           enctype="multipart/form-data" target="smz">
           <iframe name="smz" width="0" height="0" frameborder="0"
              style="display: none"></iframe>
           <table width="80%" border="1" cellspacing="0" cellpadding="0">
              <tr>
                  <td width="20%" align="right">
                     <font color="red">*</font>上传图片文件
                  </td>
                  <td width="20%">
                     <s:file name="myFile"></s:file>
                     <s:submit value="上传"></s:submit>
              </tr>
           </table>
       </s:form>
   <s:hidden name="pagePath" id="_page_path"></s:hidden>
 <script type="text/javascript">
    var _page_path = document.getElementById("_page_path").value;
    if(null!=_page_path  && ""!=_page_path){
       window.returnValue=_page_path; 
       window.close(); 
    }

  </script>
    </body>
</html>
