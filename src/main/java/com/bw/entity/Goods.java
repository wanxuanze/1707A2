package com.bw.entity;

/**
 * @author 一枚忧郁的男子
 *
 * 2019年11月4日
 * 下午2:48:53
 */
public class Goods {

//gid`, `gname`, `price`, `gename`, `size`, `introduce`
	
	private Integer gid;
	private String gname;
	private Double price;
	private String gename;
	private Integer size;
	private String introduce;
	private String picurl;
	
	private Integer cid1;
	private Integer cid2;
	private String cname1;
	private String cname2;
	public Goods(Integer gid, String gname, Double price, String gename, Integer size, String introduce, String picurl,
			Integer cid1, Integer cid2, String cname1, String cname2) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.price = price;
		this.gename = gename;
		this.size = size;
		this.introduce = introduce;
		this.picurl = picurl;
		this.cid1 = cid1;
		this.cid2 = cid2;
		this.cname1 = cname1;
		this.cname2 = cname2;
	}
	public Goods() {
		super();
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getGename() {
		return gename;
	}
	public void setGename(String gename) {
		this.gename = gename;
	}
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getPicurl() {
		return picurl;
	}
	public void setPicurl(String picurl) {
		this.picurl = picurl;
	}
	public Integer getCid1() {
		return cid1;
	}
	public void setCid1(Integer cid1) {
		this.cid1 = cid1;
	}
	public Integer getCid2() {
		return cid2;
	}
	public void setCid2(Integer cid2) {
		this.cid2 = cid2;
	}
	public String getCname1() {
		return cname1;
	}
	public void setCname1(String cname1) {
		this.cname1 = cname1;
	}
	public String getCname2() {
		return cname2;
	}
	public void setCname2(String cname2) {
		this.cname2 = cname2;
	}
	@Override
	public String toString() {
		return "Goods [gid=" + gid + ", gname=" + gname + ", price=" + price + ", gename=" + gename + ", size=" + size
				+ ", introduce=" + introduce + ", picurl=" + picurl + ", cid1=" + cid1 + ", cid2=" + cid2 + ", cname1="
				+ cname1 + ", cname2=" + cname2 + "]";
	}
	
	
	
}
