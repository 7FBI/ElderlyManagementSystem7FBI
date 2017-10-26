package com.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 * Created by Administrator on 2017/9/29.
 */
public class DateConverter implements Converter<String,Date> {

	public Date convert(String s) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(false);
        try {    
            return sdf.parse(s);    
        } catch (ParseException e) {    
            e.printStackTrace();    
        }           
        return null;   
	}
   
}
