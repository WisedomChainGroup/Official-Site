package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.Contact;
import com.wdc.bean.ContactExample;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.ContactMapper;

@Service
public class ContactService {

	@Autowired
	ContactMapper contactMapper;
//多查询
	public List<Contact> getAll() {
		// TODO Auto-generated method stub
		return contactMapper.selectByExample(null);
	}
//新增
	public void saveContact(Contact contact) {
		// TODO Auto-generated method stub
		contactMapper.insertSelective(contact);
	}
	public void saveContact2(Contact contact) {
		// TODO Auto-generated method stub
		contactMapper.insert(contact);
	}
//单查询
	public Contact getContact(Integer id) {
		// TODO Auto-generated method stub
		Contact contact = contactMapper.selectByPrimaryKey(id);
		return contact;
	}
//修改
	public void updateContact(Contact contact) {
		// TODO Auto-generated method stub
		contactMapper.updateByPrimaryKeySelective(contact);
	}
//删除
		public void deleteContact(Integer id) {
			// TODO Auto-generated method stub
			contactMapper.deleteByPrimaryKey(id);
		}
//批量删除	
		public void deleteBatch(List<Integer> ids) {
			// TODO Auto-generated method stub
			ContactExample example = new ContactExample();
			com.wdc.bean.ContactExample.Criteria criteria = example.createCriteria();
			//delete from xxx where emp_id in(1,2,3)
			criteria.andIdIn(ids);
			contactMapper.deleteByExample(example);
		}
//条件查询-类型
		public List<Contact> getAll2(String edition){
			ContactExample example=new ContactExample();
			com.wdc.bean.ContactExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			return  contactMapper.selectByExample(example);
		}
	
}
