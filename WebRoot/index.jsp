<%@ page language="java" import="java.util.*" contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    
    <title>��ҳ</title>
    
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expires" content="0" />    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	
	<link rel="stylesheet" type="text/css" href="index.css"/>
	<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-1.6.2.min.js" ></script>
	<script type="text/javascript" src="<%=basePath %>jquery-ui/js/jquery-ui-1.8.15.custom.min.js" ></script>
	<script type="text/javascript" src="index.js" ></script>
	<style type="text/css">
a.db{
	font-family:'����';

}
label {
	display: block;
}
	</style>
	<script >
	</script>
  </head>
  
  <body>
    <div id="banner">
    	<div style="float: right;font-size: 11px;margin: 2px 5px;">
    		<a>�����ղ�</a>|
    		<a>��Ϊ��ҳ</a>|
    		<a>��ϵ����</a>
    	</div>
    	<div style="height: 88px;width: 1px;"></div>
    	<table id="navigation" cellpadding="0" cellspacing="0" style="border: none;">
	    	<tr>
		    	<td id="nav-l"></td>
		    	<td class="item"><a>ƽ̨���</a></td>
		    	<td class="item"><a>������Ŀ</a></td>
		    	<td class="item"><a>������Ŀ</a></td>
		    	<td class="item"><a>������Ŀ</a></td>
		    	<td class="item"><a>������Ŀ</a></td>
		    	<td class="item"><a>������Ŀ</a></td>
		    	<td class="item"><a>������Ŀ</a></td>
		    	
		    	<td id="nav-r"></td>
	    	</tr>
	    		
    	</table>
    </div>
    <table id="main" style="">
	    <tr><td>
		    <div id="left" style="overflow: hidden;"><!-- ͼƬ�������� -->
		    	<div id="picNews">
		    		
		    		<div id="pic">
			    		<img src="images/news-1.jpg"></img>
			    		<img src="images/news-2.jpg" style="display: none;"></img>
			    		<img src="images/news-3.jpg" style="display: none;"></img>
			    		<img src="images/news-4.jpg" style="display: none;"></img>
			    		<img src="images/news-5.jpg" style="display: none;"></img>
		    		</div>
		    		<div id="picInfo">
		    			<a href="#" id="picName">ʥ���鱾</a>
	    				<label>1</label>
	    				<label>2</label>
	    				<label>3</label>
	    				<label>4</label>
	    				<label>5</label>
		    		</div>
		    	</div>
		    	<table id="user" cellpadding="0" cellspacing="0">
		    		<tr style="height: 27px;overflow: hidden;">
		    			<th colspan="2"  ><div class="titlebg"><span class="title">�û���¼</span></div></th>
		    		</tr>
		    		<tr>
		    			<td style="width: 70px;" align="right">�û�����</td>
		    			<td><input type="text" name="username" /></td>
		    		</tr>
		    		<tr>
		    			<td align="right">��&nbsp;&nbsp;�룺</td>
		    			<td><input type="password" name="password"/></td>
		    		</tr>
		    		<tr>
		    			<td align="right"><a href="#" style="font-size: 12px;">��������</a></td>
		    			<td >&nbsp;
		    				<button type="submit" value="��¼">��¼</button>
		    				<button type="reset" value="ע��">ע��</button>
		    			</td>
		    		</tr>
		    	</table>
		    	<div id="service">
		    		<div class="titlebg"><span class="title" >������</span></div>
		    		<div>
		    			<a href="#"><span class="i">���ݻ�ȡ����ұ��ɫ���ݿ�</span></a>
		    			<a href="#"><span class="i">�ͻ�ͨ������Ʒ����Ϣ</span></a>
		    			<a href="#"><span class="i">����ͨ������ұ��Ʒ��Ӧ����</span></a>
		    			<a href="#"><span class="i">ѶϢ���棺�����ʼ���֪�����ӽ�</span></a>
		    		</div>
		    	</div>
		    	<div id="contact"><!-- ��ϵ���� -->
		    		<div class="titlebg"><span class="title" >������ѯ</span></div>
		    		<img src="images/consulter.png" alt="" />
		    		<img src="images/lijizixun.png" alt="" />
		    		<div>
		    			<a href="#"><span class="i">��ѯ���ԣ�QQ88888888</span></a>
		    			<a href="#"><span class="i">�������䣺isp4nm@jxust.com</span></a>
		    			<a href="#"><span class="i">����ύ�������д������վ�Ľ���</span></a>
		    		</div>
		    	</div>
		    </div>
		</td><td>
		    <div id="content" style="background-color: white;">
		    	<div id="dbs">
		    		
		    	
		    	
		    	<a href="#" class="db" >
		    	��<br/>ұ<br/>��<br/>У<br/>��<br/>��<br/>Ժ<br/>��<br/>��<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	��<br/>ұ<br/>��<br/>ҵ<br/>��<br/>׼<br/>��<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	��<br/>ұ<br/>��<br/>ҵ<br/>ר<br/>��<br/>��<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	��<br/>ұ<br/>ͼ<br/>��<br/>��<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	��<br/>ұ<br/>��<br/>��<br/>��<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	��<br/>ұ<br/>��<br/>ҵ<br/>��<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	��<br/>ұ<br/>��<br/>��<br/>��<br/>
		    	</a>
		    	
		    	<a href="<%=basePath%>front/index.jsp" class="db" >
		    	��<br/>ұ<br/>ר<br/>��<br/>��<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	��<br/>ұ<br/>��<br/>��<br/>��<br/>��<br/>��<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	��<br/>ұ<br/>��<br/>��<br/>��<br/>��<br/>��<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	��<br/>��<br/>��<br/>��<br/>��<br/>ѧ<br/>��<br/>ɫ<br/>��<br/>
		    	</a>
		    	</div>
		    	<div id="news">
		    		<div class="titlebg"><span class="title">��ұ����</span></div>
		    		<div>
		    			<a href="">�ҹ�����ұ�����״δﵽ7893T</a>
		    			<a href="">�����������Ƴɹ��ѺϽ������¼���</a>
		    			<a href="">���ܹ�Ĺ�з��ָ����Ը�ǿ�Ƚ�����Ʒ������Ƽ�����ƥ��</a>
		    			<a href="">�γ���������ҵ̽��</a>
		    			<a href="">�����Կ�ѧ�ҷ������ͽ�������</a>
		    		</div>
		    	</div>
		    	<div id="recoms" style="width: 100%;">
			    	<div id="tabs">
			    		<ul style="padding-left: 0;margin-top: 0px;">
			    			<li class="now"><a href="#" name="recom-0">&nbsp;�ɿ󹤳�&nbsp;</a></li>
				    		<li ><a href="#" name="recom-1">&nbsp;��ȫ�뻷������&nbsp;</a></li>
				    		<li ><a href="#" name="recom-2">&nbsp;����ӹ�����&nbsp;</a></li>
				    		<li ><a href="#" name="recom-3">&nbsp;ұ�𹤳�&nbsp;</a></li>
				    		<li ><a href="#" name="recom-4">&nbsp;���Ϲ���&nbsp;</a></li>
				    		<li ><a href="#" name="recom-5">&nbsp;��ҵ�豸����&nbsp;</a></li>
			    		</ul>
			    	</div>
			    	<% String[] zj =new String[]{"������","����","������","��ʢ��","������","��ͳѫ"};%>
			    	<%for(int i=0;i<6;i++){ %>
			    	<div id="recom-<%=i%>" class="recom" <%=i==0?"":"style='display:none'" %> >
			    		<div >
			    			<span ><label >��ҵ��̬<%=i %></label></span>
			    			<a href="#"><%=("�ҹ�������40�������Դ�ۺ�����ʾ������ ".substring(2*i))%></a>
			    			<a href="#"><%=("�½����ģ���ͭ��ɽ��Ŀ�����ǳ� ".substring(2*i))%></a>
			    			<a href="#"><%="���¹�˾����β������߼��ϵͳ ".substring(2*i)%></a>
			    			<a href="#"><%="��������2011����ճ����������ָ��430��� ".substring(2*i)%></a>
			    			<a href="#"><%="���ϻ�ɳƺ����Ϊ������Դ����Σ����ɽ�� ".substring(2*i)%></a>
			    		</div>
			    		<div >
			    			<span ><label >�¼����¹���<%=i %></label></span>
			    			<a href="#"><%="ǭ������������������ɿ������ɿ�Ԥ���о� ".substring(2*i)%></a>
			    			<a href="#"><%="�߷ֱ���SAR���ص�����Ӧ������ ".substring(2*i)%></a>
			    			<a href="#"><%="���ӿ�����������ʯ��ѧ���ѹ��ؼ����о� ".substring(2*i)%></a>
			    			<a href="#"><%="��ɽ����վ��Ʒ��ַſ���ͭ��Ͷ������ ".substring(2*i)%></a>
			    			<a href="#"><%="��ͭ���޹�˾������ǩ��ͭ��̽Э�� ".substring(2*i)%></a>
			    		</div>
			    		<div >
			    			<span ><label >ר����Ϣ<%=i %></label></span>
			    			<a href="#"><%="�o�������ɿ󷨴����о��ɹ����ڿհ� ".substring(2*i)%></a>
			    			<a href="#"><%="һ�ֳ����õ���ɫ��ɽ��ʯ�����������Ʊ����� ".substring(2*i)%></a>
			    			<a href="#"><%="�����õ���ɫ��ɽ��ʯ�����������Ʊ����� ".substring(2*i)%></a>
			    			<a href="#"><%="��ɫ��ɽ��ʯ�����������Ʊ��������ȵȵȵ� ".substring(2*i)%></a>
			    			<a href="#"><%="��ʯ�����������Ʊ�������ǰ�ز��ϿƼ� ".substring(2*i)%></a>
			    		</div>
			    		<div >
			    			<span ><label >ר�ҽ���<%=i %></label></span>
			    			<a href="#"><%=zj[i]%></a>
			    			<a href="#"><%=zj[(i+1)%6]%></a>
			    			<a href="#"><%=zj[(i+2)%6]%></a>
			    			<a href="#"><%=zj[(i+3)%6]%></a>
			    			<a href="#"><%=zj[(i+4)%6]%></a>
			    		</div>
			    	</div>
			    	<%} %>
		    	</div>
		    </div>
	    </td></tr>
	</table>
	<div id="links" >
	    <div class="titlebg" ><span class="title">��������</span></div>
	    <div>
		    <% for(int i=0;i<6;i++){%>
		    <a href="#" title="��������ѧ"><img  src="images/link-jxust.png" alt=""/></a>
		    <a href="#" title="CSDN��̳"><img  src="images/link-csdn.png" alt="CSDN��̳"/></a>
		    <a href="#" title="�Ѻ�"><img  src="images/link-sohu.png" alt="�Ѻ�"/></a>
		<%} %>
		</div>
    </div>
    <div id="policy">
    	<a href="#">���ڱ�վ</a>|
    	<a href="#">�������</a>|
    	<a href="#">��������</a>|
    	<a href="#">��������</a>|
    	<a href="#">����֧��</a>|
    	<a href="#">��վ��ͼ</a>
    	<p>Copyright? 2011-2021 www.isp4nm.com All Rights Reserved ��Ȩ���� ��������ѧͼ��� </p>
		<p>��ICP֤��080527�� �������Ļ���Ӫ���֤�� ������[2009]127�� ����������110105005190��</p>
		<p>����Ŷӣ���������ѧ��ϢѧԺ���Ź�����</p>
    </div>
  </body>
</html>
