package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.QuestionExample;
import com.wdc.bean.Question;
import com.wdc.bean.QuestionExample;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.QuestionMapper;

@Service
public class QuestionService {

	@Autowired
	QuestionMapper questionMapper;
//多查询
	public List<Question> getAll() {
		// TODO Auto-generated method stub
		return questionMapper.selectByExample(null);
	}
//新增
	public void saveQuestion(Question question) {
		// TODO Auto-generated method stub
		questionMapper.insertSelective(question);
	}
//单查询
	public Question getQuestion(Integer id) {
		// TODO Auto-generated method stub
		Question question = questionMapper.selectByPrimaryKey(id);
		return question;
	}
//修改
	public void updateQuestion(Question question) {
		// TODO Auto-generated method stub
		questionMapper.updateByPrimaryKeySelective(question);
	}
//删除
		public void deleteQuestion(Integer id) {
			// TODO Auto-generated method stub
			questionMapper.deleteByPrimaryKey(id);
		}
//批量删除	
		public void deleteBatch(List<Integer> ids) {
			// TODO Auto-generated method stub
			QuestionExample example = new QuestionExample();
			com.wdc.bean.QuestionExample.Criteria criteria = example.createCriteria();
			//delete from xxx where emp_id in(1,2,3)
			criteria.andIdIn(ids);
			questionMapper.deleteByExample(example);
		}
//条件查询-类型
		public List<Question> getAll2(String edition){
			QuestionExample example=new QuestionExample();
			com.wdc.bean.QuestionExample.Criteria criteria = example.createCriteria();
			criteria.andTypeEqualTo(edition);
			return  questionMapper.selectByExample(example);
		}
//条件查询-版本
		public List<Question> getAll3(String edition) {
			// TODO Auto-generated method stub
			QuestionExample example=new QuestionExample();
			com.wdc.bean.QuestionExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			return  questionMapper.selectByExample(example);
		}
//模糊查询-标题
		public List<Question> getAll4(String title){
			QuestionExample example=new QuestionExample();
			com.wdc.bean.QuestionExample.Criteria criteria = example.createCriteria();
			criteria.andTitleLike("%"+title+"%");
			
			return  questionMapper.selectByExample(example);
		}
//条件查询-版本 类型
		public List<Question> getAll5(String edition ,String type) {
			// TODO Auto-generated method stub
			QuestionExample example=new QuestionExample();
			com.wdc.bean.QuestionExample.Criteria criteria = example.createCriteria();
			criteria.andTypeEqualTo(type);
			criteria.andEditionEqualTo(edition);
			return  questionMapper.selectByExample(example);
		}
//模糊查询 版本-标题
		public List<Question> getAll6(String edition ,String title) {
			// TODO Auto-generated method stub
			QuestionExample example=new QuestionExample();
			com.wdc.bean.QuestionExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			criteria.andTitleLike("%"+title+"%");
			return  questionMapper.selectByExample(example);
		}
}
