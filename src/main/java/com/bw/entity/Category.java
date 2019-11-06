package com.bw.entity;

/**
 * @author 一枚忧郁的男子
 *
 * 2019年11月4日
 * 下午2:53:32
 */
public class Category {

	private Integer cid;
	private String cname;
	private Integer pid;
	public Category(Integer cid, String cname, Integer pid) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.pid = pid;
	}
	public Category() {
		super();
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	@Override
	public String toString() {
		return "Category [cid=" + cid + ", cname=" + cname + ", pid=" + pid + "]";
	}
	
	
	
}
