package com.wdc.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.InformationExample;
import com.wdc.bean.Question;
import com.wdc.bean.QuestionExample;
import com.wdc.bean.Information;
import com.wdc.bean.InformationExample;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.InformationMapper;

@Service
public class InformationService {

	@Autowired
	InformationMapper informationMapper;
//多查询
	public List<Information> getAll() {
		// TODO Auto-generated method stub
		return informationMapper.selectByExample(null);
	}
//新增
	public void saveInformation(Information information) {
		// TODO Auto-generated method stub
		informationMapper.insertSelective(information);
	}
//单查询
	public Information getInformation(Integer id) {
		// TODO Auto-generated method stub
		Information information = informationMapper.selectByPrimaryKey(id);
		return information;
	}
//修改
	public void updateInformation(Information information) {
		// TODO Auto-generated method stub
		informationMapper.updateByPrimaryKeySelective(information);
	}
//删除
	public void deleteInformation(Integer id) {
		// TODO Auto-generated method stub
		informationMapper.deleteByPrimaryKey(id);
	}
//批量删除	
	public void deleteBatch(List<Integer> ids) {
		// TODO Auto-generated method stub
		InformationExample example = new InformationExample();
		com.wdc.bean.InformationExample.Criteria criteria = example.createCriteria();
		//delete from xxx where emp_id in(1,2,3)
		criteria.andIdIn(ids);
		informationMapper.deleteByExample(example);
	}
//版本查询
	public List<Information> getAll2(String edition) {
		// TODO Auto-generated method stub
		InformationExample example=new InformationExample();
		example.setOrderByClause("id desc"); 
		com.wdc.bean.InformationExample.Criteria criteria = example.createCriteria();
		criteria.andEditionEqualTo(edition);
		

		return  informationMapper.selectByExample(example);
	}
//模糊查询-标题
	public List<Information> getAll4(String title){
		InformationExample example=new InformationExample();
		com.wdc.bean.InformationExample.Criteria criteria = example.createCriteria();
		criteria.andTitleLike("%"+title+"%");
		
		return  informationMapper.selectByExample(example);
	}	
//模糊查询 版本-标题
		public List<Information> getAll5(String edition ,String title) {
			// TODO Auto-generated method stub
			InformationExample example=new InformationExample();
			com.wdc.bean.InformationExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			criteria.andTitleLike("%"+title+"%");
			return  informationMapper.selectByExample(example);
		}
//区块链知识库  en_1 Or cn_1 查询
		public List<Information> getAll6(String en_1,String cn_1) {
			// TODO Auto-generated method stub
			InformationExample example=new InformationExample();
			com.wdc.bean.InformationExample.Criteria criteria1 = example.createCriteria();
			com.wdc.bean.InformationExample.Criteria criteria2 = example.createCriteria();
			criteria1.andEditionEqualTo(en_1);
			criteria2.andEditionEqualTo(cn_1);
			example.or(criteria2);
			return  informationMapper.selectByExample(example);
			
			
		}	
//资讯 en Or cn 查询
				public List<Information> getAll7(String en,String cn) {
					// TODO Auto-generated method stub
					InformationExample example=new InformationExample();
					com.wdc.bean.InformationExample.Criteria criteria1 = example.createCriteria();
					com.wdc.bean.InformationExample.Criteria criteria2 = example.createCriteria();
					criteria1.andEditionEqualTo(en);
					criteria2.andEditionEqualTo(cn);
					example.or(criteria2);
					return  informationMapper.selectByExample(example);
					
					
				}	
}
