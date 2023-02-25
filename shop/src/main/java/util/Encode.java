package util;

import java.security.MessageDigest;
import org.apache.tomcat.util.codec.binary.Base64;

import com.mysql.cj.protocol.Message;

public class Encode {
	public static String SHA1(String str) {
		String salt = "ahkjqwer;@#&%,hclv";
		String result = null;
		str += salt;
		
		try {
			byte[] dataByte = str.getBytes("UTF-8");
			MessageDigest md = MessageDigest.getInstance("SHA-1");
			result = Base64.encodeBase64String(md.digest(dataByte));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
