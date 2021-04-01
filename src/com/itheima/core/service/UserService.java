package com.itheima.core.service;

import com.itheima.common.utils.Page;
import com.itheima.core.po.User;

public interface UserService {
	public User selectUser(String userid,String password);
	public int insertUser(User user);
	public int updateUser(User user);
	public Page<User> selectUserList(Integer page,Integer rows,User user);
}
