package jxust.patent.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxust.patent.model.PageBean;
import jxust.patent.model.Patent;
import jxust.patent.service.PageService;
import jxust.patent.service.PatentService;
import jxust.patent.util.CreateHql;
import jxust.patent.vo.SearchInfo;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class PatentFront extends ActionSupport implements ServletRequestAware, ServletResponseAware, ModelDriven{
	
	
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;

	private Patent patent;
	private List<Patent> patents;
	private int id;
	private PageBean pageBean;//分页
	private String page;
	private SearchInfo searchInfo;//查找
	private String type;
	private String content;
	
	private PatentService ps;
	private PageService pageService;
	
	public String searchInput(){
		return INPUT;
	}
	
	public String list()
	{
		String hql = "from Patent";// 分页
		String action = "Patent_list";
		int pageSize = 10;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}
	
	public String search()// 高级搜索
	{
		String hql = CreateHql.getHql(searchInfo);// 分页
		String action = "Patent_searchPage";
		session.setAttribute("hql", hql);
		int pageSize = 20;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}

	public String searchPage()// 高级搜索下一页
	{
		String hql = (String) session.getAttribute("hql");
		String action = "Patent_searchPage";
		int pageSize = 20;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));

		return SUCCESS;
	}
	
	public String simpleSearch()// 快速搜索
	{
		String hql = "select p from Patent p where p." + CreateHql.pareType(type) + " " + "like '%" + content + "%'";
		session.setAttribute("hql",hql);
		String action = "Patent_nextsimpleSearch";
		int pageSize = 20;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}
	
	public String nextsimpleSearch()// 快速搜索下一页
	{
		String hql = (String)session.getAttribute("hql");
		String action = "Patent_nextsimpleSearch";
		int pageSize = 20;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}
	
	public String tab() throws UnsupportedEncodingException//特色专利
	{
		String hql = "select p from Patent p where p." + CreateHql.pareType(type) + " " + "like '%" + content + "%'";
		session.setAttribute("hql", hql);
		String action = "Patent_nexttab";
		int pageSize = 20;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}
	
	public String nexttab()// 特色专利下一页
	{
		String hql = (String) session.getAttribute("hql");
		String action = "Patent_nexttab";
		int pageSize = 20;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}
	
	public String read()
	{
		this.patent = this.ps.findById(id);
		return SUCCESS;
	}
	
	public Object getModel() {
		return searchInfo;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response=response;
		
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
		this.session=this.request.getSession();
	}

	public Patent getPatent() {
		return patent;
	}

	public void setPatent(Patent patent) {
		this.patent = patent;
	}

	public List<Patent> getPatents() {
		return patents;
	}

	public void setPatents(List<Patent> patents) {
		this.patents = patents;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public PatentService getPs() {
		return ps;
	}

	@Resource(name="patentService")
	public void setPs(PatentService ps) {
		this.ps = ps;
	}

	public PageService getPageService() {
		return pageService;
	}
	
	@Resource(name="pageService")
	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}

	public SearchInfo getSearchInfo() {
		return searchInfo;
	}
	@Resource(name="searchInfo")
	public void setSearchInfo(SearchInfo searchInfo) {
		this.searchInfo = searchInfo;
	}

	public String getType()
	{
		return type;
	}

	public void setType(String type)
	{
		this.type = type;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}
	
}
