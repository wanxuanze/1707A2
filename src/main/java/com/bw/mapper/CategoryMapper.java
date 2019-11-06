package com.bw.mapper;

import java.util.List;

import com.bw.entity.Category;

/**
 * @author 一枚忧郁的男子
 *
 * 2019年11月4日
 * 下午2:57:52
 */
public interface CategoryMapper {

	public List<Category> getCategoryList(Integer pid);
	
}
