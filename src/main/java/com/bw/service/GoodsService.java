package com.bw.service;

import java.util.List;
import java.util.Map;

import com.bw.entity.Goods;

/**
 * @author 一枚忧郁的男子
 *
 * 2019年11月4日
 * 下午2:59:24
 */
public interface GoodsService {

	public List<Goods> getGoodsList(Map<String,Object> map);

	public Integer deleteAll(List<String> list);

	public Integer addGoods(Goods goods);

	public Goods getGoodsByGid(Integer gid);

	public Integer updateGoods(Goods goods);
	
}
