package jxust.patent.util;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import jxust.patent.model.Patent;
import jxust.patent.vo.SearchInfo;

public class CreateHql
{
	public static String getHql(SearchInfo searchInfo)
	{
		String hql = "select p from Patent p";
		String whereClause = "";

		String number = searchInfo.getNumber();
		String openNumber = searchInfo.getOpenNumber();
		String name = searchInfo.getName();
		String intro = searchInfo.getIntro();
		String mainClassNumber = searchInfo.getMainClassNumber();
		String classNumber = searchInfo.getClassNumber();
		String applicant = searchInfo.getApplicant();
		String inventor = searchInfo.getInventor();
		String priority = searchInfo.getPriority();
		String address = searchInfo.getAddress();
		String agency = searchInfo.getAgency();
		String agent = searchInfo.getAgent();
		String cpNumber = searchInfo.getCpNumber();
		String similar = searchInfo.getSimilar();
		String patentClaim = searchInfo.getPatentClaim();
		String specification = searchInfo.getSpecification();
		String year5 = searchInfo.getYear5();
		String year6 = searchInfo.getYear6();
		String year3 = searchInfo.getYear3();
		String year4 = searchInfo.getYear4();
		String month5 = searchInfo.getMonth5();
		String month6 = searchInfo.getMonth6();
		String month3 = searchInfo.getMonth3();
		String month4 = searchInfo.getMonth4();
		String day5 = searchInfo.getDay5();
		String day6 = searchInfo.getDay6();
		String day3 = searchInfo.getDay3();
		String day4 = searchInfo.getDay4();

		String dateFrom1 = year5 + "-" + month5 + "-" + day5;
		String dateto1 = year6 + "-" + month6 + "-" + day6;
		String dateFrom2 = year3 + "-" + month3 + "-" + day3;
		String dateto2 = year4 + "-" + month4 + "-" + day4;

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("number", number);
		map.put("openNumber", openNumber);
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

		if (whereClause.length() == 0)
		{
			whereClause += "p.applicationDate>='" + dateFrom1 + "' " + "and p.applicationDate<='" + dateto1 + "' " + "and p.publishDate>='" + dateFrom2 + "' " + "and p.publishDate<='" + dateto2 + "'";
		} else
		{
			whereClause += "and p.applicationDate>='" + dateFrom1 + "' " + "and p.applicationDate<='" + dateto1 + "' " + "and p.publishDate>='" + dateFrom2 + "' " + "and p.publishDate<='" + dateto2 + "'";
		}

		if (whereClause.length() != 0)
		{
			hql = hql + " " + "where" + " " + whereClause;
		}
		System.out.println(hql);
		return hql;
	}

	public static String pareType(String type)
	{
		if (type.equals("专利名称"))
		{
			return "name";
		}else if(type.equals("专利号"))
		{
			return "number";
		}else if(type.equals("专利申请人"))
		{
			return "applicant";
		}
		return null;

	}
}
