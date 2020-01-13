package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.Technology;
import com.wdc.bean.TechnologyExample;
import com.wdc.bean.TechnologyExample;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.TechnologyMapper;

@Service
public class TechnologyService {

	@Autowired
	TechnologyMapper technologyMapper;
//多查询
	public List<Technology> getAll() {
		// TODO Auto-generated method stub
		return technologyMapper.selectByExample(null);
	}
//新增
	public void saveTechnology(Technology technology) {
		// TODO Auto-generated method stub
		technologyMapper.insertSelective(technology);
	}
//单查询
	public Technology getTechnology(Integer id) {
		// TODO Auto-generated method stub
		Technology technology = technologyMapper.selectByPrimaryKey(id);
		return technology;
	}
//修改
	public void updateTechnology(Technology technology) {
		// TODO Auto-generated method stub
		technologyMapper.updateByPrimaryKeySelective(technology);
	}
//删除
		public void deleteTechnology(Integer id) {
			// TODO Auto-generated method stub
			technologyMapper.deleteByPrimaryKey(id);
		}
//批量删除	
		public void deleteBatch(List<Integer> ids) {
			// TODO Auto-generated method stub
			TechnologyExample example = new TechnologyExample();
			com.wdc.bean.TechnologyExample.Criteria criteria = example.createCriteria();
			//delete from xxx where emp_id in(1,2,3)
			criteria.andIdIn(ids);
			technologyMapper.deleteByExample(example);
		}
		public List<Technology> getAll1() {
			// TODO Auto-generated method stub
			return technologyMapper.selectByExample(null);
		}
		public List<Technology> getAll2(String edition) {
			// TODO Auto-generated method stub
			TechnologyExample example=new TechnologyExample();
			com.wdc.bean.TechnologyExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			return  technologyMapper.selectByExample(example);
		}
		
	
}
