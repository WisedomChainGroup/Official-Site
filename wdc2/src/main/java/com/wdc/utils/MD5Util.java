package com.wdc.utils;


import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

/**
 * MD5加密算法
 */
public class MD5Util {
	
	private static Logger logger = LoggerFactory.getLogger(MD5Util.class);


	/**
	 * @Description:加密-16位小写
	 * @time:2016年5月23日 上午11:15:33
	 */
	public static String md516(String encryptStr) {
		return MD5(encryptStr).substring(8, 24);
	}

	/**
	 * 加密结果为32位小写
	 * 
	 * @param key
	 * @return
	 */
	public static String MD5(String key) {
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
		try {
			byte[] btInput = key.getBytes();
			// 获得MD5摘要算法的 MessageDigest 对象
			MessageDigest mdInst = MessageDigest.getInstance("MD5");
			// 使用指定的字节更新摘要
			mdInst.update(btInput);
			// 获得密文
			byte[] md = mdInst.digest();
			// 把密文转换成十六进制的字符串形式
			int j = md.length;
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {
				byte byte0 = md[i];
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];
				str[k++] = hexDigits[byte0 & 0xf];
			}
			return new String(str).toLowerCase();
		} catch (Exception e) {
			return null;
		}
	}

	public static String getRandomString(int length) {
		String str = "1234567890";
		// 由Random生成随机数
		Random random = new Random();
		StringBuilder build = new StringBuilder();
		// 长度为几就循环几次
		for (int i = 0; i < length; ++i) {
			// 产生0-61的数字
			int number = random.nextInt(str.length());
			// 将产生的数字通过length次承载到sb中
			build.append(str.charAt(number));
		}
		// 将承载的字符转换成字符串
		return build.toString();
	}

	public static String getRandomString(int length, boolean a) {
		String str = "ABCDEFGHIJKLMNPQRSTUVWXYZ123456789";
		// 由Random生成随机数
		Random random = new Random();
		StringBuilder build = new StringBuilder();
		// 长度为几就循环几次
		for (int i = 0; i < length; ++i) {
			// 产生0-61的数字
			int number = random.nextInt(str.length());
			// 将产生的数字通过length次承载到sb中
			build.append(str.charAt(number));
		}
		// 将承载的字符转换成字符串
		return build.toString();
	}

	/**
	 * 获取客户端ID地址
	 * 
	 * @param request
	 * @return
	 */
	public static String getIpAddress(HttpServletRequest request) {

		String ipAddress = request.getHeader("x-forwarded-for");

		if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
			ipAddress = request.getHeader("Proxy-Client-IP");
		}
		if (ipAddress == null || ipAddress.length() == 0 || "unknow".equalsIgnoreCase(ipAddress)) {
			ipAddress = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
			ipAddress = request.getRemoteAddr();

			if (ipAddress.equals("127.0.0.1") || ipAddress.equals("0:0:0:0:0:0:0:1")) {
				// 根据网卡获取本机配置的IP地址
				InetAddress inetAddress = null;
				try {
					inetAddress = InetAddress.getLocalHost();
				} catch (UnknownHostException e) {
					e.printStackTrace();
				}
				ipAddress = inetAddress.getHostAddress();
			}
		}

		// 对于通过多个代理的情况，第一个IP为客户端真实的IP地址，多个IP按照','分割
		if (null != ipAddress && ipAddress.length() > 15) {
			// "***.***.***.***".length() = 15
			if (ipAddress.indexOf(",") > 0) {
				ipAddress = ipAddress.substring(0, ipAddress.indexOf(","));
			}
		}

		return ipAddress;
	}

	/**
	 * 根据IP地址获取ip信息
	 */
	public static String[] getIpMessage(String ip) {
		String 	result = "{\"code\":0,\"data\":{\"ip\":\"182.139.7.5\",\"country\":\"未知\",\"area\":\"\",\"region\":\"未知\",\"city\":\"未知\",\"county\":\"XX\",\"isp\":\"电信\",\"country_id\":\"CN\",\"area_id\":\"\",\"region_id\":\"510000\",\"city_id\":\"510100\",\"county_id\":\"xx\",\"isp_id\":\"100017\"}}";
		JSONObject jsonObject = JSON.parseObject(result);
		String resultdata = jsonObject.getString("data");
		JSONObject jsonObject2 = JSON.parseObject(resultdata);
		logger.info("国家是:" + jsonObject2.getString("country"));
		logger.info("地区是:" + jsonObject2.getString("region"));
		logger.info("城市是:" + jsonObject2.getString("city"));
		String[] strs = { jsonObject2.getString("country"), jsonObject2.getString("region"),
				jsonObject2.getString("city") };
		return strs;
	}

	
	
	
}