package com.itheima.core.web.controller;

import java.nio.channels.SeekableByteChannel;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itheima.common.utils.Page;
import com.itheima.core.po.Booking;
import com.itheima.core.po.House;
import com.itheima.core.po.User;
import com.itheima.core.service.BookingService;
import com.itheima.core.service.HouseService;

@Controller
public class BookingController {
	/* 依赖注入 */
	@Autowired
	private BookingService bookingService;
	@Autowired
	private HouseService houseService;
	@RequestMapping("/bookingedit.action")
	public String Booking() {
		return "bookingedit";		
	}
	@RequestMapping("/bookingSubmit.action")
	@ResponseBody
	public String insertBooking(Booking booking,HttpSession session) {		
		House house=(House)session.getAttribute("hdetail");		
		User user=(User)session.getAttribute("USER_SESSION");
		house.setH_rentstatus("已租");
		booking.setBhno(house);
		booking.setBmasterid(house.getHuserid());
		booking.setBtenantid(user);
		booking.setBmoney(booking.getBmonth()*house.getHprice());
		Date date = new Date();
	    // 得到一个Timestamp格式的时间，存入mysql中的时间格式“yyyy/MM/dd HH:mm:ss”
	    Timestamp timeStamp = new Timestamp(date.getTime());
	    booking.setBtime(timeStamp);
	    // 执行Service层中的创建方法，返回的是受影响的行数
	    int rows = bookingService.insertBooking(booking);	
	    int rows2=houseService.updateHouse(house);
	    if(rows > 0 && rows2 > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }	   
	}
	/*查看自己的订单*/
	@RequestMapping("/bookingMine/list.action")
	public String listBookingMine(@RequestParam(defaultValue = "1")Integer page,
			@RequestParam(defaultValue = "10")Integer rows,
			HttpSession session,Model model) {		
		User user=(User)session.getAttribute("USER_SESSION");
		Booking booking=new Booking();
		System.out.println(user);
		Page<Booking> bookings=bookingService.selectBookingList(page, rows, user,booking);
		model.addAttribute("page", bookings);
		return "booking";
	}
	/* 查看订单详细信息 */
	@RequestMapping("/booking/detail.action")
	public String detailBooking(Integer bno,HttpSession session,Model model) {
		Booking booking=bookingService.selectBookingBybno(bno);
		House house=houseService.selectHouseByhno(booking.getBhno().getHno());
		User btenant=booking.getBtenantid();
		session.setAttribute("hdetail", house);
		session.setAttribute("bdetail", booking);
		model.addAttribute("btenant_id", btenant.getUserid());
		model.addAttribute("btenant_name", btenant.getUsername());
		model.addAttribute("btenant_phone", btenant.getUserphone());
		return "housedetail";
	}
	@RequestMapping("/booking/delete.action")
	@ResponseBody
	public String deleteBooking(Integer bno) {
		House house=new House();
		Booking booking=bookingService.selectBookingBybno(bno);
		house.setHno(booking.getBhno().getHno());
		house.setH_rentstatus("待租");				
		int rows=houseService.updateHouse(house);
		if(rows>0) {
			int rows2=bookingService.deleteBookingBybno(bno);
			if(rows2>0) {
				return "OK";
			}
			return "FALL";
		}else {
			return "FALL";
		}
	}
}
