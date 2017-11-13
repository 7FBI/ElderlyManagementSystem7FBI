package com.controller.discount;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Discount;
import com.service.DiscountService;

@Controller
@RequestMapping("/backstage/discount")
public class DiscountController {
	@Resource
	private DiscountService discountService;
	
	@RequestMapping("/selectall")
	public String selectAll(HttpServletRequest request) {
		if(request.getSession().getAttribute("ManagerIndo")==null){
		return "backstage/jsp/ManagerIngo/ManagerIngo_login";
		}
		List<Discount> list=discountService.selectAll();
		request.setAttribute("list", list);
		return "backstage/discount_index";
	}
	
	@RequestMapping("select_for_update")
	public String select_for_update(int id,HttpServletRequest request){
		Discount discount=discountService.selectByPrimaryKey(id);
		request.setAttribute("discount", discount);
		return "backstage/discount_update";
	}
	@RequestMapping("/update")
	public String update(Discount discount,HttpServletRequest request){
		discountService.updateByPrimaryKeySelective(discount);
		return "redirect:/backstage/discount/selectall";
	}
	
	@RequestMapping("/delete")
	public String delete(int id,HttpServletRequest request) {
		discountService.deleteByPrimaryKey(id);
		return "redirect:/backstage/discount/selectall";
	}
	
	@RequestMapping("/insert")
	public String insert(Discount discount,HttpServletRequest request){
		if (discountService.selectByPid(discount.getPid())!=null) {
			return "backstage/discount_insert";
		}
		discountService.insertSelective(discount);
		return "redirect:/backstage/discount/selectall";
	}
}
