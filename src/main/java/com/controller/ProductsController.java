package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.HTMLDocument.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bean.Classification;
import com.bean.Products;
import com.bean.Showsphotos;
import com.service.ClassificationService;
import com.service.ProductsService;
import com.service.ShowsphotosService;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
 
 

@Controller
@RequestMapping("/Store")
public class ProductsController {
	
	 
	 
	@Autowired
	private ProductsService productService;
	
	@Autowired
	private ShowsphotosService showsphotosService;
	
	@Autowired
	private ClassificationService classificationService;
	
	@RequestMapping(value="/Add_to.action")
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
		productService.insertSelective(productsadd);
		int test=productService.selectId();  //拿到刚刚插入的商品的id
		productsadd.setId(test);
		request.getSession().setAttribute("product", productsadd);
		return "backstage/jsp/Products/showPicuters";	
	}
	
	@RequestMapping(value="/Uploadfiles.action")
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
		return "backstage/jsp/Products/showPicuters";
	}

	@RequestMapping(value="/See_to.action")
	public String SeeProducts(HttpServletRequest request){
		List<Products> products;
		products=productService.selectProducts();
		request.getSession().setAttribute("products1",products);
		return "backstage/jsp/Products/Seeclassification";	
	}
	
	@RequestMapping(value="/QuertByname.action")
	public String QueryBypnameProducts(HttpServletRequest request,
            HttpServletResponse response,String pname){
	    List<Products> products;
	    products=productService.QueryProductsBypname(pname);
	    request.getSession().setAttribute("products1",products);
		return "backstage/jsp/Products/Seeclassification";	
	}

	@RequestMapping(value="/update.action")
	public String UpdateToJsp(HttpServletRequest request,Integer id){
		Products products;
		products=productService.selectByPrimaryKey(id);
		request.getSession().setAttribute("products2",products);
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
		/*request.getSession().setAttribute("products2",products);*/
		return "redirect:See_to.action";
    	
    }
    
    @RequestMapping(value="/delectByid.action")
    public String delectProducts(HttpServletRequest request,Integer id){ 	 
    	productService.deleteProductsByid(id);
		return "redirect:See_to.action";
    }
    
    @RequestMapping(value="/add_products.action")
    public String addProductstoaddpage(HttpServletRequest request){
    	List<Classification> classifications;
    	classifications=classificationService.selectClassifiaction();
    	request.getSession().setAttribute("classifications", classifications);
		return "backstage/jsp/goods_add";
    	
    }
}
