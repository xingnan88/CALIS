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
    
    <title>My JSP 'Patent_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<SCRIPT type="text/javascript" src="js/jquery-1.6.2.js"></SCRIPT>
	<SCRIPT type="text/javascript" src="js/read.js"></SCRIPT>
	<link rel="stylesheet" type="text/css" href="css/list.css">

  </head>
  
  <body>
  	<div id="head"><h3>推荐专利</h3></div>
  	<div id="divtable">
    	<table>
    			<tr>
    			<td><h5>专利号</h5></td>
    			<td><h5>专利名称</h5></td>
    			</tr>
    			<s:iterator value="pageBean.list" var="p" status="status">
					<tr
						onmousemove="this.style.backgroundColor='#FFF68F'"
						onmouseout="this.style.backgroundColor='#FFFAFA'">
					<td>
						<s:property value="#p.number"/> 
					</td>
					<td>
						<s:property value="#p.name"/>
					</td>
					<form method="post" action="Patent_read">
    					<input type="hidden" name="id" value="<s:property value="#p.id"/> "/>
    				</form>
					</tr>
				</s:iterator>
    	</table>
  		<div class="page">
			<s:property value="pageBean.ctrlInfo" escape="false" />
		</div>
    </div>

  </body>
</html>
