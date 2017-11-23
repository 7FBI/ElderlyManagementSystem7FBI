package com.controller.front.products;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Classification;
import com.bean.Credit;
import com.bean.Matchdisease;
import com.bean.OldDiseaselibrary;
import com.bean.OldUsers;
import com.bean.Products;
import com.bean.Showsphotos;
import com.controller.util.shop.OldCollectionBoolean;
import com.service.ClassificationService;
import com.service.CreditshopService;
import com.service.MatchdiseaseService;
import com.service.OldCollectionService;

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
	@Qualifier("OldCollectionService")
	private OldCollectionService OldCollectionService;
	
	@Autowired
	@Qualifier("productsService")
	private ProductsService productsService;
	
	@Autowired
	@Qualifier("classificationService")
	private ClassificationService classificationService;      //商品类别
    

	@Autowired
	@Qualifier("showsphotosService")          //商品其余图片
	private ShowsphotosService showsphotosService;
	
	@Autowired
	@Qualifier("creditShopService")
	private CreditshopService creditShopService;
    
	@Autowired
	@Qualifier("matchdiseaseService")
	private MatchdiseaseService matchdiseaseService;

	@RequestMapping("/selectAllProducts")
	public ModelAndView selectAllProducts(){
	  List<Products> products = productsService.selectAllProducts();
	  List<Products> product = creditShopService.SelectAllCreditShop();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("products", products);
		modelAndView.addObject("product", product);
		modelAndView.setViewName("front/ElectronicCommerce_secondary");
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
	
	@RequestMapping("/selectAllProductsByType") // 根据商品类型得到商品
	@ResponseBody
	/*
	 * public List<Matchdisease> selectAllProductsByType(HttpServletRequest
	 * request,Integer tid) {
	 */
	public ModelAndView selectAllProductsByType(HttpServletRequest request, Integer tid) {
		List<Products> products = productsService.selectAllProductsByType(tid);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("products", products);
		modelAndView.setViewName("front/ElectronicCommerce");
		// List<Matchdisease> matchMedicationProducts=null;
		System.out.println("类型id：" + tid);
		//
		if (tid == 3) {
			if (request.getSession().getAttribute("oldUsers") == null) {
				// modelAndView.setViewName("front/login");
				// 热销商品
				/*
				 * Integer classid = (Integer)
				 * request.getSession().getAttribute("tid");
				 */
				List<Products> hotMedicationProducts = productsService.querySaleProductCountByTid(1);
				System.out.println("药品---------药药药---------销量：" + hotMedicationProducts.size());
				modelAndView.addObject("hotMedicationProducts", hotMedicationProducts);
				modelAndView.setViewName("front/ElectronicCommerce");
			} else {
				OldUsers oldUsers = (OldUsers) request.getSession().getAttribute("oldUsers");
				System.out.println("用户类型：" + oldUsers.getType());
				if (oldUsers.getType() == 1) {
					List<Products> hotMedicationProducts = productsService.querySaleProductCountByTid(1);
					System.out.println("药品---------药药药---------销量：" + hotMedicationProducts.size());
					modelAndView.addObject("hotMedicationProducts", hotMedicationProducts);
					modelAndView.setViewName("front/ElectronicCommerce");
				} else {
					List<Matchdisease> matchMedicationProducts = matchdiseaseService.queryProductByUid(oldUsers.getUid());				
					System.out.println("=====推荐药品=======：" + matchMedicationProducts.size());
					modelAndView.addObject("matchMedicationProducts", matchMedicationProducts);
					modelAndView.setViewName("front/ElectronicCommerce");

				}
			}
		} else {
			// 热销商品
			Integer classid = (Integer) request.getSession().getAttribute("tid");
			List<Products> hotProducts = productsService.querySaleProductCountByTid(tid);
			System.out.println("---------热销商品------：" + hotProducts.size());
			modelAndView.addObject("hotProducts", hotProducts);
			modelAndView.setViewName("front/ElectronicCommerce");
		}
		//销售为空时显示
		Integer classid = (Integer) request.getSession().getAttribute("tid");
		List<Products> someProducts = productsService.querySomeProductByTid(tid);
		System.out.println("---------商品------：" + someProducts.size());
		modelAndView.addObject("someProducts", someProducts);
		modelAndView.setViewName("front/ElectronicCommerce");
		return modelAndView;
		/* return matchMedicationProducts; */

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
		modelAndView.addObject("collections", OldCollectionBoolean.collection2(id, request, OldCollectionService));
		return modelAndView;
	}
	
	
}
