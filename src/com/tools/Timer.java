package com.tools;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Timer {
	public static String getDate(){
		Date date = new Date();
//		yyyy-MM-dd HH:mm:ss EEEE
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return dateFormat.format(date);
	}
	
	public static String getWeek(){
		Date date = new Date();
//		yyyy-MM-dd HH:mm:ss
		SimpleDateFormat dateFormat = new SimpleDateFormat("EEEE");
		return dateFormat.format(date);
	}
	
	public static String formatDate(Date date){
//		yyyy-MM-dd HH:mm:ss
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		return dateFormat.format(date);
	}
	
	public static Date coverStrDateToDate(String strDate){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = dateFormat.parse(strDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}
}
