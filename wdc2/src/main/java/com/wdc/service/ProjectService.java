package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.ProjectExample;
import com.wdc.bean.Project;
import com.wdc.bean.ProjectExample;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.ProjectMapper;

@Service
public class ProjectService {

	@Autowired
	ProjectMapper projectMapper;
//多查询
	public List<Project> getAll() {
		// TODO Auto-generated method stub
		return projectMapper.selectByExample(null);
	}
//新增
	public void saveProject(Project project) {
		// TODO Auto-generated method stub
		projectMapper.insertSelective(project);
	}
//单查询
	public Project getProject(Integer id) {
		// TODO Auto-generated method stub
		Project project = projectMapper.selectByPrimaryKey(id);
		return project;
	}
//修改
	public void updateProject(Project project) {
		// TODO Auto-generated method stub
		projectMapper.updateByPrimaryKeySelective(project);
	}
//删除
		public void deleteProject(Integer id) {
			// TODO Auto-generated method stub
			projectMapper.deleteByPrimaryKey(id);
		}
//批量删除	
		public void deleteBatch(List<Integer> ids) {
			// TODO Auto-generated method stub
			ProjectExample example = new ProjectExample();
			com.wdc.bean.ProjectExample.Criteria criteria = example.createCriteria();
			//delete from xxx where emp_id in(1,2,3)
			criteria.andIdIn(ids);
			projectMapper.deleteByExample(example);
		}
		public List<Project> getAll1() {
			// TODO Auto-generated method stub
			return projectMapper.selectByExample(null);
		}
		public List<Project> getAll2(String edition) {
			// TODO Auto-generated method stub
			ProjectExample example=new ProjectExample();
			com.wdc.bean.ProjectExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			return  projectMapper.selectByExample(example);
		}
		
	
}
