package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
 
import org.springframework.web.bind.annotation.RequestMapping;
 
 
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Classification;
import com.bean.Page;
import com.bean.Products;
import com.bean.Showsphotos;
import com.service.ClassificationService;
import com.service.ProductsService;
import com.service.ShowsphotosService;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
 
 

@Controller
@RequestMapping("/backstage/Store")
public class ProductsController {
	
	 
	 
	@Autowired
	private ProductsService productService;
	
	@Autowired
	private ShowsphotosService showsphotosService;
	
	@Autowired
	private ClassificationService classificationService;
	
	@RequestMapping(value="/Add_to.action")     //添加商品方法
	public String ProductsInsert(HttpServletRequest request,Products products,MultipartFile file){
		Products productsadd=null;
		productsadd=products;
		if(file!=null){
			  String uploadPath=request.getServletContext().getRealPath("files"); //下载到的文件夹位置
			  String fileName = file.getOriginalFilename();    //原始文件名称
 			  String path = uploadPath+File.separator+fileName;   //文件完整路径名称
 			  File newFile = new File(path);  
 			  if(!newFile.getParentFile().exists()){   //判断存储文件的路径是否存在，如果不存在则创建
 				 newFile.getParentFile().mkdirs();
 			  }
 			  try {
				file.transferTo(newFile);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
 			 productsadd.setProducturl(path);
 		  
		}
		productService.insertSelective(productsadd);    //添加商品
		int test=productService.selectId();  //拿到刚刚插入的商品的id
		productsadd.setId(test);
		request.getSession().setAttribute("product", productsadd);
		return "backstage/jsp/Products/showPicuters";	
	}
	
	@RequestMapping(value="/add_Products.action")
	public String AddProducts(HttpServletRequest request){
		List<Classification> calssification=null;
		calssification=classificationService.selectClassifiaction();
		request.getSession().setAttribute("calssification",calssification );
		return "backstage/goods_add";
		
	}
	@RequestMapping("/productShowUrl")
	public ModelAndView getProductShowUrl(Integer pid,Integer did,Integer uid){
		List<Products> listProducts= productService.selectProductUrlByPid(pid);
			ModelAndView modelAndView=new ModelAndView();
		    modelAndView.addObject("listProducts",listProducts);
		    modelAndView.addObject("did",did);
		    modelAndView.addObject("uid",uid);
		    modelAndView.setViewName("backstage/oldusersicknessproductdetail");
		    return modelAndView;
	
	}
	@RequestMapping(value="/Uploadfiles.action")   //上传商品其余图片方法
	public String UploadFilestest(HttpServletRequest request,MultipartFile[] graphTheorise,int id){
		int pid=id;
		List<String> list=new ArrayList<String>();
		 
		 
		String uploadPath = request.getSession().getServletContext().getRealPath("/files"); //文件下载存储的路径
		for(MultipartFile files:graphTheorise){     //遍历文件
			String fileName;   //文件名
			try{
				fileName = new String(files.getOriginalFilename().getBytes("iso-8859-1"), "utf-8");
				String newFileName=UUID.randomUUID()+fileName;
				String endPath=uploadPath+File.separator+newFileName;
				File loadFile=new File(endPath);    //新建文件
				if (!loadFile.getParentFile().exists()) {
					loadFile.getParentFile().mkdirs();
				}
				files.transferTo(loadFile);
				list.add(endPath);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		if(list!=null){
			for(String fileNames:list){
				Showsphotos showsphotos=new Showsphotos();
				showsphotos.setPid(pid);
				showsphotos.setImage(fileNames);
				showsphotosService.insertSelective(showsphotos);
			}
		}
		int size=list.size();
		String[] picuter=(String[])list.toArray(new String[size]);
		request.getSession().setAttribute("picuter", picuter);
		return "redirect:add_Products.action";
	}
	
	@RequestMapping(value="/updatepivuter.action")   //上传商品其余图片方法
	public String updateProducts(HttpServletRequest request,MultipartFile[] graphTheorise,int id){
		int pid=id;
		List<String> list=new ArrayList<String>(); 
		List<Showsphotos> showphotos;
		showphotos=showsphotosService.selectBypid(pid);
		String uploadPath = request.getSession().getServletContext().getRealPath("/files"); //文件下载存储的路径
		for(MultipartFile files:graphTheorise){     //遍历文件
			String fileName;   //文件名
			try{
				fileName = new String(files.getOriginalFilename().getBytes("iso-8859-1"), "utf-8");
				String newFileName=UUID.randomUUID()+fileName;
				String endPath=uploadPath+File.separator+newFileName;
				File loadFile=new File(endPath);    //新建文件
				if (!loadFile.getParentFile().exists()) {
					loadFile.getParentFile().mkdirs();
				}
				files.transferTo(loadFile);
				list.add(endPath);
				
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		if(showphotos!=null&&showphotos.size()>0){
		int size=list.size();
		String[] picuter=(String[])list.toArray(new String[size]);    //picuter[size] 传入的图片
		for(int x=0;x<size;x++){
			Showsphotos show=null;
			show=showphotos.get(x);
			show.setImage(picuter[x]);
			showsphotosService.updateByPrimaryKeySelective(show);
		}
		}else{
			if(list!=null){
				for(String tr:list){
					Showsphotos show=new Showsphotos();
					show.setPid(pid);
					show.setImage(tr);
					showsphotosService.insertFrompidimage(show);
				}
			}
		}
		return "redirect:init.do";
	}

	@RequestMapping(value="/QuertByname.action")    //商品查询方法
	public String QueryBypnameProducts(HttpServletRequest request,
            HttpServletResponse response,String pname){
	    List<Products> products;
	    products=productService.QueryProductsBypname(pname);
	    request.getSession().setAttribute("products1",products);
		return "backstage/jsp/Products/Seeclassification";	
	}

	@RequestMapping(value="/update.action")     //修改商品方法
	public String UpdateToJsp(HttpServletRequest request,Integer id){
		Products products;
		List<Classification> calssificationType=null;
		String tidType=null;
		int tid;
		calssificationType=classificationService.selectClassifiaction();     //获取类型表所有类型
		products=productService.selectByPrimaryKey(id);
		id=products.getTid();
		for(Classification tf:calssificationType){
			if(id==tf.getId()){
				tidType=tf.getClassname();
			}
		}
		request.getSession().setAttribute("products2",products);
		request.getSession().setAttribute("calssification",calssificationType);
		request.getSession().setAttribute("type",tidType);
		return "backstage/jsp/Products/UpdateProducts";
		
	}
	
	@RequestMapping(value="/updateProducts.action")   //商品信息修改提交方法，返回提交成功
    public String UpdateProducts(HttpServletRequest request,Products products,MultipartFile file){
		if(file!=null){
			  String uploadPath=request.getServletContext().getRealPath("files"); //下载到的文件夹位置
			  String fileName = file.getOriginalFilename();    //原始文件名称
			  String path = uploadPath+File.separator+fileName;   //文件完整路径名称
			  File newFile = new File(path);  
			  if(!newFile.getParentFile().exists()){   //判断存储文件的路径是否存在，如果不存在则创建
	 				 newFile.getParentFile().mkdirs();
	 			  }
			  try {
					file.transferTo(newFile);
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			  products.setProducturl(path);
		}
		productService.updateByPrimaryKeySelective(products);
		request.getSession().setAttribute("product",products);
		return "backstage/jsp/Products/updatePicuter";
    	
    }
    
    @RequestMapping(value="/delectByid.action")
    public String delectProducts(HttpServletRequest request,Integer id){ 	 
    	productService.deleteProductsByid(id);
		return "redirect:init.do";
    }
    
    @RequestMapping(value="/add_products.action")
    public String addProductstoaddpage(HttpServletRequest request){
    	List<Classification> classifications;
    	classifications=classificationService.selectClassifiaction();
    	request.getSession().setAttribute("classifications", classifications);
		return "backstage/jsp/goods_add";
    } 
    
   @RequestMapping(value="/init.do")
   public String searchInvList(Page page,HttpServletRequest request)throws UnsupportedEncodingException{     //展示商品 分页实现
	 //组装page对象,传入方法中查询列表 回显数据
       Page p =page;
       int pageSize=10; //设置每页大小
       p.setPageSize(pageSize);    //传入页面大小进入对象P
       
       int curPage=p.getCurrentPage();    //获得当前页面
       if(curPage==0){
    	   curPage=1;
    	   p.setCurrentPage(curPage);
       }
       int startRow =page.getStartRow();   //获得开始条数
       
       if(!(p.getCurrentPage()==0)){    //如果当前页面不等于0页
    	   startRow=getStartRowBycurrentPage(curPage, pageSize);    //传入当前页面，和每个页面大小 得到开始条数
       }
       p.setStartRow(startRow);   //设置开始条数
       String queryCondition=null;    //查询条件字段
       if (page.getQueryCondition()!=null) {   //获得查询条件
           queryCondition = page.getQueryCondition();//查询条件
      } 
      List<Products> Invlist=getInvListByCondition(page);    //得到模糊查询获得是商品序列
      long totalCounts=productService.getProductsCount();    //获得商品总的条数
      int totalPages=(int) ((totalCounts%pageSize==0)?(totalCounts/pageSize):(totalCounts/pageSize+1)); //总页数=总条数/页大小+1
      p.setTotalPage(totalPages);  //获得总页数
      page.setTotalRows(totalCounts);//总行数    TotalRows属性的字段为long
      request.getSession().setAttribute("InvList", Invlist);
      request.getSession().setAttribute("page", page);
	   return "backstage/jsp/Products/Seeclassification";  
   }
    
   private List<Products> getInvListByCondition(Page page){    //传入page得到商品列表
	   List<Products> InvList =null;
	   if (page.getQueryCondition()==null) {      //判断模糊查询的字符串是否为空
		   InvList=productService.fenye(page);   
		   return InvList;
	   }
	   InvList=productService.getInvBycondtion(page);  //得到符合条件的商品
	   return InvList;   
   }
   
   /**
    * 根据当前页获取开始行
    * @param currentPage
    * @param pageSize
    * @return
    */
   public int getStartRowBycurrentPage(int currentPage,int pageSize){   //根据当前页面 和页面大小
	   int startRow=0;   //开始行
	   if (currentPage==1) {    //如果当前页面等于1
		   return startRow=0;
	   }
	   startRow=(currentPage-1)*pageSize;   //开始行数等于当前页面减一，乘与每页的大小
	   return startRow;   
   }
}
