<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
<%
	session.setAttribute("title", "高级搜索");
%>
<%@include file="head.jsp"%>
<script type="text/javascript" src="<%=basePath%>js/date.js"></script>
<script type="text/javascript">
	function openWindow1(){
		<%--		window.open ('<%=basePath%>admin/category.jsp','newwindow','height=800,width=800,top=100,left=100,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no') ;--%>
				 var a = window.showModalDialog('<%=basePath%>admin/category.jsp','newwindow','dialogHeight=700px;dialogWidth=600px;dialogTop=100px;dialogLeft=100px;status=no');
				 if (a!=null)
				 document.getElementById("textfield7").value=a;
				}
			function openWindow2(){
				 var a = window.showModalDialog('<%=basePath%>admin/category.jsp','newwindow','dialogHeight=700px;dialogWidth=600px;dialogTop=100px;dialogLeft=100px;status=no');
				if (a!=null)
				 document.getElementById("textfield8").value=a;
				}
	</script>
<form name="addInput" method="post" action="admin/Patent_search?page=1">

	<table border="0">
		<tr>
			<td>
				<label>
					专利（申请）号：
				</label>
			</td>
			<td width="489">
				<input type="text" name="searchInfo.number" id="textfield1">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					申请日：
				</label>
			</td>
			<td>
				从
				<select id="selYear1" name="searchInfo.year5"></select>
				年
				<select id="selMonth1" name="searchInfo.month5"></select>
				月
				<select id="selDay1" name="searchInfo.day5"></select>
				日
				<script type="text/javascript">
						var selYear = window.document.getElementById("selYear1");
						var selMonth = window.document.getElementById("selMonth1");
						var selDay = window.document.getElementById("selDay1");
						new DateSelector(selYear, selMonth, selDay,1900,1,1);
						</script>
				--
				<select id="selYear2" name="searchInfo.year6"></select>
				年
				<select id="selMonth2" name="searchInfo.month6"></select>
				月
				<select id="selDay2" name="searchInfo.day6"></select>
				日
				<script type="text/javascript">
						var selYear = window.document.getElementById("selYear2");
						var selMonth = window.document.getElementById("selMonth2");
						var selDay = window.document.getElementById("selDay2");
						new DateSelector(selYear, selMonth, selDay);
						</script>
			</td>
		</tr>
		<tr>
			<td>
				<label>
					公开（公告）号：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.openNumber" id="textfield3">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					公开（公告）日：
				</label>
			</td>
			<td>
				从
				<select id="selYear3" name="searchInfo.year3"></select>
				年
				<select id="selMonth3" name="searchInfo.month3"></select>
				月
				<select id="selDay3" name="searchInfo.day3"></select>
				日
				<script type="text/javascript">
						var selYear = window.document.getElementById("selYear3");
						var selMonth = window.document.getElementById("selMonth3");
						var selDay = window.document.getElementById("selDay3");
						new DateSelector(selYear, selMonth, selDay,1900,1,1);
						</script>
				--
				<select id="selYear4" name="searchInfo.year4"></select>
				年
				<select id="selMonth4" name="searchInfo.month4"></select>
				月
				<select id="selDay4" name="searchInfo.day4"></select>
				日
				<script type="text/javascript">
						var selYear = window.document.getElementById("selYear4");
						var selMonth = window.document.getElementById("selMonth4");
						var selDay = window.document.getElementById("selDay4");
						new DateSelector(selYear, selMonth, selDay);
						</script>
			</td>
		</tr>
		<tr>
			<td>
				<label>
					名称：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.name" id="textfield5">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					摘要：
				</label>
			</td>
			<td>

				<input type="text" name="searchInfo.intro" id="textfield6">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					主分类号：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.mainClassNumber" id="textfield7">
				<img src="<%=basePath%>images/pic7.gif" onclick="openWindow1()" align="right"/>
			</td>
		</tr>
		<tr>
			<td>
				<label>
					分类号：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.classNumber" id="textfield8">
				<img src="<%=basePath%>images/pic7.gif" border="0" onclick="openWindow2()" align="right"/>
			</td>
		</tr>
		<tr>
			<td>
				<label>
					申请（专利权）人：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.applicant" id="textfield9">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					发明（设计）人：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.inventor" id="textfield10">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					优先权：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.priority" id="textfield11">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					地址：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.address" id="textfield12">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					专利代理机构：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.agency" id="textfield13">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					代理人：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.agent" id="textfield14">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					国省代号：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.cpNumber" id="textfield15">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					同族专利：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.similar" id="textfield16">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					专利要求书：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.patentClaim" id="textfield17">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					说明书：
				</label>
			</td>
			<td>
				<input type="text" name="searchInfo.specification" id="textfield18">
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
					onclick="document.addInput.submit()" style="cursor: pointer;"/>
				<img src="<%=basePath%>images/cz.jpg"
					onclick="document.addInput.reset()" style="cursor: pointer;"/>
			</td>
		</tr>
	</table>
</form>
<%@ include file="bottom.jsp"%>
