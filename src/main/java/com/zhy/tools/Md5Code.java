package com.zhy.tools;

import java.security.MessageDigest;
import sun.misc.BASE64Encoder;
public class Md5Code {

	public static String createMd5Code(String code) throws Exception {
		MessageDigest digest = MessageDigest.getInstance("MD5");
		byte[] b=digest.digest(code.getBytes());
		BASE64Encoder encoder=new BASE64Encoder();
		return encoder.encode(b);
	}
	
	public static void main(String[] args) throws Exception {
		System.out.println(createMd5Code("admin"));
	}

}
