package com.wdc.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wdc.bean.Admin;
import com.wdc.bean.Msg;
import com.wdc.service.AdminService;



@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	//分页查询
	@RequestMapping("/admins")
	@ResponseBody
	public Msg getAdminsWithJson(
			@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 这不是一个分页查询
		// 引入PageHelper分页插件
		// 在查询之前只需要调用，传入页码，以及每页的大小
		PageHelper.startPage(pn, 5);
		// startPage后面紧跟的这个查询就是一个分页查询
		List<Admin> admins = adminService.getAll();
		// 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
		// 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
		PageInfo page = new PageInfo(admins, 5);
		return Msg.success().add("pageInfo", page);
	}
	//新增admin
	@RequestMapping(value="/admin",method=RequestMethod.POST)
	@ResponseBody
	public Msg saveAdmin(@Valid Admin admin,BindingResult result){
		if(result.hasErrors()){
			//校验失败，应该返回失败，在模态框中显示校验失败的错误信息
			Map<String, Object> map = new HashMap<String, Object>();
			List<FieldError> errors = result.getFieldErrors();
			for (FieldError fieldError : errors) {
				System.out.println("错误的字段名："+fieldError.getField());
				System.out.println("错误信息："+fieldError.getDefaultMessage());
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			return Msg.fail().add("errorFields", map);
		}else{
			adminService.saveAdmin(admin);
			return Msg.success();
		}
		
	}
	//检查账户
	@ResponseBody
	@RequestMapping("/checkadmin")
	public Msg checkadmin(@RequestParam("account")String account){
		//先判断用户名是否是合法的表达式;
		String regx = "(^[\\\\\\\\u4e00-\\\\\\\\u9fa5_a-zA-Z0-9-]{6,16}$)";
		if(!account.matches(regx)){
			return Msg.fail().add("va_msg", "账户限6-16个字符，支持中英文、数字、减号或下划线");
		}
		
		//数据库用户名重复校验
		boolean b = adminService.checkAdmin(account);
		if(b){
			return Msg.success();
		}else{
			return Msg.fail().add("va_msg", "账户不可用");
		}
	}
	//查询单个admin
	@RequestMapping(value="/admin/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getAdmin(@PathVariable("id")Integer id){
		
		Admin admin = adminService.getAdmin(id);
		return Msg.success().add("admin", admin);
	}
	//修改admin
	@ResponseBody
	@RequestMapping(value="/admin/{id}",method=RequestMethod.PUT)
	public Msg saveEmp(Admin admin){
		System.out.println("将要更新的员工数据："+admin);
		adminService.updateAdmin(admin);
		return Msg.success()	;
	}
	//删除
	@ResponseBody
	@RequestMapping(value="/admin/{ids}",method=RequestMethod.DELETE)
	public Msg deleteAdmin(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<Integer>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			adminService.deleteBatch(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			adminService.deleteAdmin(id);
		}
		return Msg.success();
	}
	/*
	 * 
	 
	@ResponseBody
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public Msg login2(Admin admin,HttpSession session) {
		Admin admin2 =adminService.checkAdmin2(admin);
		if (admin2!=null){
            session.setAttribute("admin", admin2);
            return Msg.success();
            
        }
		return Msg.fail();
		
	}
*/	
}
