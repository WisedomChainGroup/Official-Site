package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.Trade;
import com.wdc.bean.TradeExample;
import com.wdc.bean.TradeExample;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.TradeMapper;

@Service
public class TradeService {

	@Autowired
	TradeMapper tradeMapper;
//多查询
	public List<Trade> getAll() {
		// TODO Auto-generated method stub
		return tradeMapper.selectByExample(null);
	}
//新增
	public void saveTrade(Trade trade) {
		// TODO Auto-generated method stub
		tradeMapper.insertSelective(trade);
	}
//单查询
	public Trade getTrade(Integer id) {
		// TODO Auto-generated method stub
		Trade trade = tradeMapper.selectByPrimaryKey(id);
		return trade;
	}
//修改
	public void updateTrade(Trade trade) {
		// TODO Auto-generated method stub
		tradeMapper.updateByPrimaryKeySelective(trade);
	}
//删除
		public void deleteTrade(Integer id) {
			// TODO Auto-generated method stub
			tradeMapper.deleteByPrimaryKey(id);
		}
//批量删除	
		public void deleteBatch(List<Integer> ids) {
			// TODO Auto-generated method stub
			TradeExample example = new TradeExample();
			com.wdc.bean.TradeExample.Criteria criteria = example.createCriteria();
			//delete from xxx where emp_id in(1,2,3)
			criteria.andIdIn(ids);
			tradeMapper.deleteByExample(example);
		}
		public List<Trade> getAll1() {
			// TODO Auto-generated method stub
			return tradeMapper.selectByExample(null);
		}
		public List<Trade> getAll2(String edition) {
			// TODO Auto-generated method stub
			TradeExample example=new TradeExample();
			com.wdc.bean.TradeExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			return  tradeMapper.selectByExample(example);
		}
		
	
}
