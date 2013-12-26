<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	session.setAttribute("title", "专利修改");
%>
<%@ include file="head.jsp"%>
<script type="text/javascript" src="<%=basePath%>ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	function openWindow1(){
<%--		window.open ('<%=basePath%>admin/category.jsp','newwindow','height=800,width=800,top=100,left=100,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no') ;--%>
		 var a = window.showModalDialog('<%=basePath%>admin/category.jsp','newwindow','dialogHeight=700px;dialogWidth=600px;dialogTop=100px;dialogLeft=100px;status=no');
		 if (a!=null)
		 document.getElementById("textfield4").value=a;
		}
	function openWindow2(){
		 var a = window.showModalDialog('<%=basePath%>admin/category.jsp','newwindow','dialogHeight=700px;dialogWidth=600px;dialogTop=100px;dialogLeft=100px;status=no');
		if (a!=null)
		 document.getElementById("textfield5").value=a;
		}
	function preview(){
		 OpenWindow = window.open('<%=basePath%>admin/preview.jsp', 'preview', 'height=700, width=1000, top=50, left=50, toolbar=no, menubar=yes, scrollbars=yes,resizable=yes,location=no, status=no');  
		}
	</script>
<style type="text/css">
form {
	margin: 1em;
	width: 27em;
}

label {
	float: left;
	width: 10em;
	text-align: right;
	margin-right: 1em;
}

input {
	padding: 0.15em;
	width: 35em;
	border: 1px solid #ddd;
	background: #FFFFFF;
	font: bold 0.95em arial, sans-serif;
	-moz-border-radius: 0.4em;
	-khtml-border-radius: 0.4em;
}
</style>
<form name="update" method="post" action="admin/Patent_update">
	<input type="hidden" name="patent.id"
		value="<s:property value="patent.id"/>" />
	<table border="0">
		<tr>
			<td>
				<label>专利（申请）号：</label>
			</td>
			<td>
				<input type="text" name="patent.number"
					value="<s:property value="patent.number"/>" id="textfield1">
			</td>
		</tr>
		<tr>
			<td>
				<label>名称：</label>
			</td>
			<td>
				<input type="text" name="patent.name"
					value="<s:property value="patent.name"/>" id="textfield2">
			</td>
		</tr>
		<tr>
			<td>
				<label>申请日：</label>
			</td>
			<td>
				<input type="text" name="patent.applicationDate"
					value="<s:date name="patent.applicationDate" format="yyyy-MM-dd" />"
					>
			</td>
		</tr>
		<tr>
			<td>
				<label>公开（公告）号：</label>
			</td>
			<td>
				<input type="text" name="patent.openNumber"
					value="<s:property value="patent.openNumber"/>" id="textfield3">
			</td>
		</tr>
		<tr>
			<td>
				<label>公开（公告）日：</label>
			</td>
			<td>
				<input type="text" name="patent.publishDate"
					value="<s:date name="patent.publishDate" format="yyyy-MM-dd" />"
					>
			</td>
		</tr>
		<tr>
			<td>
				<label>主分类号：</label>
			</td>
			<td>
					<input type="text" name="patent.mainClassNumber" id="textfield4">
				<img src="<%=basePath%>images/pic7.gif" onclick="openWindow1()" align="right"/>
			</td>
		</tr>
		<tr>
			<td>
				<label>分类号：</label>
			</td>
			<td>
				<input type="text" name="patent.classNumber" id="textfield5">
				<img src="<%=basePath%>images/pic7.gif" border="0" onclick="openWindow2()" align="right"/>
			</td>
		</tr>
		<tr>
			<td>
				<label>申请（专利权）人：</label>
			</td>
			<td>
				<input type="text" name="patent.applicant"
					value="<s:property value="patent.applicant"/>" id="textfield6">
			</td>
		</tr>
		<tr>
			<td>
				<label>发明（设计）人：</label>
			</td>
			<td>
				<input type="text" name="patent.inventor"
					value="<s:property value="patent.inventor"/>" id="textfield7">
			</td>
		</tr>
		<tr>
			<td>
				<label>优先权：</label>
			</td>
			<td>
				<input type="text" name="patent.priority"
					value="<s:property value="patent.priority"/>" id="textfield8"
					size="40">
			</td>
		</tr>
		<tr>
			<td>
				<label>地址：</label>
			</td>
			<td>
				<input type="text" name="patent.address"
					value="<s:property value="patent.address"/>" id="textfield9">
			</td>
		</tr>
		<tr>
			<td>
				<label>专利代理机构：</label>
			</td>
			<td>
				<input type="text" name="patent.agency"
					value="<s:property value="patent.agency"/>" id="textfield10">
			</td>
		</tr>
		<tr>
			<td>
				<label>代理人：</label>
			</td>
			<td>
				<input type="text" name="patent.agent"
					value="<s:property value="patent.agent"/>" id="textfield11">
			</td>
		</tr>
		<tr>
			<td>
				<label>国省代号：</label>
			</td>
			<td>
				<input type="text" name="patent.cpNumber"
					value="<s:property value="patent.cpNumber"/>" id="textfield12">
			</td>
		</tr>
		<tr>
			<td>
				<label>同族专利：</label>
			</td>
			<td>
				<input type="text" name="patent.similar"
					value="<s:property value="patent.similar"/>" id="textfield13"
					size="40">
			</td>
		</tr>
		<tr>
			<td>
				<label>专利要求书：</label>
			</td>
			<td>
				<input type="text" name="patent.patentClaim"
					value="<s:property value="patent.patentClaim"/>" id="textfield14"
					size="40">
			</td>
		</tr>
		<tr>
			<td>
				<label>说明书：</label>
			</td>
			<td>
				<input type="text" name="patent.specification"
					value="<s:property value="patent.specification"/>" id="textfield15"
					size="40">
			</td>
		</tr>
		<tr>
			<td>
				<label>摘要：</label>
			</td>
			<td>
				<textarea rows="10" cols="10" name="patent.intro" id="textfield16">
						<s:property value="patent.intro" />
					</textarea>
				<script type="text/javascript">
								CKEDITOR.replace('textfield16');
							</script>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr align="center">
			<td colspan="2">
				<img src="<%=basePath%>images/qd.jpg"
					onclick="document.update.submit()"  style="cursor: pointer;"/>
				<img src="<%=basePath%>images/cz.jpg"
					onclick="document.update.reset()" style="cursor: pointer;"/>
				<img src="<%=basePath%>images/yl.jpg"
					onclick="preview()" style="cursor: pointer;"/>
			</td>
		</tr>
	</table>
</form>
<%@ include file="bottom.jsp"%>
