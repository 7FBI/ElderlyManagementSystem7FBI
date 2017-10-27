package com.controller.backstage.backoldusers;
//package com.controller.backstage;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.bean.Localarea;
//import com.service.LocalAreaService;
//
//@Controller
//@RequestMapping("/area")
//public class LocalAreaController {
//@Autowired
//@Qualifier("localAreaService")
//private LocalAreaService localAreaService;
//
//@RequestMapping(value="/findAllArea",method={RequestMethod.POST,RequestMethod.GET})
//public ModelAndView queryArea(){
//	
//	/*request.setAttribute("area", localArea);
//	request.getRequestDispatcher("/backstage/area").forward(request, respose);*/
//	
//	List<Localarea> localArea=localAreaService.findAllLocalArea();
//	ModelAndView model=new ModelAndView();
//	model.addObject("localArea", localArea);
//	model.setViewName("backstage/area");
//	return model;
//}
///*public void queryAllUser(HttpServletRequest request,
//		HttpServletResponse response) throws ServletException, IOException{
//	List<User> users = userService.queryAllUsers();
//	request.setAttribute("users", users);
//	request.getRequestDispatcher("/jsp/users.jsp").forward(request, response);
//}*/
//
//
//}
