package jxust.patent.dao;

import java.util.List;

import jxust.patent.model.Patent;

public interface PatentDao
{
	public abstract void add(Patent patent);
	public abstract List<Patent> findAll();
	public abstract void update(Patent patent);
	public abstract Patent findById(int id);
	public abstract void delete(int id);
	public abstract List<Patent> list(Patent patent);
	public abstract void deleteSelect(int[] ids);
}
