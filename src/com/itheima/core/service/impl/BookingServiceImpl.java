package com.itheima.core.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.common.utils.Page;
import com.itheima.core.dao.BookingDao;
import com.itheima.core.po.Booking;
import com.itheima.core.po.User;
import com.itheima.core.service.BookingService;

@Service("bookingService")
@Transactional
public class BookingServiceImpl implements BookingService {
	@Autowired
	private BookingDao bookingDao;
	@Override
	public Page<Booking> selectBookingList(Integer page, Integer rows, User btenantid,Booking booking){
//		Booking booking=new Booking();
		if(StringUtils.isNotBlank(btenantid.getUserid())) {
			booking.setBtenantid(btenantid);
		}
		booking.setStart((page-1)*rows);
		booking.setRows(rows);
		List<Booking> bookings=bookingDao.selectBookingList(booking);
		Integer count=bookingDao.selectBookingListCount(booking);
		Page<Booking> result=new Page<>();
		result.setPage(page);
		result.setRows(bookings);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	@Override
	public int insertBooking(Booking booking) {
		return bookingDao.insertBooking(booking);
	}
	@Override
	public Booking selectBookingBybno(Integer bno) {
		Booking booking=bookingDao.selectBookingBybno(bno);
		return booking;		
	}
	@Override
	public int deleteBookingBybno(Integer bno) {
		return bookingDao.deleteBookingBybno(bno);
	}
}
