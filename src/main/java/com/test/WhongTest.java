package com.test;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;

import org.junit.Test;

import com.others.md5.Encryption;

public class WhongTest {
	
	public static String convertMD5(String inStr){  
		  
        char[] a = inStr.toCharArray();  
        for (int i = 0; i < a.length; i++){  
            a[i] = (char) (a[i] ^ 't');  
        }  
        String s = new String(a);  
        return s;  
  
    }
	
	 public static String string2MD5(String inStr){  
	        MessageDigest md5 = null;  
	        try{  
	            md5 = MessageDigest.getInstance("MD5");  
	        }catch (Exception e){  
	            System.out.println(e.toString());  
	            e.printStackTrace();  
	            return "";  
	        }  
	        char[] charArray = inStr.toCharArray();  
	        byte[] byteArray = new byte[charArray.length];  
	  
	        for (int i = 0; i < charArray.length; i++)  
	            byteArray[i] = (byte) charArray[i];  
	        byte[] md5Bytes = md5.digest(byteArray);  
	        StringBuffer hexValue = new StringBuffer();  
	        for (int i = 0; i < md5Bytes.length; i++){  
	            int val = ((int) md5Bytes[i]) & 0xff;  
	            if (val < 16)  
	                hexValue.append("0");  
	            hexValue.append(Integer.toHexString(val));  
	        }  
	        return hexValue.toString();  
	  
	    }  
	
	@Test
	public void testMd5() throws UnsupportedEncodingException{
		String md5="123456";
		
		System.out.println(Encryption.encrypation(md5));
		if ("4QrcOUm6Wau+VuBX8g+IPg==".equals(Encryption.encrypation(md5))) {
			System.out.println("true");
		}else {
			System.out.println("false");
		}
		System.out.println("解密:"+convertMD5(convertMD5(md5)));
		
		  String strTest = "4QrcOUm6Wau+VuBX8g+IPg==";
		  strTest = URLEncoder.encode(strTest, "UTF-8");//转码
		  System.out.println(strTest);
		  strTest = URLDecoder.decode(strTest,"UTF-8");//解码
		  System.out.println(strTest);
	}

}
