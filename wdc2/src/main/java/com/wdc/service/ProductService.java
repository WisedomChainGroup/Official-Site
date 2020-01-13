package com.wdc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdc.bean.ProductExample;
import com.wdc.bean.Product;
import com.wdc.bean.ProductExample;
import com.wdc.bean.Slide;
import com.wdc.bean.SlideExample;
import com.wdc.bean.SlideExample.Criteria;
import com.wdc.dao.ProductMapper;

@Service
public class ProductService {

	@Autowired
	ProductMapper productMapper;
//多查询
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		return productMapper.selectByExample(null);
	}
//新增
	public void saveProduct(Product product) {
		// TODO Auto-generated method stub
		productMapper.insertSelective(product);
	}
//单查询
	public Product getProduct(Integer id) {
		// TODO Auto-generated method stub
		
		
		Product product = productMapper.selectByPrimaryKey(id);
		return product;
	}
//修改
	public void updateProduct(Product product) {
		// TODO Auto-generated method stub
		
		productMapper.updateByPrimaryKeySelective(product);
	}
//删除
		public void deleteProduct(Integer id) {
			// TODO Auto-generated method stub
			productMapper.deleteByPrimaryKey(id);
		}
//批量删除	
		public void deleteBatch(List<Integer> ids) {
			// TODO Auto-generated method stub
			ProductExample example = new ProductExample();
			com.wdc.bean.ProductExample.Criteria criteria = example.createCriteria();
			//delete from xxx where emp_id in(1,2,3)
			criteria.andIdIn(ids);
			productMapper.deleteByExample(example);
		}
		//
		public List<Product> getAll1() {
			// TODO Auto-generated method stub
			return productMapper.selectByExample(null);
		}
		public List<Product> getAll2(String edition) {
			// TODO Auto-generated method stub
			ProductExample example=new ProductExample();
			com.wdc.bean.ProductExample.Criteria criteria = example.createCriteria();
			criteria.andEditionEqualTo(edition);
			return  productMapper.selectByExample(example);
		}
		
	
}
