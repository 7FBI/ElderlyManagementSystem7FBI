package com.controller.front.products;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Classification;
import com.bean.OldDiseaselibrary;
import com.bean.OldUsers;
import com.bean.Products;
import com.bean.Showsphotos;
import com.service.ClassificationService;
import com.service.ProductsService;
import com.service.ShowsphotosService;
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
	
	@Autowired
	@Qualifier("classificationService")
	private ClassificationService classificationService;      //商品类别
    

	@Autowired
	@Qualifier("showsphotosService")          //商品其余图片
	private ShowsphotosService showsphotosService;
    
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
	
	@RequestMapping("/selectAllProductsByType")      //根据商品类型得到商品
	public ModelAndView selectAllProductsByType(Integer tid){
		List<Products> products = productsService.selectAllProductsByType(tid);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("products", products);
		modelAndView.setViewName("front/ElectronicCommerce");
		return modelAndView;
		
	}
	
	
	@RequestMapping("/selectProductDetailByPrimaryKey")     //点击商品购买页面
	public ModelAndView selectProductDetailByPrimaryKey(HttpServletRequest request,Integer id){
		List<String> photoUrl=new ArrayList<String>();                                                   //定义商品其余图片List对象
		List<Showsphotos> photos=null;                                                //定义商品其余图片方法
		photos=showsphotosService.selectBypid(id);
		for(Showsphotos photo:photos){
			photoUrl.add(photo.getImage());
		}                                                                             //获取其余图片的路径
		Products product = productsService.selectByPrimaryKey(id);                    //根据商品id 查找商品
		System.out.println(product.getProducturl());
		Classification classifications=classificationService.selectByPrimaryKey(product.getTid());  //获取商品类别对象
		String classifiCation=classifications.getClassname();           //获取商品类别名称
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("classifiCationName", classifiCation);    //商品类别名称
		modelAndView.addObject("product", product);                      //商品对象
		modelAndView.addObject("photosUrl",photoUrl);                    //商品其余图片地址
		/*List<OldDiseaselibrary> oldDiseaselibraries = productsService.selectOldDiseaselibraryByProducts(id);  //根据商品匹配疾病，获得疾病对象
		modelAndView.addObject("oldDiseaselibraries", oldDiseaselibraries);*/
		modelAndView.setViewName("front/detailed");
		return modelAndView;
		
	}
	
	
}
