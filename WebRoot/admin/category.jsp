<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
	<head>
		<base href="<%=basePath%>">
		<title>category.jsp</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script type="text/javascript"  src="<%=basePath%>js/dhx/dhtmlxcommon.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/dhx/dhtmlxtree.js"></script>
		<script type="text/javascript">
			function sendTo()
			{
				var a=document.getElementById("logarea").value;
  				window.returnValue = a;
  				window.close();
			}
		</script>
	</head>

<body>	

<table>
		
		<tr>
			<td>
				<div id="treeboxbox_tree"/>
			</td>
			<td rowspan="2" style="padding-left:25" valign="top">
                <input type="text" id="logarea" name="logarea" size="50" />
                <input type="submit" value="选中" onClick="sendTo()">
            <p>提示:请使用“IPC分类表查询”或浏览“IPC分类”树的方式，选择您所要作为检索条件的IPC分类号，选中的IPC分类号将会自动填写到“专利检索”的“主分类号”或“分类号”中，作为检索条件，进行专利信息查询。</p>   
			</td>
		
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
</table>
	<script>
			function doLog(str){
				var log = document.getElementById("logarea");
				log.value=str;
			}
			function tonclick(id){
				doLog(tree.getItemText(id));
			};						
			tree=new dhtmlXTreeObject("treeboxbox_tree","100%","100%",0);
			tree.setImagePath("<%=basePath%>images/imgs/csh_bluebooks/");			
			tree.setOnClickHandler(tonclick);
			tree.loadXML("<%=basePath%>admin/tree3.xml");
	</script>
</body>
</html>
