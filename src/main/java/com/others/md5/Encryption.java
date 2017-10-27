package com.others.md5;
import sun.misc.BASE64Encoder;

import java.security.MessageDigest;
public class Encryption {
	/**
     * 字符串MD5加密
     * @param data
     * @return
     */
    public static String encrypation(String data){
        String d=null;
        try {
            MessageDigest  md=MessageDigest.getInstance("MD5");
            BASE64Encoder aftermb=new BASE64Encoder();
            d=aftermb.encode(md.digest(data.getBytes("utf-8")));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return d;
    }
}
