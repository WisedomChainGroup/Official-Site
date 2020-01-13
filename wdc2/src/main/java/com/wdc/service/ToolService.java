package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.Tool;
import com.wdc.bean.ToolExample;
import com.wdc.bean.ToolExample;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.ToolMapper;

@Service
public class ToolService {

	@Autowired
	ToolMapper toolMapper;
//多查询
	public List<Tool> getAll() {
		// TODO Auto-generated method stub
		return toolMapper.selectByExample(null);
	}
//新增
	public void saveTool(Tool tool) {
		// TODO Auto-generated method stub
		toolMapper.insertSelective(tool);
	}
//单查询
	public Tool getTool(Integer id) {
		// TODO Auto-generated method stub
		Tool tool = toolMapper.selectByPrimaryKey(id);
		return tool;
	}
//修改
	public void updateTool(Tool tool) {
		// TODO Auto-generated method stub
		toolMapper.updateByPrimaryKeySelective(tool);
	}
//删除
		public void deleteTool(Integer id) {
			// TODO Auto-generated method stub
			toolMapper.deleteByPrimaryKey(id);
		}
//批量删除	
		public void deleteBatch(List<Integer> ids) {
			// TODO Auto-generated method stub
			ToolExample example = new ToolExample();
			com.wdc.bean.ToolExample.Criteria criteria = example.createCriteria();
			//delete from xxx where emp_id in(1,2,3)
			criteria.andIdIn(ids);
			toolMapper.deleteByExample(example);
		}
		public List<Tool> getAll1() {
			// TODO Auto-generated method stub
			return toolMapper.selectByExample(null);
		}
		public List<Tool> getAll2(String edition) {
			// TODO Auto-generated method stub
			ToolExample example=new ToolExample();
			com.wdc.bean.ToolExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			return  toolMapper.selectByExample(example);
		}
		
	
}
