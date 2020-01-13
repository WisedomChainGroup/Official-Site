package com.wdc.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

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
import com.wdc.bean.Application;
import com.wdc.bean.Application;
import com.wdc.service.ApplicationService;
import com.wdc.utils.AliOSSUtil;



@Controller
public class ApplicationController {

	@Autowired
	ApplicationService applicationService;
//多查询
	@RequestMapping("/applications")
	@ResponseBody
	public Msg getApplicationsWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 5);
		List<Application> applications = applicationService.getAll();
		PageInfo page = new PageInfo(applications, 5);
		return Msg.success().add("pageInfo", page);
	}
//新增
	@RequestMapping(value="/application",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertSlide( Application application,HttpServletRequest request,@RequestParam("applicationFile" )MultipartFile file) throws IllegalStateException, IOException{
		String path=request.getServletContext().getRealPath("/images/application/");//设置上传文件路径
		
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
		application.setImg(filename3);//保存图片地址
		System.out.println(application);
		
		applicationService.saveApplication(application);
		return Msg.success();
	
	}
//单查询
	@RequestMapping(value="/application/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getApplication(@PathVariable("id")Integer id){
		Application application = applicationService.getApplication(id);
		return Msg.success().add("application", application);
	}
//修改
	@ResponseBody
	@RequestMapping(value="/application/{id}",method=RequestMethod.POST)
	public Msg saveApplication(Application application,HttpServletRequest request,@RequestParam("applicationFile" )MultipartFile file) throws IllegalStateException, IOException{
		String path=request.getServletContext().getRealPath("/images/application/");//设置上传文件路径
		
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
		application.setImg(filename3);//保存图片地址
		System.out.println(application);

		System.out.println("将要更新的轮播图数据："+application);
		applicationService.updateApplication(application);
		return Msg.success()	;
	}
//删除
	@ResponseBody
	@RequestMapping(value="/application/{ids}",method=RequestMethod.DELETE)
	public Msg deleteApplication(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<Integer>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			applicationService.deleteBatch(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			applicationService.deleteApplication(id);
		}
		return Msg.success();
	}
	@RequestMapping(value="/user/applications",method=RequestMethod.GET)
	@ResponseBody
	public Msg getAll1(){
		List<Application> applications =applicationService.getAll1();	
		
		return Msg.success().add("applications", applications);
		}
	
	@RequestMapping(value="/applications/{edition}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getApplications2(@PathVariable("edition") String edition){
		List<Application> applications = applicationService.getAll2(edition);
		return Msg.success().add("applications", applications);
	}
	
	//新增 OSS  
	@RequestMapping(value="/application2",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertSlide2( Application application,HttpServletRequest request,@RequestParam("applicationFile" )MultipartFile file) throws IllegalStateException, IOException{
	
		
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
	
		application.setImg(path+"/"+url);//保存图片地址
		System.out.println(application);
		
		System.out.println("application:"+application);
		applicationService.saveApplication(application);
		return Msg.success();
	
	}
//修改 OSS
	@ResponseBody
	@RequestMapping(value="/application2/{id}",method=RequestMethod.POST)
	public Msg saveApplication2(Application application,HttpServletRequest request,@RequestParam("applicationFile" )MultipartFile file) throws IllegalStateException, IOException{
		
		
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
	
		application.setImg(path+"/"+url);//保存图片地址
		}
		System.out.println(application);
	
		System.out.println("将要更新的数据："+application);
		applicationService.updateApplication(application);
		return Msg.success()	;
	}
}
