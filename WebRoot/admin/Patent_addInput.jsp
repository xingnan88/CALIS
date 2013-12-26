<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	session.setAttribute("title", "专利添加");
%>
<%@ include file="head.jsp"%>
<script type="text/javascript" src="<%=basePath%>ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="<%=basePath%>js/date.js"></script>
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
<form name="addInput" method="post" action="admin/Patent_add"
	enctype="multipart/form-data">

	<table border="0">
		<tr>
			<td>
				<label>
					专利（申请）号：
				</label>
			</td>
			<td>
				<input type="text" name="patent.number" id="textfield1">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					名称：
				</label>
			</td>
			<td>
				<input type="text" name="patent.name" id="textfield2">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					申请日：
				</label>
			</td>
			<td>
				<select id="selYear" name="year1"></select>
				年
				<select id="selMonth" name="month1"></select>
				月
				<select id="selDay" name="day1"></select>
				日
				<script type="text/javascript">
						var selYear = window.document.getElementById("selYear");
						var selMonth = window.document.getElementById("selMonth");
						var selDay = window.document.getElementById("selDay");
						new DateSelector(selYear, selMonth, selDay, 2004, 2, 29);
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
				<input type="text" name="patent.openNumber" id="textfield3">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					公开（公告）日：
				</label>
			</td>
			<td>
				<select id="selYear2" name="year2"></select>
				年
				<select id="selMonth2" name="month2"></select>
				月
				<select id="selDay2" name="day2"></select>
				日
				<script type="text/javascript">
						var selYear = window.document.getElementById("selYear2");
						var selMonth = window.document.getElementById("selMonth2");
						var selDay = window.document.getElementById("selDay2");
						new DateSelector(selYear, selMonth, selDay, 2004, 2, 29);
						</script>
			</td>
		</tr>
		<tr>
			<td>
				<label>
					主分类号：
				</label>
			</td>
			<td>
				<input type="text" name="patent.mainClassNumber" id="textfield4">
				<img src="<%=basePath%>images/pic7.gif" onclick="openWindow1()"
					align="right" style="cursor: pointer;" />
			</td>
		</tr>
		<tr>
			<td>
				<label>
					分类号：
				</label>
			</td>
			<td>
				<input type="text" name="patent.classNumber" id="textfield5">
				<img src="<%=basePath%>images/pic7.gif" border="0"
					onclick="openWindow2()" align="right" style="cursor: pointer;" />
			</td>
		</tr>
		<tr>
			<td>
				<label>
					申请（专利权）人：
				</label>
			</td>
			<td>
				<input type="text" name="patent.applicant" id="textfield6">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					发明（设计）人：
				</label>
			</td>
			<td>
				<input type="text" name="patent.inventor" id="textfield7">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					优先权：
				</label>
			</td>
			<td>
				<input type="text" name="patent.priority" id="textfield8">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					地址：
				</label>
			</td>
			<td>
				<input type="text" name="patent.address" id="textfield9">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					专利代理机构：
				</label>
			</td>
			<td>
				<input type="text" name="patent.agency" id="textfield10">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					代理人：
				</label>
			</td>
			<td>
				<input type="text" name="patent.agent" id="textfield11">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					国省代号：
				</label>
			</td>
			<td>
				<input type="text" name="patent.cpNumber" id="textfield12">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					同族专利：
				</label>
			</td>
			<td>
				<input type="text" name="patent.similar" id="textfield13">
			</td>
		</tr>
		<tr>
			<td>
				<label>
					专利要求书：
				</label>
			</td>
			<td>
				<input type="file" name="picture1" id="textfield14" />
			</td>
		</tr>
		<tr>
			<td>
				<label>
					说明书：
				</label>
			</td>
			<td>
				<input type="file" name="picture" id="textfield15" />
			</td>
		</tr>
		<tr>
			<td>
				<label>
					摘要：
				</label>
			</td>
			<td>
				<textarea rows="10" cols="10" name="patent.intro" id="textfield16"></textarea>
					<script type="text/javascript">
	CKEDITOR.replace('textfield16', addUploadButton(this));

	function addUploadButton(editor) {

		CKEDITOR.on('dialogDefinition', function(ev) {

			var dialogName = ev.data.name;

			var dialogDefinition = ev.data.definition;

			if (dialogName == 'image') {

				var infoTab = dialogDefinition.getContents('info');

				infoTab.add( {

					type : 'button',

					id : 'upload_image',

					align : 'center',

					label : '上传',

					onClick : function(evt) {

						var thisDialog = this.getDialog();

						var txtUrlObj = thisDialog.getContentElement('info',
								'txtUrl');

						var txtUrlId = txtUrlObj.getInputElement().$.id;

						addUploadImage(txtUrlId);

					}

				}, 'browse'); //place front of the browser button

			}

		});

	}

	function addUploadImage(theURLElementId) {

		var uploadUrl = "<%=basePath%>admin/Patent_ckUpload.jsp"; //这是我自己的处理文件/图片上传的页面URL

		var imgUrl = window.showModalDialog(uploadUrl,'newwindow','dialogHeight=400px;dialogWidth=600px;dialogTop=100px;dialogLeft=100px;status=no');

		//在upload结束后通过js代码window.returnValue=...可以将图片url返回给imgUrl变量。

		//更多window.showModalDialog的使用方法参考 

		var urlObj = document.getElementById(theURLElementId);

		urlObj.value = imgUrl;

		urlObj.fireEvent("onchange"); //触发url文本框的onchange事件，以便预览图片

	}
	
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
					onclick="document.addInput.submit()" style="cursor: pointer;" />
				<img src="<%=basePath%>images/cz.jpg"
					onclick="document.addInput.reset()" style="cursor: pointer;"/>
				<img src="<%=basePath%>images/yl.jpg" onclick="preview()" style="cursor: pointer;"/>
			</td>
		</tr>
	</table>
</form>
<%@ include file="bottom.jsp"%>
