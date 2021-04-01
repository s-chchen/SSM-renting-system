package com.itheima.core.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.common.utils.Page;
import com.itheima.core.dao.UserDao;
import com.itheima.core.po.User;
import com.itheima.core.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	/*×¢ÈëUserDao*/
	@Autowired
	private UserDao userDao;
	@Override
	public User selectUser(String userid, String password) {		
		User user=this.userDao.selectUser(userid, password);
		return user;
	}
	@Override
	public int insertUser(User user) {
		return userDao.insertUser(user);
	}
	@Override
	public int updateUser(User user) {
		return userDao.updateUser(user);
	}
	@Override
	public Page<User> selectUserList(Integer page, Integer rows, User user) {
		user.setStart((page-1)*rows);
		user.setRows(rows);
		List<User> users=userDao.selectUserList(user);
		Integer count=userDao.selectUserListCount(user);
		Page<User> result=new Page<>();
		result.setPage(page);
		result.setRows(users);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}	
}
