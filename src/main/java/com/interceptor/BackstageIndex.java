package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class BackstageIndex implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object object, Exception exception)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object object, ModelAndView view)
			throws Exception {
		// TODO Auto-generated method stub
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object object) throws Exception {
		// TODO Auto-generated method stub
		if (request.getSession().getAttribute("manager")!=null) {
			return true;
		}
		if (request.getSession().getAttribute("ceoinfo")!=null) {
			return true;
		}
		/*if (request.getSession().getAttribute("ManagerIndo")!=null) {
			return true;
		}*/
		response.sendRedirect("loginWTF");
		//request.getRequestDispatcher("/WEB-INF/backstage/login_manager.jsp").forward(request, response);
		return false;
	}

}
