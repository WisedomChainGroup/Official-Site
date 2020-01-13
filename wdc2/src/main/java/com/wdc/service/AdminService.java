package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.Admin;
import com.wdc.bean.AdminExample;
import com.wdc.bean.AdminExample.Criteria;
import com.wdc.dao.AdminMapper;

@Service
public class AdminService {

	@Autowired
	AdminMapper adminMapper;

	public List<Admin> getAll() {
		// TODO Auto-generated method stub
		return adminMapper.selectByExample(null);
	}

	public void saveAdmin(Admin admin) {
		// TODO Auto-generated method stub
		adminMapper.insertSelective(admin);
	}

	public boolean checkAdmin(String account) {
		// TODO Auto-generated method stub
		AdminExample example=new AdminExample();
		Criteria criteria=example.createCriteria();
		criteria.andAccountEqualTo(account);
		long count=adminMapper.countByExample(example);
		return count==0;
	}

	public Admin getAdmin(Integer id) {
		// TODO Auto-generated method stub
		Admin admin=adminMapper.selectByPrimaryKey(id);
		return admin;
	}

	public void updateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		adminMapper.updateByPrimaryKeySelective(admin);
	}

	public void deleteBatch(List<Integer> ids) {
		// TODO Auto-generated method stub
		AdminExample example=new AdminExample();
		Criteria criteria=example.createCriteria();
		criteria.andIdIn(ids);
		adminMapper.deleteByExample(example);
	}
	public void deleteAdmin(Integer id) {
		adminMapper.deleteByPrimaryKey(id);
	}

	public Admin checkAdmin2(String account,String password,String power ) {
		// TODO Auto-generated method stub	
		Admin  admin2=adminMapper.check2(account,password,power);
		return admin2;
	}

}
