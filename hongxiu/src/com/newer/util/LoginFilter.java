package com.newer.util;



import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newer.pojo.User;



/**
 * ��½��������ֻ�е�½֮����û�����ȥ���ʺ�̨����
 * 
 * @author 
 * 
 */
public class LoginFilter implements Filter {

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// 1����Ҫ��session�л�ȡ�û���Ϣ
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		Object obj = req.getSession().getAttribute("user");
		User user = null;
		// �ж�obj�Ƿ���ת����User����
		if (obj instanceof User) {
			user = (User) obj;
		}
		
//		String path = request.getRealPath("/");
		
//		String path2 = request.getServletContext().getRealPath("/");
		
		//String projectName = request.getServletContext().getContextPath();
		String url = req.getSession().getServletContext().getContextPath();
		
		//�ж�user�����Ƿ�Ϊnull
		if(user==null || "".equals(user)){
			//��û�е�½
			//   \n \r 
			resp.sendRedirect(url+"/login.jsp");
		}else{
			chain.doFilter(req, resp);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

}
