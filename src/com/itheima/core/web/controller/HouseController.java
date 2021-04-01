package com.itheima.core.web.controller;

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
import com.itheima.core.po.House;
import com.itheima.core.po.User;
import com.itheima.core.service.HouseService;

@Controller
public class HouseController {
	@Autowired
	private HouseService houseService;
	@RequestMapping(value="/house/list.action")
	public String list(@RequestParam(defaultValue = "1")Integer page,
			@RequestParam(defaultValue = "10")Integer rows,
			String haddr,String hto,String harea,String hprice,
			Model model) {
		User user=new User();
		Page<House> houses=houseService.selectHouseList(page, rows, haddr,hto,harea,hprice,user,"待租");	
		model.addAttribute("page", houses);
		model.addAttribute("haddr", haddr);
		model.addAttribute("hto", hto);
		model.addAttribute("harea", harea);
		model.addAttribute("hprice", hprice);
		return "house2";		
	}
	@RequestMapping(value="/houseMine/list.action")
	public String listMine(@RequestParam(defaultValue = "1")Integer page,
			@RequestParam(defaultValue = "10")Integer rows,
			String haddr,String hto,String harea,String hprice,
			HttpSession session,
			Model model) {
		User user=(User) session.getAttribute("USER_SESSION");
		Page<House> houses=houseService.selectHouseList(page, rows, haddr,hto,harea,hprice,user,"");	
		model.addAttribute("page", houses);
		model.addAttribute("haddr", haddr);
		model.addAttribute("hto", hto);
		model.addAttribute("harea", harea);
		model.addAttribute("hprice", hprice);
		model.addAttribute("such", "houseMine");
		return "house2";		
	}
	@RequestMapping(value = "/house/detail.action")
	public String detail(Integer hno,Model model,HttpSession session) {
		House house=houseService.selectHouseByhno(hno);
//		model.addAttribute("hdetail", house);
		session.setAttribute("hdetail", house);
		return "housedetail";		
	}
	@RequestMapping("/house/create.action")
	@ResponseBody
	public String insertHouse(House house,HttpSession session) {
		// 获取Session中的当前用户信息
	    User user = (User) session.getAttribute("USER_SESSION");
	    // 将当前用户id存储在客户对象中
	    house.setHuserid(user);
	    // 创建Date对象
	    Date date = new Date();
	    // 得到一个Timestamp格式的时间，存入mysql中的时间格式“yyyy/MM/dd HH:mm:ss”
	    Timestamp timeStamp = new Timestamp(date.getTime());
	    house.setH_sales_time(timeStamp);
	    // 执行Service层中的创建方法，返回的是受影响的行数
	    int rows = houseService.insertHouse(house);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}
	@RequestMapping("/house/getHouseByhno.action")
	@ResponseBody
	public House getHouseByhno(Integer hno) {
		System.out.println(hno);
		House house=houseService.selectHouseByhno(hno);
		return house;
	}
	@RequestMapping("/house/update.action")
	@ResponseBody
	public String updateHouse(House house) {
		int rows=houseService.updateHouse(house);
		if(rows>0) {
			return "OK";
		}else {
			return "FALL";
		}
	}
	@RequestMapping("/house/delete.action")
	@ResponseBody
	public String deleteHouse(Integer hno) {
		int rows=houseService.deleteHouseByhno(hno);
		if(rows>0) {
			return "OK";
		}else {
			return "FALL";
		}
	}
}
