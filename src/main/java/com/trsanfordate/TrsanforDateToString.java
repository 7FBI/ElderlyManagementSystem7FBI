package com.trsanfordate;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TrsanforDateToString {
	public static int trsanforDate(String ds){
		//SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		int data;
		Date nowdate = new Date();
		System.out.println("当前日期"+nowdate.getTime());
		
			Date dates=new Date(ds);
			System.out.println("活动日期"+dates.getTime());
			if(dates.getTime()>nowdate.getTime()){
				data=1;
				System.out.println("报名还未截止！");
			   }
			else if(dates.getDate()==nowdate.getDate()){
			    	data=1;
					System.out.println("报名还未截止！");  	
			    }else{
			    	data=0;
			    	System.out.println("已过报名日期！");
			    }
			return data;
	
	}
}
