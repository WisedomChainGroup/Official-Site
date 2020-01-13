package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.DeveloperExample;
import com.wdc.bean.Developer;
import com.wdc.bean.DeveloperExample;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.DeveloperMapper;

@Service
public class DeveloperService {

	@Autowired
	DeveloperMapper developerMapper;
//多查询
	public List<Developer> getAll() {
		// TODO Auto-generated method stub
		return developerMapper.selectByExample(null);
	}
//新增
	public void saveDeveloper(Developer developer) {
		// TODO Auto-generated method stub
		developerMapper.insertSelective(developer);
	}
//单查询
	public Developer getDeveloper(Integer id) {
		// TODO Auto-generated method stub
		Developer developer = developerMapper.selectByPrimaryKey(id);
		return developer;
	}
//修改
	public void updateDeveloper(Developer developer) {
		// TODO Auto-generated method stub
		developerMapper.updateByPrimaryKeySelective(developer);
	}
//删除
		public void deleteDeveloper(Integer id) {
			// TODO Auto-generated method stub
			developerMapper.deleteByPrimaryKey(id);
		}
//批量删除	
		public void deleteBatch(List<Integer> ids) {
			// TODO Auto-generated method stub
			DeveloperExample example = new DeveloperExample();
			com.wdc.bean.DeveloperExample.Criteria criteria = example.createCriteria();
			//delete from xxx where emp_id in(1,2,3)
			criteria.andIdIn(ids);
			developerMapper.deleteByExample(example);
		}
		public List<Developer> getAll1() {
			// TODO Auto-generated method stub
			return developerMapper.selectByExample(null);
		}
		public List<Developer> getAll2(String edition) {
			// TODO Auto-generated method stub
			DeveloperExample example=new DeveloperExample();
			com.wdc.bean.DeveloperExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			return  developerMapper.selectByExample(example);
		}
		
	
}
