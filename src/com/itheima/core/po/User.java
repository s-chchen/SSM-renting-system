package com.itheima.core.po;

public class User {
	private String userid;
	private String username;
	private String userphone;
	private String password;
	private Integer start;
	private Integer rows;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
		return "User [userid=" + userid + ", username=" + username + ", userphone=" + userphone + ", password="
				+ password + ", start=" + start + ", rows=" + rows + ", toString()=" + super.toString() + "]";
	}	
}
