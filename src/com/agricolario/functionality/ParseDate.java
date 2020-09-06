package com.agricolario.functionality;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ParseDate {

	public ParseDate() {
		// TODO Auto-generated constructor stub
	}
	//parse to string to Date java util
    public static Date parseDateUtil(String date) {
        	//date.replace("-","/");
        	System.out.println(date);
    	  SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd"); 
			Date dateUtil = null;
			try {
				
				dateUtil = formatter.parse(date);
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
			System.out.println("ok lo stesso");
			}
			return dateUtil;
    }

    //parse from date to date sql
    public static java.sql.Date parseDateSql(Date date){
    	 java.sql.Date sqlDate = new java.sql.Date(date.getTime());
    	return sqlDate;
    } 
    

}
