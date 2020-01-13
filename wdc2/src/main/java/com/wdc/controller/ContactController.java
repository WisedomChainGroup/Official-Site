package com.wdc.controller;

import java.io.File;
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
import com.wdc.bean.Contact;
import com.wdc.bean.Slide;
import com.wdc.service.ContactService;



@Controller
public class ContactController {

	@Autowired
	ContactService contactService;
//多查询
	@RequestMapping("/contacts")
	@ResponseBody
	public Msg getContactsWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 5);
		List<Contact> contacts = contactService.getAll();
		PageInfo page = new PageInfo(contacts, 5);
		return Msg.success().add("pageInfo", page);
	}
//新增
	
	@RequestMapping(value="/contact",method = RequestMethod.POST)
	@ResponseBody
	public Msg insertSlide11(Contact contact) {
		System.out.println(contact);
		String s1="(^[\\u4E00-\\u9FA5A-Za-z0-9]+$)";
		if(contact.getName().matches(s1)&&contact.getEmail().matches(s1)&&contact.getMission().matches(s1)) {
			
		System.out.println("1111");
		contactService.saveContact2(contact);
		return Msg.success();
		}
		return null;
	}


//删除
	@ResponseBody
	@RequestMapping(value="/contact/{ids}",method=RequestMethod.DELETE)
	public Msg deleteContact(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<Integer>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			contactService.deleteBatch(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			contactService.deleteContact(id);
		}
		return Msg.success();
	}
	
}
