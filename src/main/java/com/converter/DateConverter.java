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
		Date date = null;
		try {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			simpleDateFormat.setLenient(false);
			date = simpleDateFormat.parse(s);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return date;
	}
   
}
