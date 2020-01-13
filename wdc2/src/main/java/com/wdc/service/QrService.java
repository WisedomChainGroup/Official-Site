package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.QrExample;
import com.wdc.bean.Qr;
import com.wdc.bean.QrExample;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.QrMapper;

@Service
public class QrService {

	@Autowired
	QrMapper qrMapper;
//多查询
	public List<Qr> getAll() {
		// TODO Auto-generated method stub
		return qrMapper.selectByExample(null);
	}
//新增
	public void saveQr(Qr qr) {
		// TODO Auto-generated method stub
		qrMapper.insertSelective(qr);
	}
//单查询
	public Qr getQr(Integer id) {
		// TODO Auto-generated method stub
		Qr qr = qrMapper.selectByPrimaryKey(id);
		return qr;
	}
//修改
	public void updateQr(Qr qr) {
		// TODO Auto-generated method stub
		qrMapper.updateByPrimaryKeySelective(qr);
	}
//删除
		public void deleteQr(Integer id) {
			// TODO Auto-generated method stub
			qrMapper.deleteByPrimaryKey(id);
		}
//批量删除	
		public void deleteBatch(List<Integer> ids) {
			// TODO Auto-generated method stub
			QrExample example = new QrExample();
			com.wdc.bean.QrExample.Criteria criteria = example.createCriteria();
			//delete from xxx where emp_id in(1,2,3)
			criteria.andIdIn(ids);
			qrMapper.deleteByExample(example);
		}
		public List<Qr> getAll1() {
			// TODO Auto-generated method stub
			return qrMapper.selectByExample(null);
		}
		public List<Qr> getAll2(String edition) {
			// TODO Auto-generated method stub
			QrExample example=new QrExample();
			com.wdc.bean.QrExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			return  qrMapper.selectByExample(example);
		}
		
	
}
