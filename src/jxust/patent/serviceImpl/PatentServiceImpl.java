package jxust.patent.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import jxust.patent.dao.PatentDao;
import jxust.patent.model.Patent;
import jxust.patent.service.PatentService;

@Component(value = "patentService")
public class PatentServiceImpl implements PatentService
{
	private PatentDao pd;

	public PatentDao getPd()
	{
		return pd;
	}

	@Resource(name = "patentDao")
	public void setPd(PatentDao pd)
	{
		this.pd = pd;
	}

	public void add(Patent patent)
	{
		pd.add(patent);
	}

	public List<Patent> findAll()
	{
		return pd.findAll();
	}

	public void update(Patent patent)
	{
		pd.update(patent);
	}

	public void delete(int id)
	{
		pd.delete(id);
	}

	public Patent findById(int id)
	{
		return pd.findById(id);
	}

	public List<Patent> list(Patent patent)
	{
		return pd.list(patent);
	}

	public void deleteSelect(int[] ids)
	{
		pd.deleteSelect(ids);
	}

}
