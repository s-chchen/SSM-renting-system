package com.itheima.core.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.core.po.Booking;

public interface BookingDao {
	public List<Booking> selectBookingList(Booking booking);//订单列表
	public Integer selectBookingListCount(Booking booking);//订单数
	public int insertBooking(Booking booking);//添加订单信息
	public Booking selectBookingBybno(@Param("bno") Integer bno);//查看订单信息	
//	public int updateBooking(Booking booking);
	public int deleteBookingBybno(@Param("bno") Integer bno);
}
