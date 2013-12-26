<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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
  	<form action="Patent_tab" method="post" id="tabForm">
  		<input type="hidden" id="page" name="page" value="1"/>
  		<input type="hidden" id="mainClassNumber" name="type" value="mainClassNumber"/>
  		<input type="hidden" id="content" name="content"/>
  	</form>
	<div id="tab">
    	<div id="title">
        	<ul>
            	<li><a>采矿加工</a></li>
                <li><a>安全与环境工程</a></li>
                <li><a>矿物加工工程</a></li>
                <li><a>冶金工程</a></li>
                <li><a>材料工程</a></li>
                <li><a>矿业设备工程</a></li>
            </ul>
        </div>	
        <div id="content">
        	<div class="list">
            	<table>
                	<tr>
                    	<th style="width:150px;">专利申请号</th>
                        <th style="width:324px;">专利名称</th>
                        <th style="width:172px;">申请人</th>
                    </tr>
                   <label> --------------------------------------------------------------------------</label>
                 	<s:iterator value="pageBean.list" var="p" status="status">
					<tr>
						<form method="post" action="Patent_read">
						<input type="hidden" value="<s:property value="#p.id"/>" name="id" id="id"/>
						</form>
						<td style="width:150px;">
							<s:property value="#p.number"/> 
						</td>
						<td style="width:324px;">
							<s:property value="#p.name"/>
						</td>
						<td style="width:212px;">
							<s:property value="#p.applicant"/>
						</td>
					</tr>
					
				</s:iterator>
                </table>
                <label> --------------------------------------------------------------------------</label>
                 <div class="page">
					<s:property value="pageBean.ctrlInfo" escape="false" />
				</div>
   			 </div>
            </div>
        </div>
</body>
</html>
