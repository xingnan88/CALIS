<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

  <table width="720" border="1" cellpadding=0 cellspacing=0 align="center">
    <tr>
      <td bgcolor="#EAEAEA" align="right">名称：</td>
      <td colspan="3"><s:property value="patent.name"/>&nbsp;</td>
    </tr>
    <tr>
      <td width="130" bgcolor="#EAEAEA" align="right">申请（专利）号：</td>
      <td width="230" ><s:property value="patent.number"/>&nbsp;</td>
      <td width="130" bgcolor="#EAEAEA" align="right">申请日：</td>
	  <td width="230" ><s:date name="patent.applicationDate" format="yyyy.MM.dd" />&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">公开（公告）号：</td>
      <td><s:property value="patent.openNumber"/>&nbsp;</td>
      <td bgcolor="#EAEAEA" align="right">公开（公告）日：</td>
      <td><s:date name="patent.publishDate" format="yyyy.MM.dd" />&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">主分类号：</td>
      <td colspan="3"><s:property value="patent.mainClassNumber"/>&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">分类号：</td>
      <td colspan="3"><s:property value="patent.ClassNumber"/>&nbsp;</td>
    </tr>
       <tr>
      <td bgcolor="#EAEAEA" align="right">申请人：</td>
      <td colspan="3"><s:property value="patent.applicant"/>&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">发明人：</td>
      <td colspan="3"><s:property value="patent.inventor"/>&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">地址：</td>
      <td><s:property value="patent.address"/>&nbsp;</td>
      <td bgcolor="#EAEAEA" align="right">国省代号：</td>
      <td><s:property value="patent.cpNumber"/>&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">优先权：</td>
      <td colspan="3"><s:property value="patent.priority"/>&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" align="right">专利代理机构：</td>
      <td><s:property value="patent.agency"/>&nbsp;</td>
      <td bgcolor="#EAEAEA" align="right">代理人：</td>
      <td><s:property value="patent.agent"/>&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EAEAEA" colspan="4">摘要：</td>
    </tr>
    <tr> 
      <td colspan="4"><s:property value="patent.intro" escape="false"/>&nbsp;</td>
    </tr>
  </table>
