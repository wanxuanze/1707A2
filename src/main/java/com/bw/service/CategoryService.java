package com.bw.service;

import java.util.List;

import com.bw.entity.Category;

/**
 * @author 一枚忧郁的男子
 *
 * 2019年11月4日
 * 下午3:00:07
 */
public interface CategoryService {

	public List<Category> getCategoryList(Integer pid);
	
}
