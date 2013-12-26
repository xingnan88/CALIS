package jxust.patent.model;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Patent
{
	private int id;
	private String number;
	private Date applicationDate;
	private String openNumber;
	private Date publishDate;
	private String name;
	private String intro;
	private String mainClassNumber;//主分类号
	private String classNumber;//分类号
	private String applicant;
	private String inventor;
	private String priority;
	private String address;
	private String agency;
	private String agent;
	private String cpNumber;
	private String similar;
	private String patentClaim;
	private String specification;
	@Id
	@GeneratedValue(generator = "persistenceGenerator")    
	@GenericGenerator(name = "persistenceGenerator", strategy = "increment") 
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getNumber()
	{
		return number;
	}
	public void setNumber(String number)
	{
		this.number = number;
	}
	public Date getApplicationDate()
	{
		return applicationDate;
	}
	public void setApplicationDate(Date applicationDate)
	{
		this.applicationDate = applicationDate;
	}
	public String getOpenNumber()
	{
		return openNumber;
	}
	public void setOpenNumber(String openNumber)
	{
		this.openNumber = openNumber;
	}
	public Date getPublishDate()
	{
		return publishDate;
	}
	public void setPublishDate(Date publishDate)
	{
		this.publishDate = publishDate;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getIntro()
	{
		return intro;
	}
	public void setIntro(String intro)
	{
		this.intro = intro;
	}
	public String getMainClassNumber()
	{
		return mainClassNumber;
	}
	public void setMainClassNumber(String mainClassNumber)
	{
		this.mainClassNumber = mainClassNumber;
	}
	public String getClassNumber()
	{
		return classNumber;
	}
	public void setClassNumber(String classNumber)
	{
		this.classNumber = classNumber;
	}
	public String getApplicant()
	{
		return applicant;
	}
	public void setApplicant(String applicant)
	{
		this.applicant = applicant;
	}
	public String getInventor()
	{
		return inventor;
	}
	public void setInventor(String inventor)
	{
		this.inventor = inventor;
	}
	public String getPriority()
	{
		return priority;
	}
	public void setPriority(String priority)
	{
		this.priority = priority;
	}
	public String getAddress()
	{
		return address;
	}
	public void setAddress(String address)
	{
		this.address = address;
	}
	public String getAgency()
	{
		return agency;
	}
	public void setAgency(String agency)
	{
		this.agency = agency;
	}
	public String getAgent()
	{
		return agent;
	}
	public void setAgent(String agent)
	{
		this.agent = agent;
	}
	public String getCpNumber()
	{
		return cpNumber;
	}
	public void setCpNumber(String cpNumber)
	{
		this.cpNumber = cpNumber;
	}
	public String getSimilar()
	{
		return similar;
	}
	public void setSimilar(String similar)
	{
		this.similar = similar;
	}
	public String getPatentClaim()
	{
		return patentClaim;
	}
	public void setPatentClaim(String patentClaim)
	{
		this.patentClaim = patentClaim;
	}
	public String getSpecification()
	{
		return specification;
	}
	public void setSpecification(String specification)
	{
		this.specification = specification;
	}
	@Override
	public String toString()
	{
		
		return number;
	}
}
