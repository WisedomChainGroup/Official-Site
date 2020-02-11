package com.wdc.utils;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;






import org.apache.logging.log4j.LogManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.aliyun.oss.ClientException;
import com.aliyun.oss.OSSClient;
import com.aliyun.oss.OSSException;
import com.aliyun.oss.model.CannedAccessControlList;
import com.aliyun.oss.model.CreateBucketRequest;
import com.aliyun.oss.model.GeneratePresignedUrlRequest;
import com.aliyun.oss.model.PutObjectRequest;
import com.aliyun.oss.model.PutObjectResult;

public class AliOSSUtil {
	private static Logger log = LoggerFactory.getLogger(AliOSSUtil.class);

	public static String END_POINT = "";
	public static String ACCESS_KEY_ID = "";
	public static String ACCESS_KEY_SECRET = "";
	public static String BUCKET_NAME = "card-wisechain";
	// 文件访问域名
	public static String FILE_HOST = "https://card-wisechain.oss-cn-hongkong.aliyuncs.com";

	   //阿里云API的文件夹名称  
    public static final String FOLDER="user/"; 
    public static final String FOLDER_VIDEO="video/";
    public static final String FORMAT = new SimpleDateFormat("yyyyMMdd").format(new Date());
    public static final String FORMATS = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
	
	
	public static String getUrl(String key) {
		OSSClient ossClient = new OSSClient(FILE_HOST, ACCESS_KEY_ID, ACCESS_KEY_SECRET);
		// 设置URL过期时间为1小时
		Date expiration = new Date(new Date().getTime() + 3600 * 1000);
		GeneratePresignedUrlRequest generatePresignedUrlRequest;
		generatePresignedUrlRequest = new GeneratePresignedUrlRequest(BUCKET_NAME, key);
		generatePresignedUrlRequest.setExpiration(expiration);
		URL url = ossClient.generatePresignedUrl(generatePresignedUrlRequest);
		return url.toString();
	}

	/**
	 * 方法描述:上传文件
	 * 
	 * @author leon 2016年12月16日 上午11:40:34
	 * @param file
	 *            文件对象
	 * @return
	 */
	public static String upload(File file) {
		if (file == null) {
			return null;
		}
		// 创建OSS客户端
		OSSClient ossClient = new OSSClient(END_POINT, ACCESS_KEY_ID, ACCESS_KEY_SECRET);
		try {
			// 判断文件容器是否存在，不存在则创建
			if (!ossClient.doesBucketExist(BUCKET_NAME)) {
				ossClient.createBucket(BUCKET_NAME);
				CreateBucketRequest createBucketRequest = new CreateBucketRequest(BUCKET_NAME);
				createBucketRequest.setCannedACL(CannedAccessControlList.PublicRead);
				ossClient.createBucket(createBucketRequest);
			}
			// 创建文件路径

			//String fileUrl = TimeUtil.getnowTime2() + "/" + System.currentTimeMillis() / 1000 + MD5Util.getRandomString(4, true);
			String fileUrl = "wisechainbg/" + System.currentTimeMillis() / 1000 + MD5Util.getRandomString(4, true);
			// 上传文件
			PutObjectResult result = ossClient.putObject(new PutObjectRequest(BUCKET_NAME, fileUrl, file));
			if (null != result) {
				return fileUrl;
			}
		} catch (OSSException oe) {
			log.error(oe.getMessage());
		} catch (ClientException ce) {
			log.error(ce.getMessage());
		} finally {
			// 关闭OSS服务，一定要关闭
			ossClient.shutdown();
		}
		return null;
	}

	/**
	 * 方法描述:上传文件
	 * 
	 * @author leon 2016年12月26日 下午3:33:13
	 * @param inputStream
	 *            文件流
	 * @return
	 * @throws FileNotFoundException
	 */
	public static String upload(InputStream inputStream) throws FileNotFoundException {
		if (inputStream == null) {
			return null;
		}
		// 创建OSS客户端
		OSSClient ossClient = new OSSClient(END_POINT, ACCESS_KEY_ID, ACCESS_KEY_SECRET);
		try {
			// 判断文件容器是否存在，不存在则创建
			if (!ossClient.doesBucketExist(BUCKET_NAME)) {
				ossClient.createBucket(BUCKET_NAME);
				CreateBucketRequest createBucketRequest = new CreateBucketRequest(BUCKET_NAME);
				createBucketRequest.setCannedACL(CannedAccessControlList.PublicRead);
				ossClient.createBucket(createBucketRequest);
			}
			// 创建文件路径
			String fileUrl = TimeUtil.getnowTime2();
			// 上传文件
			PutObjectResult result = ossClient.putObject(new PutObjectRequest(BUCKET_NAME, fileUrl, inputStream));
			if (null != result) {
				return FILE_HOST + fileUrl;
			}

		} catch (OSSException oe) {
			log.error(oe.getMessage());
		} catch (ClientException ce) {
			log.error(ce.getMessage());
		} finally {
			// 关闭OSS服务，一定要关闭
			ossClient.shutdown();
		}
		return null;

	}
}
