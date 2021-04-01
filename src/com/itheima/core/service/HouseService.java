package com.itheima.core.service;

import com.itheima.common.utils.Page;
import com.itheima.core.po.House;
import com.itheima.core.po.User;

public interface HouseService {
	public Page<House> selectHouseList(Integer page,Integer rows,
									String haddr,String hto,String harea
									,String hprice,User huserid,String h_rentstatus);
	public House selectHouseByhno(Integer hno);
	public int insertHouse(House house);
	public int updateHouse(House house);
	public int deleteHouseByhno(Integer hno);
}
