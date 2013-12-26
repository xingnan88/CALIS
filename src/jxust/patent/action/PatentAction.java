package jxust.patent.action;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
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
import jxust.patent.util.DateFormat;
import jxust.patent.util.Upload;
import jxust.patent.vo.SearchInfo;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class PatentAction extends ActionSupport implements ServletRequestAware, ServletResponseAware, ModelDriven
{
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;

	private Patent patent;
	private List<Patent> patents;
	private int id;
	private PageBean pageBean;// 分页
	private String page;
	private File picture, picture1;// 上传
	private String pictureFileName, picture1FileName;
	private String pictureContentType, picture1ContentType;
	private int[] chkSon;// 全选
	private String year1, month1, day1;// 日期
	private String year2, month2, day2;
	private File myFile; // ckeditor 图片上传
	private String myFileContentType;
	private String myFileFileName;
	private String imageFileName;
	private String imagePath;
	private String pagePath;
	private String message;//错误信息

	private SearchInfo searchInfo;// 搜索
	private String type;
	private String content;

	private PatentService ps;
	private PageService pageService;

	@Override
	public String execute() throws Exception
	{
		return "success";
	}

	public String list()
	{
		String hql = "from Patent";// 分页
		String action = "admin/Patent_list";
		int pageSize = 10;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}

	public String add()// 添加
	{
		String path = Upload.getWebPath() + "upload/";
		if (picture1FileName != null && picture1 != null)
		{
			Upload.doUpload(picture1FileName, picture1);
			this.patent.setPatentClaim(path + picture1FileName);
		}
		if (pictureFileName != null && picture != null)
		{
			Upload.doUpload(pictureFileName, picture);
			this.patent.setSpecification(path + pictureFileName);
		}

		try
		{
			this.patent.setApplicationDate(DateFormat.toDate(year1, month1, day1));// 申请日，公开日
			this.patent.setPublishDate(DateFormat.toDate(year2, month2, day2));
		} catch (ParseException e)
		{
			this.message="日期输入有误";
			e.printStackTrace();
			return ERROR;
		}

		ps.add(patent);
		return SUCCESS;
	}

	public String update()// 更新
	{
		ps.update(patent);
		return SUCCESS;
	}

	public String delete()// 删除
	{
		ps.delete(id);
		return SUCCESS;
	}

	public String addInput()// 添加输入数据
	{
		return INPUT;
	}

	public String updateInput()// 更新输入数据
	{
		this.patent = this.ps.findById(id);
		return INPUT;
	}

	public String searchInput()// 搜索输入数据
	{
		return INPUT;
	}

	/*
	 * public String search() { patents=ps.list(patent); return SUCCESS; }
	 */
	public String search()// 高级搜索
	{
		String hql = CreateHql.getHql(searchInfo);// 分页
		String action = "admin/Patent_searchPage";
		session.setAttribute("hql", hql);
		int pageSize = 10;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}

	public String searchPage()// 高级搜索下一页
	{
		String hql = (String) session.getAttribute("hql");
		String action = "admin/Patent_searchPage";
		int pageSize = 10;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));

		return SUCCESS;
	}

	public String read()// 阅读新闻
	{
		this.patent = this.ps.findById(id);
		return SUCCESS;
	}

	public String deleteSelect()// 删除选中的新闻
	{
		if (chkSon != null)
		{
			this.ps.deleteSelect(chkSon);
		}
		return SUCCESS;
	}

	public String simpleSearch()// 快速搜索
	{
		String hql = "select p from Patent p where p." + CreateHql.pareType(type) + " " + "like '%" + content + "%'";
		String action = "admin/Patent_simpleSearch";
		int pageSize = 10;
		this.setPageBean(pageService.queryForPage(hql, action, pageSize, Integer.parseInt(page)));
		return SUCCESS;
	}

	public String ckUpload()
	{
		imageFileName = new Date().getTime() + myFileFileName; // 此名称用当前时间与上传图片名组成
		imagePath = ServletActionContext.getServletContext().getRealPath("ckeditor/images/Image") + "\\" + imageFileName;
		System.out.println(imagePath);
		pagePath = Upload.getWebPath() + "ckeditor/images/Image" + "\\" + imageFileName; // 页面引用位置
		System.out.println(pagePath);
		File imageFile = new File(imagePath);
		Upload.copy(myFile, imageFile);
		return SUCCESS;
	}

	public PatentService getPs()
	{
		return ps;
	}

	@Resource(name = "patentService")
	public void setPs(PatentService ps)
	{
		this.ps = ps;
	}

	public Patent getPatent()
	{
		return patent;
	}

	public void setPatent(Patent patent)
	{
		this.patent = patent;
	}

	public List<Patent> getPatents()
	{
		return patents;
	}

	public void setPatents(List<Patent> patents)
	{
		this.patents = patents;
	}

	public void setServletRequest(HttpServletRequest arg0)
	{
		this.request = arg0;
		this.session = this.request.getSession();
	}

	public void setServletResponse(HttpServletResponse arg0)
	{
		this.response = arg0;
	}

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public PageService getPageService()
	{
		return pageService;
	}

	@Resource(name = "pageService")
	public void setPageService(PageService pageService)
	{
		this.pageService = pageService;
	}

	public PageBean getPageBean()
	{
		return pageBean;
	}

	public void setPageBean(PageBean pageBean)
	{
		this.pageBean = pageBean;
	}

	public String getPage()
	{
		return page;
	}

	public void setPage(String page)
	{
		this.page = page;
	}

	public File getPicture()
	{
		return picture;
	}

	public void setPicture(File picture)
	{
		this.picture = picture;
	}

	public String getPictureFileName()
	{
		return pictureFileName;
	}

	public void setPictureFileName(String pictureFileName)
	{
		this.pictureFileName = pictureFileName;
	}

	public String getPictureContentType()
	{
		return pictureContentType;
	}

	public void setPictureContentType(String pictureContentType)
	{
		this.pictureContentType = pictureContentType;
	}

	public File getPicture1()
	{
		return picture1;
	}

	public void setPicture1(File picture1)
	{
		this.picture1 = picture1;
	}

	public String getPicture1FileName()
	{
		return picture1FileName;
	}

	public void setPicture1FileName(String picture1FileName)
	{
		this.picture1FileName = picture1FileName;
	}

	public String getPicture1ContentType()
	{
		return picture1ContentType;
	}

	public void setPicture1ContentType(String picture1ContentType)
	{
		this.picture1ContentType = picture1ContentType;
	}

	public int[] getChkSon()
	{
		return chkSon;
	}

	public void setChkSon(int[] chkSon)
	{
		this.chkSon = chkSon;
	}

	public SearchInfo getSearchInfo()
	{
		return searchInfo;
	}

	@Resource(name="searchInfo")
	public void setSearchInfo(SearchInfo searchInfo)
	{
		this.searchInfo = searchInfo;
	}

	public Object getModel()
	{
		return searchInfo;
	}

	public String getYear1()
	{
		return year1;
	}

	public void setYear1(String year1)
	{
		this.year1 = year1;
	}

	public String getMonth1()
	{
		return month1;
	}

	public void setMonth1(String month1)
	{
		this.month1 = month1;
	}

	public String getDay1()
	{
		return day1;
	}

	public void setDay1(String day1)
	{
		this.day1 = day1;
	}

	public String getYear2()
	{
		return year2;
	}

	public void setYear2(String year2)
	{
		this.year2 = year2;
	}

	public String getMonth2()
	{
		return month2;
	}

	public void setMonth2(String month2)
	{
		this.month2 = month2;
	}

	public String getDay2()
	{
		return day2;
	}

	public void setDay2(String day2)
	{
		this.day2 = day2;
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

	public File getMyFile()
	{
		return myFile;
	}

	public void setMyFile(File myFile)
	{
		this.myFile = myFile;
	}

	public String getImageFileName()
	{
		return imageFileName;
	}

	public void setImageFileName(String imageFileName)
	{
		this.imageFileName = imageFileName;
	}

	public String getImagePath()
	{
		return imagePath;
	}

	public void setImagePath(String imagePath)
	{
		this.imagePath = imagePath;
	}

	public String getPagePath()
	{
		return pagePath;
	}

	public void setPagePath(String pagePath)
	{
		this.pagePath = pagePath;
	}

	public String getMyFileContentType()
	{
		return myFileContentType;
	}

	public void setMyFileContentType(String myFileContentType)
	{
		this.myFileContentType = myFileContentType;
	}

	public String getMyFileFileName()
	{
		return myFileFileName;
	}

	public void setMyFileFileName(String myFileFileName)
	{
		this.myFileFileName = myFileFileName;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
