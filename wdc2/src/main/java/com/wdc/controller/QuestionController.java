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
import com.wdc.bean.Question;
import com.wdc.bean.Msg;
import com.wdc.bean.Question;
import com.wdc.bean.Slide;
import com.wdc.service.QuestionService;



@Controller
public class QuestionController {

	@Autowired
	QuestionService questionService;
//查询
	@RequestMapping("/questions")
	@ResponseBody
	public Msg getQuestionsWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 5);
		List<Question> questions = questionService.getAll();
		PageInfo page = new PageInfo(questions, 5);
		return Msg.success().add("pageInfo", page);
	}
//新增
	@RequestMapping(value="/question",method=RequestMethod.POST)
	@ResponseBody
	public Msg insertSlide( Question question) {
		
		
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
		question.setTime(d);//保存时间
		
		questionService.saveQuestion(question);
		return Msg.success();
	
	}
//单查询
	@RequestMapping(value="/question/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getQuestion(@PathVariable("id")Integer id){
		Question question = questionService.getQuestion(id);
		return Msg.success().add("question", question);
	}
//修改
	@ResponseBody
	@RequestMapping(value="/question/{id}",method=RequestMethod.POST)
	public Msg saveQuestion(Question question) {
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
				question.setTime(d);//保存时间
		
		
		System.out.println("将要更新的数据："+question);
		questionService.updateQuestion(question);
		return Msg.success()	;
	}
//删除
	@ResponseBody
	@RequestMapping(value="/question/{ids}",method=RequestMethod.DELETE)
	public Msg deleteQuestion(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<Integer>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			questionService.deleteBatch(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			questionService.deleteQuestion(id);
		}
		return Msg.success();
	}
//类型查询
		@RequestMapping(value="/questions1/{type}",method=RequestMethod.GET)
		@ResponseBody
		public Msg getQuestion2(@PathVariable("type") String type,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
			PageHelper.startPage(pn, 5);
			List<Question> questions = questionService.getAll2(type);
			PageInfo page = new PageInfo(questions, 5);
			return Msg.success().add("pageInfo", page);
		}
//版本替换
		@RequestMapping(value="/questions2/{edition}",method=RequestMethod.GET)
		@ResponseBody
		public Msg getQuestions3(@PathVariable("edition") String edition){
			List<Question> questions = questionService.getAll3(edition);
			return Msg.success().add("questions", questions);
		}
//模糊查询
		@RequestMapping(value="/questions3/{title}",method=RequestMethod.GET)
		@ResponseBody
		public Msg getQuestion4(@PathVariable("title") String title,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
			PageHelper.startPage(pn, 5);
			List<Question> questions = questionService.getAll4(title);
			PageInfo page = new PageInfo(questions, 5);
			return Msg.success().add("pageInfo", page);
		}
//版本2
		@RequestMapping(value="/questions4/{edition}",method=RequestMethod.GET)
		@ResponseBody
		public Msg getQuestions4(@PathVariable("edition") String edition,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
			PageHelper.startPage(pn, 5);
			List<Question> questions = questionService.getAll3(edition);
			PageInfo page = new PageInfo(questions, 5);
			return Msg.success().add("pageInfo", page);
		}
//版本 类别
		@RequestMapping(value="/questions5/{edition}/{type}",method=RequestMethod.GET)
		@ResponseBody
		public Msg getQuestions5(@PathVariable("edition") String edition,@PathVariable("type") String type,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
			PageHelper.startPage(pn, 5);
			List<Question> questions = questionService.getAll5(edition,type);
			PageInfo page = new PageInfo(questions, 5);
			return Msg.success().add("pageInfo", page);
		}
//版本 类别  模糊查询
		@RequestMapping(value="/questions6/{edition}/{title}",method=RequestMethod.GET)
		@ResponseBody
		public Msg getQuestions6(@PathVariable("edition") String edition,@PathVariable("title") String title,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
			PageHelper.startPage(pn, 5);
			List<Question> questions = questionService.getAll6(edition,title);
			PageInfo page = new PageInfo(questions, 5);
			return Msg.success().add("pageInfo", page);
		}
		
		
		
}
