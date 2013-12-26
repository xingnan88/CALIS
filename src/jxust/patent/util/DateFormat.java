package jxust.patent.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormat
{
	public static Date toDate(String year,String month,String day) throws ParseException
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String s=year+"-"+month+"-"+day;
		Date date = sdf.parse(s);
		return date;
	}
}
