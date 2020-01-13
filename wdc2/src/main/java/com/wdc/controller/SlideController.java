package com.wdc.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wdc.bean.Slide;
import com.wdc.bean.Msg;
import com.wdc.bean.Question;
import com.wdc.bean.Slide;
import com.wdc.service.SlideService;
import com.wdc.utils.AliOSSUtil;


/**
 * @author 46596
 *
 */
@Controller
public class SlideController {

	@Autowired
	SlideService slideService;
	
	/**单个删除、批量删除组合
	 * @param ids
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/slide/{ids}",method=RequestMethod.DELETE)
	public Msg deleteEmp(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<Integer>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			slideService.deleteBatch(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			slideService.deleteSlide(id);
		}
		return Msg.success();
	}
	

	/**更新数据
	 * @param slide
	 * @param request
	 * @param file
	 * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@ResponseBody
	@RequestMapping(value="/slide/{id}",method=RequestMethod.POST)
	public Msg saveSlide(Slide slide,HttpServletRequest request,@RequestParam("slideFile" )MultipartFile file) throws IllegalStateException, IOException{
		String path=request.getServletContext().getRealPath("/images/slide/");//设置上传文件路径
		
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
		slide.setImg(filename3);//保存图片地址
		System.out.println(slide);

		System.out.println("将要更新的轮播图数据："+slide);
		slideService.updateSlide(slide);
		return Msg.success()	;
	}
	
	/**
	 * 单查询
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/slide/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getSlide(@PathVariable("id")Integer id){
		
		Slide slide = slideService.getSlide(id);
		return Msg.success().add("slide", slide);
	}
	
	
	
	
	
	/**新增
	 * @param slide
	 * @param request
	 * @param file
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	@RequestMapping(value="/slide",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertSlide(@Valid Slide slide,HttpServletRequest request,@RequestParam("slideFile" )MultipartFile file) throws IllegalStateException, IOException{
		String path=request.getServletContext().getRealPath("/images/slide/");//设置上传文件路径
		
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
		slide.setImg(filename3);//保存图片地址
		System.out.println(slide);
		
		slideService.saveSlide(slide);
		return Msg.success();
	
	}

	/**
	 * 多查询
	 * @param pn
	 * @return
	 */
	@RequestMapping("/slides")
	@ResponseBody
	public Msg getSlidesWithJson(
			@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 这不是一个分页查询
		// 引入PageHelper分页插件
		// 在查询之前只需要调用，传入页码，以及每页的大小
		PageHelper.startPage(pn, 5);
		// startPage后面紧跟的这个查询就是一个分页查询
		List<Slide> slides = slideService.getAll();
		// 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
		// 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
		PageInfo page = new PageInfo(slides, 5);
		return Msg.success().add("pageInfo", page);
	}
	
//按序号查询
	@RequestMapping("user/slides")
	@ResponseBody
	public Msg getSlidesBySort() {
		
		List<Slide> slides = slideService.getAllBySort();
		return Msg.success().add("slides", slides);
	}
//类型查询
	@RequestMapping(value="/slides/{edition}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getSlides2(@PathVariable("edition") String edition){
		List<Slide> slides = slideService.getAll2(edition);
		return Msg.success().add("slides", slides);
	}
	//新增 OSS  
	@RequestMapping(value="/slide2",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertSlide2( Slide slide,HttpServletRequest request,@RequestParam("slideFile" )MultipartFile file) throws IllegalStateException, IOException{
	
		
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
	
		slide.setImg(path+"/"+url);//保存图片地址
		System.out.println(slide);
		
		System.out.println("slide:"+slide);
		slideService.saveSlide(slide);
		return Msg.success();
	
	}
//修改 OSS
	@ResponseBody
	@RequestMapping(value="/slide2/{id}",method=RequestMethod.POST)
	public Msg saveSlide2(Slide slide,HttpServletRequest request,@RequestParam("slideFile" )MultipartFile file) throws IllegalStateException, IOException{
		
		
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
	
		slide.setImg(path+"/"+url);//保存图片地址
		}
		System.out.println(slide);
	
		System.out.println("将要更新的数据："+slide);
		slideService.updateSlide(slide);
		return Msg.success()	;
	}
}

