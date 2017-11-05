package com.controller.backstage.returnshopping;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.Products;
import com.bean.Returninfo;
import com.bean.Returnshopping;
import com.service.ProductsService;
import com.service.ReturnShoppingService;
import com.service.ReturninfoService;
@Controller
@RequestMapping("/returnshopping")
public class ReturnShoppingController {
 
 @Autowired
 @Qualifier("returnShoppingService")
 private ReturnShoppingService returnShoppingService;
 @Autowired
 @Qualifier("productsService")
 private ProductsService productsService;
 
 @RequestMapping("/querys")
 public ModelAndView getReturnShoppingByRid(@ModelAttribute("returnid") Integer returnid,@ModelAttribute("uid")String uid){
	 ModelAndView modelAndView=new ModelAndView();
	 List<Returnshopping> listReturnShoppings= returnShoppingService.ReturnShoppingByRid(returnid);
	 modelAndView.addObject("listReturnShoppings",listReturnShoppings);
	 modelAndView.addObject("returnid",returnid);
	 modelAndView.addObject("uid",uid);
	 modelAndView.setViewName("backstage/returninfodetail");
	 return modelAndView;
 }
 @RequestMapping("/addjsp")
 public ModelAndView addReturnShopping(Integer returnid,String uid){
	 ModelAndView modelAndView=new ModelAndView();
     List<Products> listProducts=productsService.selectAllProducts();
     modelAndView.addObject("listProducts",listProducts);
     modelAndView.addObject("returnid",returnid);
     modelAndView.addObject("uid",uid);
	 modelAndView.setViewName("backstage/addreturnshopping");
	return modelAndView;
 }
 @RequestMapping("/add")
 public String addReturnShoppingByRid(Returnshopping returnshopping,String uid,RedirectAttributes model){
     returnShoppingService.addReturnShoppingByRid(returnshopping);
     model.addFlashAttribute("returnid",returnshopping.getReturnid());
     model.addFlashAttribute("uid",uid);
	 return "redirect:/returnshopping/querys";
 }
 @RequestMapping("/remove")
 public String deleteReturnShoppingById(Integer id,RedirectAttributes model,Integer returnid,String uid){
     returnShoppingService.deleteByPrimaryKey(id);
     model.addFlashAttribute("uid",uid);
     model.addFlashAttribute("returnid",returnid);
	 return "redirect:/returnshopping/querys";
 }
 @RequestMapping("/updatejsp")
 public ModelAndView updateReturnShopping(Integer id,Integer returnid,String uid){
	 ModelAndView modelAndView=new ModelAndView();
	 Returnshopping returnshopping= returnShoppingService.selectByPrimaryKey(id);
     List<Products> listProducts=productsService.selectAllProducts();
     modelAndView.addObject("returnshopping",returnshopping);
     modelAndView.addObject("listProducts",listProducts);
     modelAndView.addObject("returnid",returnid);
     modelAndView.addObject("uid",uid);
	 modelAndView.setViewName("backstage/updatereturnshopping");
	return modelAndView;
 }
 @RequestMapping("/update")
 public String updateByPrimaryKeySelective(RedirectAttributes model,Returnshopping returnshopping,Integer returnid,String uid){
     returnShoppingService.updateByPrimaryKeySelective(returnshopping);
     model.addFlashAttribute("returnid",returnid);
     model.addFlashAttribute("uid",uid);
	 return "redirect:/returnshopping/querys";
	
 }
}
