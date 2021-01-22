package cn.zhku.jsj144.zk.financialManage.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.zhku.jsj144.zk.financialManage.pojo.User;

//登录拦截器
public class LoginInterceptor implements HandlerInterceptor {

	private List<String> exceptUrls;//放行的资源列表
	public List<String> getExceptUrls() {
		return exceptUrls;
	}
	public void setExceptUrls(List<String> exceptUrls) {
		this.exceptUrls = exceptUrls;
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
		// 请求资源路径
		String requestUri = request.getRequestURI();
		if (requestUri.startsWith(request.getContextPath())) {// /financialManage
			requestUri = requestUri.substring(
					request.getContextPath().length(), requestUri.length());
		}
		
		

		// 放行exceptUrls中配置的url
		for (String url : exceptUrls) {
			if (url.endsWith("/**")) {
				if (requestUri.startsWith(url.substring(0, url.length() - 3))) {
					return true;//放行
				}
			} 
			else if (requestUri.startsWith(url)) {//与放行资源匹配
				return true;//放行
			}
		}

		// 1) 拦截用户请求，判断用户是否登录
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user != null) {
			return true;// 2) 如果用户已经登录。放行
		}
		// 3) 如果用户未登录，跳转到登录页面，跳转的过程中有可能被拦截，所以得做一个判断
		response.sendRedirect(request.getContextPath() + "/index.jsp");//登录页面
		return false;//拦截
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// Handler执行之后，在返回ModelAndView之前，对modelAndView做些手脚
		// System.out.println("Interceptor1 postHandle........");
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// 返回ModelAndView之后
		// Handler执行过程中出现异常，可以在此处理异常
		// System.out.println("Interceptor1 afterCompletion........");
	}

}
