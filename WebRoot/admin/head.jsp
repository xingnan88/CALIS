<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="images/skin.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top" background="<%=basePath%>images/mail_leftbg.gif">
				<img src="<%=basePath%>images/left-top-right.gif" width="17" height="29" />
			</td>
			<td valign="top" background="<%=basePath%>images/content-bg.gif">
				<table width="100%" height="31" border="0" cellpadding="0"
					cellspacing="0" class="left_topbg" id="table2">
					<tr>
						<td height="31">
							<div class="titlebt">
								${title}
							</div>
						</td>
					</tr>
				</table>
			</td>
			<td width="16" valign="top" background="<%=basePath%>images/mail_rightbg.gif">
				<img src="<%=basePath%>images/nav-right-bg.gif" width="16" height="29" />
			</td>
		</tr>
		<tr>
			<td valign="middle" background="<%=basePath%>images/mail_leftbg.gif">
				&nbsp;
			</td>
			<td valign="top" bgcolor="#F7F8F9">