package com.newer.servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newer.dao.impl.AdminDAO;
import com.newer.pojo.Admin;


public class AdminServlet extends HttpServlet {
	AdminDAO dao = new AdminDAO();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		if ("login".equals(method)) {
			login(request, response);
		}
		if ("quit".equals(method)) {
			quit(request, response);
		}
	}
	
	public void quit(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
		 request.getSession().invalidate();
		request.getRequestDispatcher("index1.jsp").forward(request,
				response);
	}
	
	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String name = request.getParameter("adminname");
		String password = request.getParameter("password");

		
		
			Admin admin = new Admin();
			admin.setAdminname(name);
			admin.setPassword(password);

			

			List<Admin> results = dao.findByExample(admin);
			Admin result=results.get(0);
		
	
		if (result != null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("admin", result);
			request.getRequestDispatcher("afteradmin/statistics.jsp").forward(
					request, response);
			System.out.println(result);
			System.out.println("2222222222222222222222222222222222222222222222");
	  }else {
		 
		  request.getRequestDispatcher("index1.jsp").forward(
					request, response);
		
	}
	}
}