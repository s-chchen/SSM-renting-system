package com.itheima.core.po;

import java.time.format.DateTimeFormatter;
import java.util.Date;

public class Booking {
	private Integer bno;
	private Date btime;
	private House bhno;//房子id
	private User bmasterid;//房主id
	private User btenantid;//租客id
	private float bmoney;
	private Integer bmonth;//租房租期（几个月）
	private Integer start;
	private Integer rows;
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public Date getBtime() {
		return btime;
	}
	public void setBtime(Date btime) {
		this.btime = btime;
	}
	public House getBhno() {
		return bhno;
	}
	public void setBhno(House bhno) {
		this.bhno = bhno;
	}
	public User getBmasterid() {
		return bmasterid;
	}
	public void setBmasterid(User bmasterid) {
		this.bmasterid = bmasterid;
	}
	public User getBtenantid() {
		return btenantid;
	}
	public void setBtenantid(User btenantid) {
		this.btenantid = btenantid;
	}
	public float getBmoney() {
		return bmoney;
	}
	public void setBmoney(float bmoney) {
		this.bmoney = bmoney;
	}	
	public Integer getBmonth() {
		return bmonth;
	}
	public void setBmonth(Integer bmonth) {
		this.bmonth = bmonth;
	}
	
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	@Override
	public String toString() {
		return "Booking [bno=" + bno + ", btime=" + btime + ", bhno=" + bhno + ", bmasterid=" + bmasterid
				+ ", btenantid=" + btenantid + ", bmoney=" + bmoney + ", bmonth=" + bmonth + ", start=" + start
				+ ", rows=" + rows + ", toString()=" + super.toString() + "]";
	}	
}
