package com.controller.backstage.groupbuying;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.DiscountQueryproducts;
import com.bean.GroupBackstage;
import com.bean.Groupbuying;
import com.bean.Manager;
import com.bean.Page;
import com.service.DiscountService;
import com.service.GroupbuyingService;
import com.service.ProductsService;

@Controller
@RequestMapping("/backstage/groupbuying")
public class GroupbuyingController {

	@Resource
	GroupbuyingService groupbuyingService;
	
	@Autowired
	@Qualifier("discountService")
	private DiscountService discountService;
	
	@RequestMapping("/insert")
	public String groupbuyingInsert(Groupbuying groupbuying,HttpServletRequest request){
		if(groupbuyingService.selectByPid(groupbuying.getPid())!=null){
			return "redirect:/backstage/groupbuying/selectall";
		}
		groupbuyingService.insertSelective(groupbuying);
		return "redirect:/backstage/groupbuying/selectall";	
	}
	
	@RequestMapping("/delete")
	public String groupbuyingDelect(int id,HttpServletRequest request){
		groupbuyingService.deleteByPrimaryKey(id);
		return "redirect:/backstage/groupbuying/selectall";
	}
	@RequestMapping("/selectall")
	public ModelAndView groupbuyingSelectAll(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getSession().getAttribute("ManagerIndo")==null){
			mv.setViewName("backstage/jsp/ManagerIngo/ManagerIngo_login");
			return mv;
		}
		List<Groupbuying> list = groupbuyingService.selectAll();
		mv.addObject("list", list);
		mv.setViewName("backstage/groupbuying_index");
		return mv;
	}
	@RequestMapping("/update")
	public String groupbuyingUpdate(Groupbuying groupbuying,HttpServletRequest request){
		groupbuyingService.updateByPrimaryKeySelective(groupbuying);
		return "redirect:/backstage/groupbuying/selectall";
	}
	@RequestMapping("/select_for_update")
	public String select_for_update(int id,HttpServletRequest request) {
		Groupbuying groupbuying = groupbuyingService.selectByPrimaryKey(id);
		request.getSession().setAttribute("groupbuying", groupbuying);
		return "backstage/groupbuying_update";
	}
	
	@RequestMapping(value = "/queryGroupbuy.do")
	public String gueryGroupbuyingselect(Page page, HttpServletRequest request)throws UnsupportedEncodingException{
		// 组装page对象,传入方法中查询列表 回显数据
				Page p = page;
				int pageSize = 6; // 设置每页大小
				p.setPageSize(pageSize); // 传入页面大小进入对象P
				
		int curPage = p.getCurrentPage(); // 获得当前页面
		if (curPage == 0) {
			curPage = 1;
			p.setCurrentPage(curPage);
		}
		int startRow = page.getStartRow(); // 获得开始条数
		if (!(p.getCurrentPage() == 0)) { // 如果当前页面不等于0页
			startRow = getStartRowBycurrentPage(curPage, pageSize); // 传入当前页面，和每个页面大小
																	// 得到开始条数
		}
		p.setStartRow(startRow); // 设置开始条数
		String queryCondition = null; // 查询条件字段
		if (page.getQueryCondition() != null) { // 获得查询条件
			queryCondition = page.getQueryCondition();// 查询条件
		}
		
		/*这里有一个模糊查询*/
		List<GroupBackstage> Invlist = getInvListByCondition(page); // 得到模糊查询获得是商品序列
		int totalCounts = groupbuyingService.GroupCounts(); // 获得商品总的条数
		int totalPages = (int) ((totalCounts % pageSize == 0) ? (totalCounts / pageSize)
				: (totalCounts / pageSize + 1)); // 总页数=总条数/页大小+1
		p.setTotalPage(totalPages); // 获得总页数
		page.setTotalRows(totalCounts);// 总行数 TotalRows属性的字段为long
		request.getSession().setAttribute("InvList", Invlist);
		request.getSession().setAttribute("page", page);
		return "backstage/jsp/Products/queryGroupbuy";
		
	}
	
	private List<GroupBackstage> getInvListByCondition(Page page) { // 传入page得到商品列表
		List<GroupBackstage> InvList = null;
		if (page.getQueryCondition() == null) { // 判断模糊查询的字符串是否为空
			InvList = groupbuyingService.gqueryGroupproducts(page);
			return InvList;
		}
		InvList = groupbuyingService.selectGroupBymohu(page); // 得到符合条件的商品
		return InvList;
	}

	public int getStartRowBycurrentPage(int currentPage, int pageSize) { // 根据当前页面
																			// 和页面大小
		int startRow = 0; // 开始行
		if (currentPage == 1) { // 如果当前页面等于1
			return startRow = 0;
		}
		startRow = (currentPage - 1) * pageSize; // 开始行数等于当前页面减一，乘与每页的大小
		return startRow;
	}

	@RequestMapping("/delectGroupbuy.action")
	public String DelectGroupbuy(HttpServletRequest request,int pid){ 
		groupbuyingService.delectBypidyu(pid);
		return "redirect:/backstage/groupbuying/queryGroupbuy.do";	
	}
	
	@RequestMapping(value = "/queryDiscount.do")
	public String gueryDiscountselect(Page page,HttpServletRequest request)throws UnsupportedEncodingException{
		// 组装page对象,传入方法中查询列表 回显数据
				Page p = page;
				int pageSize = 6; // 设置每页大小
				p.setPageSize(pageSize); // 传入页面大小进入对象P
				
		int curPage = p.getCurrentPage(); // 获得当前页面
		if (curPage == 0) {
			curPage = 1;
			p.setCurrentPage(curPage);
		}
		int startRow = page.getStartRow(); // 获得开始条数
		if (!(p.getCurrentPage() == 0)) { // 如果当前页面不等于0页
			startRow = getStartRowBycurrentPage(curPage, pageSize); // 传入当前页面，和每个页面大小
																	// 得到开始条数
		}
		p.setStartRow(startRow); // 设置开始条数
		String queryCondition = null; // 查询条件字段
		if (page.getQueryCondition() != null) { // 获得查询条件
			queryCondition = page.getQueryCondition();// 查询条件
		}
		
		/*这里有一个模糊查询*/
		List<DiscountQueryproducts> Invlist = getInListByConditions(page); // 得到模糊查询获得是商品序列
		int totalCounts = discountService.DiscountCounts(); // 获得商品总的条数
		 
		int totalPages = (int) ((totalCounts % pageSize == 0) ? (totalCounts / pageSize)
				: (totalCounts / pageSize + 1)); // 总页数=总条数/页大小+1
		p.setTotalPage(totalPages); // 获得总页数
		page.setTotalRows(totalCounts);// 总行数 TotalRows属性的字段为long
		request.getSession().setAttribute("InvList", Invlist);
		request.getSession().setAttribute("page", page);
		return "backstage/jsp/Products/queryDiscount";
	}
	
	private List<DiscountQueryproducts> getInListByConditions(Page page) { // 传入page得到商品列表
		List<DiscountQueryproducts> InvList = null;
		if (page.getQueryCondition() == null) { // 判断模糊查询的字符串是否为空
			InvList = discountService.PageDiscount(page);
			return InvList;
		}
		InvList =discountService.selectDiscountmohu(page) ; // 得到符合条件的商品
		return InvList;
}
	@RequestMapping(value ="/delectDiscount.action")
	public String DeleteDiscounts(HttpServletRequest request,int pid){
		discountService.deleteBypid(pid);
		return "redirect:/backstage/groupbuying/queryDiscount.do";	
	}
	
}