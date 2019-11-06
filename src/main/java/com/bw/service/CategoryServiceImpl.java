package com.bw.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bw.entity.Category;
import com.bw.mapper.CategoryMapper;

/**
 * @author 一枚忧郁的男子
 *
 * 2019年11月4日
 * 下午3:03:53
 */

@Service
public class CategoryServiceImpl implements CategoryService{

	@Resource
	CategoryMapper cm;
	
	public List<Category> getCategoryList(Integer pid) {
		// TODO Auto-generated method stub
		return cm.getCategoryList(pid);
	}

}
