package com.itheima.core.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.common.utils.Page;
import com.itheima.core.dao.HouseDao;
import com.itheima.core.po.House;
import com.itheima.core.po.User;
import com.itheima.core.service.HouseService;
@Service("houseService")
@Transactional
public class HouseServiceImpl implements HouseService {
	@Autowired
	private HouseDao houseDao;
	@Override
	public Page<House> selectHouseList(Integer page, Integer rows, 
			String haddr,String hto,String harea,String hprice,
			User huserid,String h_rentstatus) {
		// TODO Auto-generated method stub
		House house=new House();
		if(StringUtils.isNotBlank(haddr)) {
			house.setHaddr(haddr);
		}
		if(StringUtils.isNotBlank(hto)) {
			house.setHto(hto);
		}
		if(StringUtils.isNotBlank(harea)) {
			house.setHarea(Float.parseFloat(harea));
		}
		if(StringUtils.isNotBlank(hprice)) {
			house.setHprice(Float.parseFloat(hprice));
		}
		if(StringUtils.isNotBlank(huserid.getUserid())) {
			house.setHuserid(huserid);
		}
		if(StringUtils.isNotBlank(h_rentstatus)) {
			house.setH_rentstatus(h_rentstatus);
		}
		house.setStart((page-1)*rows);
		house.setRows(rows);
		List<House> houses=houseDao.selectHouseList(house);
		Integer count=houseDao.selectHouseListCount(house);
		Page<House> result=new Page<>();
		result.setPage(page);
		result.setRows(houses);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}

	@Override
	public House selectHouseByhno(Integer hno) {
		// TODO Auto-generated method stub
		House house=houseDao.selectHouseByhno(hno);
		return house;
	}

	@Override
	public int insertHouse(House house) {		
		return houseDao.insertHouse(house);
	}

	@Override
	public int updateHouse(House house) {
		return houseDao.updateHouse(house);
	}

	@Override
	public int deleteHouseByhno(Integer hno) {
		return houseDao.deleteHouseByhno(hno);
	}

}
