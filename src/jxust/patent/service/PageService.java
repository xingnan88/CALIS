package jxust.patent.service;

import jxust.patent.model.PageBean;


public interface PageService {
	public PageBean queryForPage(String hql, String action, int pageSize, int page);
}
