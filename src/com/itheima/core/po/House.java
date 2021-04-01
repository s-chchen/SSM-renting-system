package com.itheima.core.po;

import java.time.format.DateTimeFormatter;
import java.util.Date;

public class House {
	private Integer hno;
	private User huserid;
	private String haddr;
	private Float harea;
	private String hto;
	private Float hprice;
	private Date h_sales_time;
	private String h_rentstatus;
	private Integer start;
	private Integer rows;
	public Integer getHno() {
		return hno;
	}
	public void setHno(Integer hno) {
		this.hno = hno;
	}
	public User getHuserid() {
		return huserid;
	}
	public void setHuserid(User huserid) {
		this.huserid = huserid;
	}
	public String getHaddr() {
		return haddr;
	}
	public void setHaddr(String haddr) {
		this.haddr = haddr;
	}
	public Float getHarea() {
		return harea;
	}
	public void setHarea(Float harea) {
		this.harea = harea;
	}
	public String getHto() {
		return hto;
	}
	public void setHto(String hto) {
		this.hto = hto;
	}
	public Float getHprice() {
		return hprice;
	}
	public void setHprice(Float hprice) {
		this.hprice = hprice;
	}
	public Date getH_sales_time() {
		return h_sales_time;
	}
	public void setH_sales_time(Date h_sales_time) {
		this.h_sales_time = h_sales_time;
	}
	public String getH_rentstatus() {
		return h_rentstatus;
	}
	public void setH_rentstatus(String h_rentstatus) {
		this.h_rentstatus = h_rentstatus;
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
		return "House [hno=" + hno + ", huserid=" + huserid + ", haddr=" + haddr + ", harea=" + harea + ", hto=" + hto
				+ ", hprice=" + hprice + ", h_sales_time=" + h_sales_time + ", h_rentstatus=" + h_rentstatus
				+ ", start=" + start + ", rows=" + rows + ", toString()=" + super.toString() + "]";
	}	
}
