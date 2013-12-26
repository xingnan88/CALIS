<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'testResult.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<table border="1">
			<tr>
				<td>
					从action读取:
				</td>
				<td>
					id=${patent.id },number=${patent.number }
				</td>
			</tr>
			<tr>
				<td>
					从request读取:
				</td>
				<td>
					id=<s:property value="#request.patent.id" />,number=<s:property value="#request.patent.number" />
				</td>
			</tr>
			<tr>
				<td>
					从session读取
				</td>
				<td>
					id=<s:property value="#session.patent.id" />,number=<s:property value="#session.patent.number" />
				</td>
			</tr>
			</table>
			<hr/>数据内所有记录
			<table border="1">
			<tr>
				<td>
					id
				</td>
				<td>
					word
				</td>
			</tr>
			<s:iterator value="patents">
			<tr>
				<td>
					<s:property value="id"/>
				</td>
				<td>
					<s:property value="number"/>
				</td>
			</tr>
			</s:iterator>
			</table>
			<s:debug></s:debug>
	</body>
</html>
