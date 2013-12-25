package jxust.patent.model;

import java.util.List;

public class PageBean
{
	private List list;
	private int allRow;
	private static int totalPage;
	private int currentPage;
	private int pageSize;
	private boolean isFirstPage;
	private boolean isLastPage;
	private boolean hasPreviousPage;
	private boolean hasNextPage;
	private String ctrlInfo;

	public String getCtrlInfo()
	{
		return ctrlInfo;
	}

	public void setCtrlInfo(String ctrlInfo)
	{
		this.ctrlInfo = ctrlInfo;
	}

	public List getList()
	{
		return list;
	}

	public void setList(List list)
	{
		this.list = list;
	}

	public int getAllRow()
	{
		return allRow;
	}

	public void setAllRow(int allRow)
	{
		this.allRow = allRow;
	}

	public int getTotalPage()
	{
		return totalPage;
	}

	public void setTotalPage(int totalPage)
	{
		this.totalPage = totalPage;
	}

	public int getCurrentPage()
	{
		return currentPage;
	}

	public void setCurrentPage(int currentPage)
	{
		this.currentPage = currentPage;
	}

	public int getPageSize()
	{
		return pageSize;
	}

	public void setPageSize(int pageSize)
	{
		this.pageSize = pageSize;
	}

	public void init()
	{
		this.isFirstPage = isFirstPage();
		this.isLastPage = isLastPage();
		this.hasNextPage = isHasNextPage();
		this.hasPreviousPage = isHashPreviousPage();
	}

	private boolean isHashPreviousPage()
	{
		return currentPage != 1;
	}

	private boolean isHasNextPage()
	{
		return currentPage != totalPage;
	}

	private boolean isLastPage()
	{
		return currentPage == totalPage;
	}

	private boolean isFirstPage()
	{
		return currentPage == 1;
	}

	public static int countTotalPage(final int pageSize, final int allRow)
	{
		int totalPage = allRow % pageSize == 0 ? allRow / pageSize : allRow / pageSize + 1;
		return totalPage;
	}

	public static int countOffset(final int pageSize, final int currentPage)
	{
		final int offset = pageSize * (currentPage - 1);
		return offset;
	}

	public static int countCurrentPage(int page)
	{
		// final int curPage = (page==0?1:page);
		int curPage = page;
		System.out.println(page);
		System.out.println(totalPage);
		if (page <= 0)
			curPage = 1;
		if (page > totalPage && totalPage != 0)
			curPage = totalPage;
		return curPage;
	}

	public void ctrl(String action, int page)
	{
		String first = action + "?page=1";
		String last = action + "?page=" + this.getTotalPage();
		String pre = action + "?page=" + (page - 1);
		String next = action + "?page=" + (page + 1);
		this.setCtrlInfo("<a>显示第"+this.getCurrentPage()+"页</a>&nbsp;<a href="+first+">第一页</a>"+"&nbsp;<a href="+pre+">上一页</a>"+"&nbsp;<a href="+next+">下一页</a>&nbsp;<a href="+last+">最后一页</a>"+"&nbsp;&nbsp;<a>一共"+this.getTotalPage()+"页</a>");
		//this.setCtrlInfo("显示第" + this.getCurrentPage() + "页&nbsp;<a href=" + first + ">第一页</a>" + "&nbsp;<a href=" + pre + ">上一页</a>" + "&nbsp;<a href=" + next + ">下一页</a>&nbsp;<a href=" + last + ">最后一页</a>");
	}

}