package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.QuestionExample;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.SlideMapper;

@Service
public class SlideService {

	@Autowired
	SlideMapper slideMapper;
	public List<Slide> getAll() {
		// TODO Auto-generated method stub
		return slideMapper.selectByExample(null);
	}

	/**
	 * 员工保存
	 * @param employee
	 */
	public void saveSlide(Slide slide) {
		// TODO Auto-generated method stub
		slideMapper.insertSelective(slide);
	}

	/**
	 * 按照员工id查询员工
	 * @param id
	 * @return
	 */
	public Slide getSlide(Integer id) {
		// TODO Auto-generated method stub
		Slide slide = slideMapper.selectByPrimaryKey(id);
		return slide;
	}

	/**
	 * 员工更新
	 * @param employee
	 */
	public void updateSlide(Slide slide) {
		// TODO Auto-generated method stub
		slideMapper.updateByPrimaryKeySelective(slide);
	}

	/**
	 * 员工删除
	 * @param id
	 */
	public void deleteSlide(Integer id) {
		// TODO Auto-generated method stub
		slideMapper.deleteByPrimaryKey(id);
	}

	public void deleteBatch(List<Integer> ids) {
		// TODO Auto-generated method stub
		SlideExample example = new SlideExample();
		Criteria criteria = example.createCriteria();
		//delete from xxx where emp_id in(1,2,3)
		criteria.andIdIn(ids);
		slideMapper.deleteByExample(example);
	}
//按sort序号排序
	public List<Slide> getAllBySort(){
		SlideExample slideExample=new SlideExample();
		slideExample.setOrderByClause("sort  ASC");
		return slideMapper.selectByExample(slideExample);
	}
//
	public List<Slide> getAll2(String edition) {
		// TODO Auto-generated method stub
		SlideExample example=new SlideExample();
		com.wdc.bean.SlideExample.Criteria criteria = example.createCriteria();
		criteria.andEditionEqualTo(edition);
		return  slideMapper.selectByExample(example);
	}
}


