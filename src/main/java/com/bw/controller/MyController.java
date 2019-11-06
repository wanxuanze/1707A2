package com.bw.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bw.entity.Category;
import com.bw.entity.Goods;
import com.bw.service.CategoryService;
import com.bw.service.GoodsService;
import com.bw.utils.FileUtils;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * @author 一枚忧郁的男子
 *
 * 2019年11月4日
 * 下午3:05:30
 */

@Controller
public class MyController {

	@Resource
	GoodsService gs;
	
	@Resource
	CategoryService cs;
	
	@RequestMapping("/getGoodsList")
	public ModelAndView getGoodList(String ziduan,String order,@RequestParam(defaultValue="1") Integer pageNum){
		ModelAndView mav = new ModelAndView();
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("ziduan", ziduan);
		map.put("order", order);
		PageHelper.startPage(pageNum,3);
		List<Goods> goodsList = gs.getGoodsList(map);
		PageInfo<Goods> page = new PageInfo<Goods>(goodsList);
		mav.setViewName("list");
		mav.getModelMap().addAttribute("list", goodsList);
		mav.getModelMap().addAttribute("page", page);
		return mav;
	}
	
	@RequestMapping("/deleteAll")
	@ResponseBody
	public Integer deleteAll(String ids){
		String[] split = ids.split(",");
		List<String> list = new ArrayList<String>();
		for (String string : split) {
			list.add(string);
		}
		Integer deleteAll = gs.deleteAll(list);
		return deleteAll;
	}
	
	@RequestMapping("/getCategoryList")
	@ResponseBody
	public List<Category> getCategoryList(Integer pid){
		List<Category> list = cs.getCategoryList(pid);
		return list;
	}
	
	@RequestMapping("/addGoods")
	public String addGoods(Goods goods,MultipartFile file) throws Exception{
		String upload = FileUtils.upload(file);
		goods.setPicurl(upload);
		gs.addGoods(goods);
		return "redirect:getGoodsList";
	}
	
	@RequestMapping("/lookingImg")
	public void lookingImg(String path,HttpServletRequest request,HttpServletResponse response){
		FileUtils.lookImg(path, request, response);
	}
	
	@RequestMapping("/getGoodsByGid")
	public String getGoodsByGid(Integer gid,Model model){
		Goods goods = gs.getGoodsByGid(gid);
		model.addAttribute("goods", goods);
		return "updateGoods";
	}
	
	@RequestMapping("/updateGoods")
	public String updateGoods(Goods goods,MultipartFile file) throws Exception{
		String upload = FileUtils.upload(file);
		goods.setPicurl(upload);
		gs.updateGoods(goods);
		return "redirect:getGoodsList";
	}
}
