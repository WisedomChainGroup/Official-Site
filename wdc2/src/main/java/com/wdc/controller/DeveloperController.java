package com.wdc.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

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
import com.wdc.bean.Product;
import com.wdc.bean.Application;
import com.wdc.bean.Developer;
import com.wdc.bean.Developer;
import com.wdc.bean.Slide;
import com.wdc.service.DeveloperService;
import com.wdc.utils.AliOSSUtil;



@Controller
public class DeveloperController {

	@Autowired
	DeveloperService developerService;
//多查询
	@RequestMapping("/developers")
	@ResponseBody
	public Msg getDevelopersWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 5);
		List<Developer> developers = developerService.getAll();
		PageInfo page = new PageInfo(developers, 5);
		return Msg.success().add("pageInfo", page);
	}
//新增
	@RequestMapping(value="/developer",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertSlide( Developer developer,HttpServletRequest request,@RequestParam("developerFile" )MultipartFile file) throws IllegalStateException, IOException{
		String path=request.getServletContext().getRealPath("/images/developer/");//设置上传文件路径
		
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
		developer.setImg(filename3);//保存图片地址
		System.out.println(developer);
		
		developerService.saveDeveloper(developer);
		return Msg.success();
	
	}
//单查询
	@RequestMapping(value="/developer/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getDeveloper(@PathVariable("id")Integer id){
		Developer developer = developerService.getDeveloper(id);
		return Msg.success().add("developer", developer);
	}
//修改
	@ResponseBody
	@RequestMapping(value="/developer/{id}",method=RequestMethod.POST)
	public Msg saveDeveloper(Developer developer,HttpServletRequest request,@RequestParam("developerFile" )MultipartFile file) throws IllegalStateException, IOException{
		String path=request.getServletContext().getRealPath("/images/developer/");//设置上传文件路径
		
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
		developer.setImg(filename3);//保存图片地址
		System.out.println(developer);

		System.out.println("将要更新的轮播图数据："+developer);
		developerService.updateDeveloper(developer);
		return Msg.success()	;
	}
//删除
	@ResponseBody
	@RequestMapping(value="/developer/{ids}",method=RequestMethod.DELETE)
	public Msg deleteDeveloper(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<Integer>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			developerService.deleteBatch(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			developerService.deleteDeveloper(id);
		}
		return Msg.success();
	}
	
	@RequestMapping(value="/user/developers",method=RequestMethod.GET)
	@ResponseBody
	public Msg getAll1(){
		List<Developer> developers =developerService.getAll1();	
		
		return Msg.success().add("developers", developers);
		}
	
	
	@RequestMapping(value="/developers/{edition}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getDevelopers2(@PathVariable("edition") String edition){
		List<Developer> developers =developerService.getAll2(edition);
		return Msg.success().add("developers", developers);
	}
	
//新增 OSS  
			@RequestMapping(value="/developer2",method=RequestMethod.POST)
			@ResponseBody
			public Msg insertSlide2( Developer developer,HttpServletRequest request,@RequestParam("developerFile" )MultipartFile file) throws IllegalStateException, IOException{
			
				
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
			
				developer.setImg(path+"/"+url);//保存图片地址
				System.out.println(developer);
				
				System.out.println("developer:"+developer);
				developerService.saveDeveloper(developer);
				return Msg.success();
			
			}
//修改 OSS
			@ResponseBody
			@RequestMapping(value="/developer2/{id}",method=RequestMethod.POST)
			public Msg saveDeveloper2(Developer developer,HttpServletRequest request,@RequestParam("developerFile" )MultipartFile file) throws IllegalStateException, IOException{
				
				System.out.println(file);
			

				
				String filename =file.getOriginalFilename();//获取上传文件名
				System.out.println(filename.length());
				
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
				
				developer.setImg(path+"/"+url);//保存图片地址
				}
				System.out.println(developer);
			
				System.out.println("将要更新的数据："+developer);
				developerService.updateDeveloper(developer);
				return Msg.success();
			}
}
