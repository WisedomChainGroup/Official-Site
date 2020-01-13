package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wdc.bean.Application;
import com.wdc.bean.ApplicationExample;
import com.wdc.bean.Msg;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.ApplicationMapper;

@Service
public class ApplicationService {

	@Autowired
	ApplicationMapper applicationMapper;
//多查询
	public List<Application> getAll() {
		// TODO Auto-generated method stub
		return applicationMapper.selectByExample(null);
	}
//新增
	public void saveApplication(Application application) {
		// TODO Auto-generated method stub
		applicationMapper.insertSelective(application);
	}
//单查询
	public Application getApplication(Integer id) {
		// TODO Auto-generated method stub
		Application application = applicationMapper.selectByPrimaryKey(id);
		return application;
	}
//修改
	public void updateApplication(Application application) {
		// TODO Auto-generated method stub
		applicationMapper.updateByPrimaryKeySelective(application);
	}
//删除
		public void deleteApplication(Integer id) {
			// TODO Auto-generated method stub
			applicationMapper.deleteByPrimaryKey(id);
		}
//批量删除	
		public void deleteBatch(List<Integer> ids) {
			// TODO Auto-generated method stub
			ApplicationExample example = new ApplicationExample();
			com.wdc.bean.ApplicationExample.Criteria criteria = example.createCriteria();
			//delete from xxx where emp_id in(1,2,3)
			criteria.andIdIn(ids);
			applicationMapper.deleteByExample(example);
		}
		public List<Application> getAll1() {
			// TODO Auto-generated method stub
			return applicationMapper.selectByExample(null);
		}
		//类型查询
		public List<Application> getAll2(String edition) {
			// TODO Auto-generated method stub
			ApplicationExample example=new ApplicationExample();
			com.wdc.bean.ApplicationExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			return  applicationMapper.selectByExample(example);
		}
		
	
}
