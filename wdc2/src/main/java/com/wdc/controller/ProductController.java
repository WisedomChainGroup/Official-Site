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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wdc.bean.Product;
import com.wdc.bean.Product;
import com.wdc.bean.Msg;
import com.wdc.bean.Product;
import com.wdc.bean.Project;
import com.wdc.bean.Slide;
import com.wdc.service.ProductService;
import com.wdc.utils.AliOSSUtil;


@Controller
public class ProductController {

	@Autowired
	ProductService productService;
//多查询
	@RequestMapping("/products")
	@ResponseBody
	public Msg getProductsWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 5);
		List<Product> products = productService.getAll();
		PageInfo page = new PageInfo(products, 5);
		return Msg.success().add("pageInfo", page);
	}
//新增
	@RequestMapping(value="/product",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertSlide( Product product,HttpServletRequest request,@RequestParam("productFile" )MultipartFile file) throws IllegalStateException, IOException{
		String path=request.getServletContext().getRealPath("/images/product/");//设置上传文件路径
		
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
		product.setImg(filename3);//保存图片地址
		System.out.println(product);
		
		productService.saveProduct(product);
		return Msg.success();
	
	}
//单查询
	@RequestMapping(value="/product/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getProduct(@PathVariable("id")Integer id){
		Product product = productService.getProduct(id);
		return Msg.success().add("product", product);
	}
//修改
	@ResponseBody
	@RequestMapping(value="/product/{id}",method=RequestMethod.POST)
	public Msg saveProduct(Product product,HttpServletRequest request,@RequestParam("productFile" )MultipartFile file) throws IllegalStateException, IOException{
		String path=request.getServletContext().getRealPath("/images/product/");//设置上传文件路径
		
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
		product.setImg(filename3);//保存图片地址
		System.out.println(product);

		System.out.println("将要更新的轮播图数据："+product);
		productService.updateProduct(product);
		return Msg.success()	;
	}
//删除
	@ResponseBody
	@RequestMapping(value="/product/{ids}",method=RequestMethod.DELETE)
	public Msg deleteProduct(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<Integer>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			productService.deleteBatch(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			productService.deleteProduct(id);
		}
		return Msg.success();
	}
	//
	@RequestMapping(value="/user/products",method=RequestMethod.GET)
	@ResponseBody
	public Msg getAll1(){
		List<Product> products =productService.getAll1();	
		
		return Msg.success().add("products", products);
		}
	
	@RequestMapping(value="/products/{edition}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getProducts2(@PathVariable("edition") String edition){
		List<Product> products = productService.getAll2(edition);
		return Msg.success().add("products", products);
	}
	
	//新增 OSS  
	@RequestMapping(value="/product2",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertSlide2( Product product,HttpServletRequest request,@RequestParam("productFile" )MultipartFile file) throws IllegalStateException, IOException{
	
		
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
	
		product.setImg(path+"/"+url);//保存图片地址
		System.out.println(product);
		
		System.out.println("product:"+product);
		productService.saveProduct(product);
		return Msg.success();
	
	}
//修改 OSS
	@ResponseBody
	@RequestMapping(value="/product2/{id}",method=RequestMethod.POST)
	public Msg saveProduct2(Product product,HttpServletRequest request,@RequestParam("productFile" )MultipartFile file) throws IllegalStateException, IOException{
		
		
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
	
		product.setImg(path+"/"+url);//保存图片地址
		}
		System.out.println(product);
	
		System.out.println("将要更新的数据："+product);
		productService.updateProduct(product);
		return Msg.success()	;
	}
}
