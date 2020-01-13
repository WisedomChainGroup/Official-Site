package com.wdc.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wdc.bean.Msg;
import com.wdc.bean.Information;
import com.wdc.service.InformationService;
import com.wdc.utils.AliOSSUtil;




@Controller
public class InformationController {

	@Autowired
	InformationService informationService;
//多查询
	@RequestMapping("/informations")
	@ResponseBody
	public Msg getInformationsWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 5);
		List<Information> informations = informationService.getAll();
		PageInfo page = new PageInfo(informations, 5);
		return Msg.success().add("pageInfo", page);
	}
//多查询 cn en
	@RequestMapping("/informations2")
	@ResponseBody
	public Msg getInformationsWithJson2(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		String en="en";
		String cn="cn";
		PageHelper.startPage(pn, 5);
		List<Information> informations = informationService.getAll7(en,cn);
		PageInfo page = new PageInfo(informations, 5);
		return Msg.success().add("pageInfo", page);
	}
	
//新增
	@RequestMapping(value="/information",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertSlide( Information information,HttpServletRequest request,@RequestParam("informationFile" )MultipartFile file) throws IllegalStateException, IOException{
		String path=request.getServletContext().getRealPath("/images/information/");//设置上传文件路径
		
		String filename =file.getOriginalFilename();//获取上传文件名
		String filename2=filename.substring(filename.lastIndexOf("."), filename.length());//截取上传文件名后缀
		String filename3=Calendar.getInstance().getTimeInMillis()+filename2;//设置上传文件名格式 ：时间排序+文件名后缀
		//合成上传文件完整路径
		File filepath=new File(path,filename3);
		if(!filepath.getParentFile().exists()) {//判断路径是否存在，如果不存在就创建一个
			filepath.getParentFile().mkdirs();
		}
		//将上传文件保存目标文件中
		file.transferTo(new File(path+File.separator+filename3));
		System.out.println(path);
		System.out.println(filename3);
		System.out.println(filepath);
		information.setImg(filename3);//保存图片地址
		System.out.println(information);
		
		//获取时间
		//SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		//String a =df.format(new Date());
		//String b =a;
		//String c= b.substring(0, 8);
		//StringBuilder sb = new StringBuilder(c);
		//sb.insert(4, "-");//在指定的位置1，插入指定的字符串
		//sb.insert(7, "-");
	    //sb.insert(10, "-");
	    //String d = sb.toString();
		//information.setTime(d);//保存时间
		
		informationService.saveInformation(information);
		System.out.println("信息："+information);
		return Msg.success();
	
	}
//单查询
	@RequestMapping(value="/information/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getInformation(@PathVariable("id")Integer id){
		Information information = informationService.getInformation(id);
		return Msg.success().add("information", information);
	}
//修改
	@ResponseBody
	@RequestMapping(value="/information/{id}",method=RequestMethod.POST)
	public Msg saveInformation(Information information,HttpServletRequest request,@RequestParam("informationFile" )MultipartFile file) throws IllegalStateException, IOException{
		String path=request.getServletContext().getRealPath("/images/information/");//设置上传文件路径
		
		String filename =file.getOriginalFilename();//获取上传文件名
		if(filename.length()!=0) {
			
		
		String filename2=filename.substring(filename.lastIndexOf("."), filename.length());//截取上传文件名后缀
		String filename3=Calendar.getInstance().getTimeInMillis()+filename2;//设置上传文件名格式 ：时间排序+文件名后缀
		//合成上传文件完整路径
		File filepath=new File(path,filename3);
		if(!filepath.getParentFile().exists()) {//判断路径是否存在，如果不存在就创建一个
			filepath.getParentFile().mkdirs();
		}
		//将上传文件保存目标文件中
		file.transferTo(new File(path+File.separator+filename3));
		System.out.println(path);
		System.out.println(filename3);
		System.out.println(filepath);
		information.setImg(filename3);//保存图片地址
		}

		//获取时间
				SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
				String a =df.format(new Date());
				String b =a;
				String c= b.substring(0, 8);
				StringBuilder sb = new StringBuilder(c);
				sb.insert(4, "-");//在指定的位置1，插入指定的字符串
			    sb.insert(7, "-");
			    //sb.insert(10, "日");
			    String d = sb.toString();
				information.setTime(d);//保存时间
		
		
		System.out.println("将要更新的数据："+information);
		informationService.updateInformation(information);
		return Msg.success()	;
	}
//删除
	@ResponseBody
	@RequestMapping(value="/information/{ids}",method=RequestMethod.DELETE)
	public Msg deleteInformation(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<Integer>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			informationService.deleteBatch(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			informationService.deleteInformation(id);
		}
		return Msg.success();
	}
//版本
	@RequestMapping(value="/informations/{edition}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getInformations2(@PathVariable("edition") String edition,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
		PageHelper.startPage(pn, 5);
		List<Information> informations = informationService.getAll2(edition);
		PageInfo page = new PageInfo(informations, 5);
		return Msg.success().add("pageInfo", page);
	}
	
	
//模糊查询
	@RequestMapping(value="/informations3/{title}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getInformations3(@PathVariable("title") String title,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
		PageHelper.startPage(pn, 5);
		List<Information> informations = informationService.getAll4(title);
		PageInfo page = new PageInfo(informations, 5);
		return Msg.success().add("pageInfo", page);
	}
//版本 类别 模糊查询
	@RequestMapping(value="/informations5/{edition}/{title}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getInformations5(@PathVariable("edition") String edition,@PathVariable("title") String title,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
		PageHelper.startPage(pn, 5);
		List<Information> informations = informationService.getAll5(edition,title);
		PageInfo page = new PageInfo(informations, 5);
		return Msg.success().add("pageInfo", page);
	}
		
//上传图片
	@RequestMapping(value ="/upload",method=RequestMethod.POST)
	@ResponseBody
    	public Object UpLoadImg(HttpServletRequest request,@RequestParam(value="file")MultipartFile file) {
        String realPath = request.getSession().getServletContext().getRealPath("/images/information/");
        System.out.println("realPath是："+realPath);  
	    //设置文件路径
	    String filename = file.getOriginalFilename();
	    System.out.println("filename:"+filename);
	    String[] names=filename.split("\\.");//
	    String tempNum=(int)(Math.random()*100000)+"";
	    String uploadFileName=tempNum +System.currentTimeMillis()+"."+names[names.length-1];
	    System.out.println("uploadFileName是："+uploadFileName);
	    File targetFile = new File (realPath,uploadFileName);//目标文件
	    System.out.println("目标文件是："+targetFile);
	    //开始从源文件拷贝到目标文件
	    //传图片一步到位
	    try {
	        file.transferTo(targetFile);
	    } catch (IllegalStateException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    } catch (IOException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }
	     
	    Map<String, String> map = new HashMap<String, String>();
	    map.put("data","http://localhost:8080/wdc2/images/information/"+uploadFileName);//文件路径
	    return map;//将图片地址返回编辑器
	    }
	
	
	
//区块链知识 多查询
		@RequestMapping(value="/informations/{en}/{cn}",method=RequestMethod.GET)
		@ResponseBody
		public Msg getInformations6(@PathVariable("en") String en,@PathVariable("cn") String cn,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
			PageHelper.startPage(pn, 5);
			List<Information> informations = informationService.getAll6(en,cn);
			PageInfo page = new PageInfo(informations, 5);
			return Msg.success().add("pageInfo", page);
		}

		
//新增 OSS  
		@RequestMapping(value="/information2",method=RequestMethod.POST)
		@ResponseBody
		public Msg insertSlide2( Information information,HttpServletRequest request,@RequestParam("informationFile" )MultipartFile file) throws IllegalStateException, IOException{
		
			
			String filename =file.getOriginalFilename();//获取上传文件名
		
			File dest=new File(filename);
			
			FileOutputStream outStream = new FileOutputStream(dest);
			outStream.write(file.getBytes());
			outStream.close(); // 关闭文件输出流
			String picurl = AliOSSUtil.upload(dest);
			System.out.println("picurl:"+picurl);
			dest.delete(); // 上传后删除本地图片
			String path=AliOSSUtil.FILE_HOST;
			String url=picurl;
		
			information.setImg(path+"/"+url);//保存图片地址
			System.out.println(information);
			
			//获取时间
//			SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
//			String a =df.format(new Date());
//			String b =a;
//			String c= b.substring(0, 8);
//			StringBuilder sb = new StringBuilder(c);
//			sb.insert(4, "-");//在指定的位置1，插入指定的字符串
//			sb.insert(7, "-");
//		    //sb.insert(10, "-");
//		    String d = sb.toString();
//			information.setTime(d);//保存时间
			
			System.out.println("information:"+information);
			informationService.saveInformation(information);
			return Msg.success();
		
		}
		
//上传图片OSS  编辑器
		@RequestMapping(value ="/upload2",method=RequestMethod.POST)
		@ResponseBody
	    	public Object UpLoadImg2(HttpServletRequest request,@RequestParam(value="file")MultipartFile file) throws IOException {
	       
		    //设置文件路径
		    String filename = file.getOriginalFilename();
		    File dest=new File(filename);
		   
		    FileOutputStream outStream = new FileOutputStream(dest);
			outStream.write(file.getBytes());
			outStream.close(); // 关闭文件输出流
			String picurl = AliOSSUtil.upload(dest);
			System.out.println("picurl:"+picurl);
			dest.delete(); // 上传后删除本地图片
			String path=AliOSSUtil.FILE_HOST;
			String url=picurl;
		       
		    Map<String, String> map = new HashMap<String, String>();
		    map.put("data",path+"/"+url);//文件路径
		    return map;//将图片地址返回编辑器
		    }
		
//修改 OSS
		@ResponseBody
		@RequestMapping(value="/information2/{id}",method=RequestMethod.POST)
		public Msg saveInformation2(Information information,HttpServletRequest request,@RequestParam("informationFile" )MultipartFile file) throws IllegalStateException, IOException{
			
			
			
			String filename =file.getOriginalFilename();//获取上传文件名
			if(filename.length()!=0) {
				
			
			File dest=new File(filename);
			
			FileOutputStream outStream = new FileOutputStream(dest);
			outStream.write(file.getBytes());
			outStream.close(); // 关闭文件输出流
			String picurl = AliOSSUtil.upload(dest);
			System.out.println("picurl:"+picurl);
			dest.delete(); // 上传后删除本地图片
			String path=AliOSSUtil.FILE_HOST;
			String url=picurl;
		
			information.setImg(path+"/"+url);//保存图片地址
			}
			System.out.println(information);


			//获取时间
//					SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
//					String a =df.format(new Date());
//					String b =a;
//					String c= b.substring(0, 8);
//					StringBuilder sb = new StringBuilder(c);
//					sb.insert(4, "-");//在指定的位置1，插入指定的字符串
//				    sb.insert(7, "-");
//				    //sb.insert(10, "日");
//				    String d = sb.toString();
//					information.setTime(d);//保存时间
			
			
			System.out.println("将要更新的数据："+information);
			informationService.updateInformation(information);
			return Msg.success()	;
		}
}
