package com.itheima.core.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.core.po.House;

public interface HouseDao {
	public List<House> selectHouseList(House house);//房子列表
	public Integer selectHouseListCount(House house);//房子数
	public House selectHouseByhno(@Param("hno") Integer hno);//房子详情
	public int insertHouse(House house);//添加房子
	public int updateHouse(House house);//更新房子信息
	public int deleteHouseByhno(@Param("hno") Integer hno);//删除房子信息
}
