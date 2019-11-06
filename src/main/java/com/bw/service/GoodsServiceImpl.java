package com.bw.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bw.entity.Goods;
import com.bw.mapper.GoodsMapper;

/**
 * @author 一枚忧郁的男子
 *
 * 2019年11月4日
 * 下午3:00:36
 */

@Service
public class GoodsServiceImpl implements GoodsService{

	@Resource
	GoodsMapper gm;
	
	public List<Goods> getGoodsList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return gm.getGoodsList(map);
	}

	public Integer deleteAll(List<String> list) {
		// TODO Auto-generated method stub
		return gm.deleteAll(list);
	}

	public Integer addGoods(Goods goods) {
		// TODO Auto-generated method stub
		return gm.addGoods(goods);
	}

	public Goods getGoodsByGid(Integer gid) {
		// TODO Auto-generated method stub
		return gm.getGoodsByGid(gid);
	}

	public Integer updateGoods(Goods goods) {
		// TODO Auto-generated method stub
		return gm.updateGoods(goods);
	}

	

}
