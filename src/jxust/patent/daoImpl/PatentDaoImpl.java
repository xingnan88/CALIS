package jxust.patent.daoImpl;

import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import jxust.patent.dao.PatentDao;
import jxust.patent.model.Patent;
import jxust.patent.util.DateFormat;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

@Component(value = "patentDao")
public class PatentDaoImpl implements PatentDao
{

	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate()
	{
		return hibernateTemplate;
	}

	@Resource(name = "hibernateTemplate")
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate)
	{
		this.hibernateTemplate = hibernateTemplate;
	}

	public void add(Patent patent)
	{
		hibernateTemplate.save(patent);
	}

	public List<Patent> findAll()
	{
		return (List<Patent>) hibernateTemplate.find("from Patent");

		// int id =9;
		// String queryString="select p from Patent p where p.id="+id;
		// return hibernateTemplate.find(queryString);

		// String mainClassNumber="的撒";
		// String number="544444";
		// String queryString
		// ="select p from Patent p where p.mainClassNumber like '%"+mainClassNumber+"%'";
		// String queryString
		// ="select p from Patent p where p.number like '%"+number+"%'"+"and p.mainClassNumber like '%"+mainClassNumber+"%'";
		// return hibernateTemplate.find(queryString);
	}

	public void update(Patent patent)
	{
		hibernateTemplate.update(patent);
	}

	public Patent findById(int id)
	{
		return (Patent) hibernateTemplate.get(Patent.class, id);
	}

	public void delete(int id)
	{
		Patent patent = this.findById(id);
		hibernateTemplate.delete(patent);
	}

	public List<Patent> list(Patent patent)
	{
		String hql = "select p from Patent p";
		String whereClause = "";

		String number = patent.getNumber();
		Date applicationDate = patent.getApplicationDate();
		String openNumber = patent.getOpenNumber();
		Date publishDate = patent.getPublishDate();
		String name = patent.getName();
		String intro = patent.getIntro();
		String mainClassNumber = patent.getMainClassNumber();
		String classNumber = patent.getClassNumber();
		String applicant = patent.getApplicant();
		String inventor = patent.getInventor();
		String priority = patent.getPriority();
		String address = patent.getAddress();
		String agency = patent.getAgency();
		String agent = patent.getAgent();
		String cpNumber = patent.getCpNumber();
		String similar = patent.getSimilar();
		String patentClaim = patent.getPatentClaim();
		String specification = patent.getSpecification();

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("number", number);
		map.put("applicationDate", applicationDate);
		map.put("openNumber", openNumber);
		map.put("publishDate", publishDate);
		map.put("name", name);
		map.put("intro", intro);
		map.put("mainClassNumber", mainClassNumber);
		map.put("classNumber", classNumber);
		map.put("applicant", applicant);
		map.put("inventor", inventor);
		map.put("priority", priority);
		map.put("address", address);
		map.put("agency", agency);
		map.put("agent", agent);
		map.put("cpNumber", cpNumber);
		map.put("similar", similar);
		map.put("patentClaim", patentClaim);
		map.put("specification", specification);

		Set<String> keys = map.keySet();
		for (String key : keys)
		{
			Object value = map.get(key);
			if (value != null && value.toString().trim().length() != 0)
			{
				if (whereClause.length() == 0)
				{
					whereClause += "p." + key + " like '%" + map.get(key) + "%'";
				} else
				{
					whereClause += "and p." + key + " like '%" + map.get(key) + "%'";
				}
			}
		}
		hql = hql + " " + "where" + " " + whereClause;
		System.out.println(hql);
		return (List<Patent>) hibernateTemplate.find(hql);
	}

	public void deleteSelect(int[] ids)
	{
		for (int id : ids)
		{
			this.delete(id);
		}
	}

	/*
	 * @Test public void testFindAll() { ClassPathXmlApplicationContext ctx =
	 * new ClassPathXmlApplicationContext("applicationContext-hibernate.xml");
	 * HibernateTemplate hibernateTemplate=(HibernateTemplate)
	 * ctx.getBean("hibernateTemplate"); PatentDaoImpl pdi=new PatentDaoImpl();
	 * pdi.setHibernateTemplate(hibernateTemplate); List<Patent>
	 * patents=pdi.findAll(); System.out.print(patents.size()); }
	 * 
	 * @Test public void testList() { ClassPathXmlApplicationContext ctx = new
	 * ClassPathXmlApplicationContext("applicationContext-hibernate.xml");
	 * HibernateTemplate hibernateTemplate=(HibernateTemplate)
	 * ctx.getBean("hibernateTemplate"); PatentDaoImpl pdi=new PatentDaoImpl();
	 * pdi.setHibernateTemplate(hibernateTemplate); Patent p=new Patent();
	 * p.setMainClassNumber("的撒发生的"); p.setOpenNumber("543345"); List<Patent>
	 * patents=pdi.list(p); System.out.println(patents.size()); }
	 */

/*	@Test
	public void testUpdate() throws ParseException
	{
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-hibernate.xml");
		HibernateTemplate hibernateTemplate = (HibernateTemplate) ctx.getBean("hibernateTemplate");
		PatentDaoImpl pdi = new PatentDaoImpl();
		pdi.setHibernateTemplate(hibernateTemplate);
		Patent p = new Patent();
		p.setId(7);
		Date applicationDate=DateFormat.toDate("2000", "2", "20");
		p.setApplicationDate(applicationDate);
		pdi.update(p);
	}*/

}
