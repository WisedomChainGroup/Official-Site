package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.DevelopmentExample;
import com.wdc.bean.Development;
import com.wdc.bean.DevelopmentExample;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.DevelopmentMapper;

@Service
public class DevelopmentService {

	@Autowired
	DevelopmentMapper developmentMapper;
//多查询
	public List<Development> getAll() {
		// TODO Auto-generated method stub
		return developmentMapper.selectByExample(null);
	}
//新增
	public void saveDevelopment(Development development) {
		// TODO Auto-generated method stub
		developmentMapper.insertSelective(development);
	}
//单查询
	public Development getDevelopment(Integer id) {
		// TODO Auto-generated method stub
		Development development = developmentMapper.selectByPrimaryKey(id);
		return development;
	}
//修改
	public void updateDevelopment(Development development) {
		// TODO Auto-generated method stub
		developmentMapper.updateByPrimaryKeySelective(development);
	}
//删除
		public void deleteDevelopment(Integer id) {
			// TODO Auto-generated method stub
			developmentMapper.deleteByPrimaryKey(id);
		}
//批量删除	
		public void deleteBatch(List<Integer> ids) {
			// TODO Auto-generated method stub
			DevelopmentExample example = new DevelopmentExample();
			com.wdc.bean.DevelopmentExample.Criteria criteria = example.createCriteria();
			//delete from xxx where emp_id in(1,2,3)
			criteria.andIdIn(ids);
			developmentMapper.deleteByExample(example);
		}
		public List<Development> getAll1() {
			// TODO Auto-generated method stub
			return developmentMapper.selectByExample(null);
		}
		public List<Development> getAll2(String edition) {
			// TODO Auto-generated method stub
			DevelopmentExample example=new DevelopmentExample();
			com.wdc.bean.DevelopmentExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			return  developmentMapper.selectByExample(example);
		}
		
	
}
