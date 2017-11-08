package com.controller.front.products;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.OldDiseaselibrary;
import com.bean.OldUsers;
import com.bean.Products;
import com.service.ProductsService;


/**   
*    
* 项目名称：ElderlyManagementSystem7FBI   
* 类名称：ProductsController   
* 类描述：   
* 创建人：Administrator   
* 创建时间：2017年10月28日 下午4:41:02   
* 修改人：Administrator   
* 修改时间：2017年10月28日 下午4:41:02   
* 修改备注：   
* @version    
*    
*/
@Controller
@RequestMapping("/front/products")
public class ProductController {
	@Autowired
	@Qualifier("productsService")
	private ProductsService productsService;
	

    
	@RequestMapping("/selectAllProducts")
	public ModelAndView selectAllProducts(){
	  List<Products> products = productsService.selectAllProducts();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("products", products);
		modelAndView.setViewName("front/ElectronicCommerce");
		return modelAndView;
	}

	
	@RequestMapping("/selectProductsByLikeName")
	public ModelAndView selectProductsByLikeName(HttpServletRequest request){
		System.out.println(request.getParameter("pname")+"uuybuggvbygvgh");
		List<Products> products = productsService.selectProductsByLikeName(request.getParameter("pname"));
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("products", products);
		modelAndView.setViewName("front/ElectronicCommerce");
		return modelAndView;
	}
	
	@RequestMapping("/selectAllProductsByType")
	public ModelAndView selectAllProductsByType(Integer tid){
		List<Products> products = productsService.selectAllProductsByType(tid);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("products", products);
		modelAndView.setViewName("front/ElectronicCommerce");
		
		return modelAndView;
		
	}
	
	
	@RequestMapping("/selectProductDetailByPrimaryKey")
	public ModelAndView selectProductDetailByPrimaryKey(Integer id){
		Products product = productsService.selectProductDetailByPrimaryKey(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("product", product);
		List<OldDiseaselibrary> oldDiseaselibraries = productsService.selectOldDiseaselibraryByProducts(id);
		modelAndView.addObject("oldDiseaselibraries", oldDiseaselibraries);
		modelAndView.setViewName("front/productDetail");
		
		return modelAndView;
		
	}
	
	
}
