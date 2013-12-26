<%@ page language="java" import="java.util.*" contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    
    <title>首页</title>
    
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
	font-family:'楷体';

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
    		<a>加入收藏</a>|
    		<a>设为主页</a>|
    		<a>联系我们</a>
    	</div>
    	<div style="height: 88px;width: 1px;"></div>
    	<table id="navigation" cellpadding="0" cellspacing="0" style="border: none;">
	    	<tr>
		    	<td id="nav-l"></td>
		    	<td class="item"><a>平台简介</a></td>
		    	<td class="item"><a>导航项目</a></td>
		    	<td class="item"><a>导航项目</a></td>
		    	<td class="item"><a>导航项目</a></td>
		    	<td class="item"><a>导航项目</a></td>
		    	<td class="item"><a>导航项目</a></td>
		    	<td class="item"><a>导航项目</a></td>
		    	
		    	<td id="nav-r"></td>
	    	</tr>
	    		
    	</table>
    </div>
    <table id="main" style="">
	    <tr><td>
		    <div id="left" style="overflow: hidden;"><!-- 图片新闻区域 -->
		    	<div id="picNews">
		    		
		    		<div id="pic">
			    		<img src="images/news-1.jpg"></img>
			    		<img src="images/news-2.jpg" style="display: none;"></img>
			    		<img src="images/news-3.jpg" style="display: none;"></img>
			    		<img src="images/news-4.jpg" style="display: none;"></img>
			    		<img src="images/news-5.jpg" style="display: none;"></img>
		    		</div>
		    		<div id="picInfo">
		    			<a href="#" id="picName">圣经书本</a>
	    				<label>1</label>
	    				<label>2</label>
	    				<label>3</label>
	    				<label>4</label>
	    				<label>5</label>
		    		</div>
		    	</div>
		    	<table id="user" cellpadding="0" cellspacing="0">
		    		<tr style="height: 27px;overflow: hidden;">
		    			<th colspan="2"  ><div class="titlebg"><span class="title">用户登录</span></div></th>
		    		</tr>
		    		<tr>
		    			<td style="width: 70px;" align="right">用户名：</td>
		    			<td><input type="text" name="username" /></td>
		    		</tr>
		    		<tr>
		    			<td align="right">密&nbsp;&nbsp;码：</td>
		    			<td><input type="password" name="password"/></td>
		    		</tr>
		    		<tr>
		    			<td align="right"><a href="#" style="font-size: 12px;">忘记密码</a></td>
		    			<td >&nbsp;
		    				<button type="submit" value="登录">登录</button>
		    				<button type="reset" value="注册">注册</button>
		    			</td>
		    		</tr>
		    	</table>
		    	<div id="service">
		    		<div class="titlebg"><span class="title" >服务定制</span></div>
		    		<div>
		    			<a href="#"><span class="i">数据获取：矿冶特色数据库</span></a>
		    			<a href="#"><span class="i">客户通道：产品求购信息</span></a>
		    			<a href="#"><span class="i">厂商通道：矿冶产品供应发布</span></a>
		    			<a href="#"><span class="i">讯息跟随：订阅邮件获知最新视角</span></a>
		    		</div>
		    	</div>
		    	<div id="contact"><!-- 联系我们 -->
		    		<div class="titlebg"><span class="title" >在线咨询</span></div>
		    		<img src="images/consulter.png" alt="" />
		    		<img src="images/lijizixun.png" alt="" />
		    		<div>
		    			<a href="#"><span class="i">咨询留言：QQ88888888</span></a>
		    			<a href="#"><span class="i">电子邮箱：isp4nm@jxust.com</span></a>
		    			<a href="#"><span class="i">意见提交：点此填写您对网站的建议</span></a>
		    		</div>
		    	</div>
		    </div>
		</td><td>
		    <div id="content" style="background-color: white;">
		    	<div id="dbs">
		    		
		    	
		    	
		    	<a href="#" class="db" >
		    	矿<br/>冶<br/>高<br/>校<br/>科<br/>研<br/>院<br/>所<br/>库<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	矿<br/>冶<br/>行<br/>业<br/>标<br/>准<br/>库<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	矿<br/>冶<br/>行<br/>业<br/>专<br/>家<br/>库<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	矿<br/>冶<br/>图<br/>书<br/>库<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	矿<br/>冶<br/>论<br/>文<br/>库<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	矿<br/>冶<br/>企<br/>业<br/>库<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	矿<br/>冶<br/>设<br/>备<br/>库<br/>
		    	</a>
		    	
		    	<a href="<%=basePath%>front/index.jsp" class="db" >
		    	矿<br/>冶<br/>专<br/>利<br/>库<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	矿<br/>冶<br/>生<br/>产<br/>流<br/>程<br/>库<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	矿<br/>冶<br/>金<br/>属<br/>种<br/>类<br/>库<br/>
		    	</a>
		    	<a href="#" class="db" >
		    	江<br/>西<br/>理<br/>工<br/>大<br/>学<br/>特<br/>色<br/>库<br/>
		    	</a>
		    	</div>
		    	<div id="news">
		    		<div class="titlebg"><span class="title">矿冶新闻</span></div>
		    		<div>
		    			<a href="">我国钢铁冶炼量首次达到7893T</a>
		    			<a href="">美国声称研制成功钛合金制造新技术</a>
		    			<a href="">西周古墓中发现高韧性高强度金属制品，至今科技难以匹及</a>
		    			<a href="">宋朝金属制造业探究</a>
		    			<a href="">赣州以科学家发现新型金属材料</a>
		    		</div>
		    	</div>
		    	<div id="recoms" style="width: 100%;">
			    	<div id="tabs">
			    		<ul style="padding-left: 0;margin-top: 0px;">
			    			<li class="now"><a href="#" name="recom-0">&nbsp;采矿工程&nbsp;</a></li>
				    		<li ><a href="#" name="recom-1">&nbsp;安全与环境工程&nbsp;</a></li>
				    		<li ><a href="#" name="recom-2">&nbsp;矿物加工工程&nbsp;</a></li>
				    		<li ><a href="#" name="recom-3">&nbsp;冶金工程&nbsp;</a></li>
				    		<li ><a href="#" name="recom-4">&nbsp;材料工程&nbsp;</a></li>
				    		<li ><a href="#" name="recom-5">&nbsp;矿业设备工程&nbsp;</a></li>
			    		</ul>
			    	</div>
			    	<% String[] zj =new String[]{"熊正明","黄万抚","杨幼明","钟盛文","郭年琴","刘统勋"};%>
			    	<%for(int i=0;i<6;i++){ %>
			    	<div id="recom-<%=i%>" class="recom" <%=i==0?"":"style='display:none'" %> >
			    		<div >
			    			<span ><label >行业动态<%=i %></label></span>
			    			<a href="#"><%=("我国将建设40个矿产资源综合利用示范基地 ".substring(2*i))%></a>
			    			<a href="#"><%=("新疆或规模最大铜矿山项目即将登场 ".substring(2*i))%></a>
			    			<a href="#"><%="耳崖公司升级尾矿库在线检测系统 ".substring(2*i)%></a>
			    			<a href="#"><%="国土部：2011高铝粘土开采总量指标430万吨 ".substring(2*i)%></a>
			    			<a href="#"><%="湖南黄沙坪被列为国土资源部“危机矿山” ".substring(2*i)%></a>
			    		</div>
			    		<div >
			    			<span ><label >新技术新工艺<%=i %></label></span>
			    			<a href="#"><%="黔北务正道地区铝土矿成矿规律与成矿预测研究 ".substring(2*i)%></a>
			    			<a href="#"><%="高分辨率SAR土地调查监测应用试验 ".substring(2*i)%></a>
			    			<a href="#"><%="复杂空区条件下岩石力学与地压监控技术研究 ".substring(2*i)%></a>
			    			<a href="#"><%="矿山破碎站成品矿仓放矿技术铜矿投入运行 ".substring(2*i)%></a>
			    			<a href="#"><%="云铜澳洲公司与力拓签定铜矿勘探协议 ".substring(2*i)%></a>
			    		</div>
			    		<div >
			    			<span ><label >专利信息<%=i %></label></span>
			    			<a href="#"><%="硂柱护顶采矿法创新研究成果国内空白 ".substring(2*i)%></a>
			    			<a href="#"><%="一种充填用的有色矿山废石混凝土及其制备方法 ".substring(2*i)%></a>
			    			<a href="#"><%="充填用的有色矿山废石混凝土及其制备方法 ".substring(2*i)%></a>
			    			<a href="#"><%="有色矿山废石混凝土及其制备方法，等等等等 ".substring(2*i)%></a>
			    			<a href="#"><%="废石混凝土及其制备方法，前沿材料科技 ".substring(2*i)%></a>
			    		</div>
			    		<div >
			    			<span ><label >专家介绍<%=i %></label></span>
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
	    <div class="titlebg" ><span class="title">友情链接</span></div>
	    <div>
		    <% for(int i=0;i<6;i++){%>
		    <a href="#" title="江西理工大学"><img  src="images/link-jxust.png" alt=""/></a>
		    <a href="#" title="CSDN论坛"><img  src="images/link-csdn.png" alt="CSDN论坛"/></a>
		    <a href="#" title="搜狐"><img  src="images/link-sohu.png" alt="搜狐"/></a>
		<%} %>
		</div>
    </div>
    <div id="policy">
    	<a href="#">关于本站</a>|
    	<a href="#">商务合作</a>|
    	<a href="#">法律声明</a>|
    	<a href="#">帮助中心</a>|
    	<a href="#">技术支持</a>|
    	<a href="#">网站地图</a>
    	<p>Copyright? 2011-2021 www.isp4nm.com All Rights Reserved 版权所有 江西理工大学图书馆 </p>
		<p>京ICP证：080527号 《网络文化经营许可证》 文网文[2009]127号 京公网安备110105005190号</p>
		<p>设计团队：江西理工大学信息学院企桥工作室</p>
    </div>
  </body>
</html>
