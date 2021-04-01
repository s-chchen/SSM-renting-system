package com.itheima.core.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itheima.common.utils.Page;
import com.itheima.core.po.Booking;
import com.itheima.core.po.User;
import com.itheima.core.service.BookingService;
import com.itheima.core.service.UserService;
@Controller
public class AdminController {
	@Autowired
	private UserService userService;
	@Autowired
	private BookingService bookingService;
	/* 管理员登录 */
	@RequestMapping(value="/adminLogin.action")
	public String toAdminLogin() {
		return "adminLogin";
	}
	@RequestMapping(value="/adminLogin.action",method = RequestMethod.POST)
	public String adminLogin(String userid,String password,HttpSession session,Model model) {
		User user=userService.selectUser(userid, password);
		if(user!=null) {
			/*从userphone识别是否为管理员*/
			if(user.getUserphone().equals("11011011015  ")) {
				session.setAttribute("ADMIN_SESSION", user);
				return "redirect:admin_index.action";
			}else {
				model.addAttribute("msg", "！此账号非管理员！");
				return "adminLogin";
			}
		}else {
			model.addAttribute("msg", "账号或密码错误");
			return "adminLogin";
		}
	}
	@RequestMapping("adminLogout.action")
	public String adminLogout(HttpSession session) {
		session.invalidate();
		return "redirect:adminLogin.action";
	}
	@RequestMapping("/admin_index.action")
	public String toAdmin_index() {
		return "admin_index";
	}
	@RequestMapping("/admin_booking/list.action")
	public String list_adminbooking(@RequestParam(defaultValue = "1")Integer page,
			@RequestParam(defaultValue = "10")Integer rows,
			Booking booking,Model model) {
		User user=new User();
		Page<Booking> bookings=bookingService.selectBookingList(page, rows, user,booking);		
		model.addAttribute("page", bookings);
		return "admin_booking";
	}
	@RequestMapping("/admin_user/list.action")
	public String list_adminbooking(@RequestParam(defaultValue = "1")Integer page,
			@RequestParam(defaultValue = "10")Integer rows,
			User user,Model model) {
		System.out.println("mine:"+user);
		Page<User> users=userService.selectUserList(page, rows, user);
		model.addAttribute("page", users);
		return "admin_user";
	}
}
