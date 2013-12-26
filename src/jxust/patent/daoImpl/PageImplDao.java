package jxust.patent.daoImpl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import jxust.patent.dao.PageDao;
import jxust.patent.model.Patent;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

@Component(value = "pageDao")
public class PageImplDao implements PageDao
{
	private HibernateTemplate hibernateTemplate;
	
	public List queryForPage(final String hql, final int offset, final int length)
	{
		List list = hibernateTemplate.executeFind(new HibernateCallback()
		{

			public Object doInHibernate(Session session) throws HibernateException, SQLException
			{
				Query query = session.createQuery(hql);
				query.setFirstResult(offset);
				query.setMaxResults(length);
				List list = query.list();
				return list;
			}
		});
		return list;
	}

	public int getAllRowCount(String hql)
	{
		return hibernateTemplate.find(hql).size();
	}

	public HibernateTemplate getHibernateTemplate()
	{
		return hibernateTemplate;
	}
	@Resource(name="hibernateTemplate")
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate)
	{
		this.hibernateTemplate = hibernateTemplate;
	}
	
/*	@Test
	public void testQueryForPage()
	{
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-hibernate.xml");
		HibernateTemplate hibernateTemplate=(HibernateTemplate) ctx.getBean("hibernateTemplate");
		PageImplDao pid=new PageImplDao();
		pid.setHibernateTemplate(hibernateTemplate);
		List<Patent> list=pid.queryForPage("from Patent", 2, 5);
		for (Patent p:list)
		{
			System.out.println(p.getId());
		}
	}*/
}
