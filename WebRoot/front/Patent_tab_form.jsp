<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'tab.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<SCRIPT type="text/javascript" src="js/jquery-1.6.2.js"></SCRIPT>
	<SCRIPT type="text/javascript" src="js/submitTab.js"></SCRIPT>
	<link rel="stylesheet" type="text/css" href="css/tab.css">
  </head>
  
  <body>
  	<form action="Patent_tab" method="post" id="firstForm">
  		<input type="hidden" id="page" name="page" value="1"/>
  		<input type="hidden" id="mainClassNumber" name="type" value="mainClassNumber"/>
  		<input type="hidden" id="content" name="content" value="²É¿ó¼Ó¹¤"/>
  	</form>
</body>
</html>
