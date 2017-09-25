package com.newer.servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newer.dao.impl.UserDAO;
import com.newer.pojo.User;


public class LoginServlet extends HttpServlet {
	UserDAO dao = new UserDAO();

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
		request.getRequestDispatcher("index.jsp").forward(request,
				response);
	}
	
	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1����ȡǰ̨���洫�ݹ�����ֵ
		String uname = request.getParameter("username");
		String password = request.getParameter("password");

		/******************** �ж���֤���Ƿ���ȷ ***************************/
		// 1�����ս����ϴ��ݹ�������֤���ֵ���û�����ģ�
		String code = request.getParameter("code");
		// 2����ȡͼƬ����֤����������ݣ���session�л�ȡ��
		String sessionCode = (String) request.getSession()
				.getAttribute("codes");
		
		if(sessionCode.equalsIgnoreCase(code)){
			// 2����װ�ɶ���
			User user = new User();
			user.setUsername(uname);
			user.setPassword(password);

			// 3������Dao��ķ���

			List<User> results = dao.findByExample(user);
			User result=results.get(0);
		
		// 4����ݽ�������ת
		if (result != null) {
			// ����ѯ��������Ϣ������������������
			//request.setAttribute("user", result);
			// ����½���û���Ϣ������session
			// ��ȡsession
			HttpSession session = request.getSession();
			session.setAttribute("user", result);
			System.out.println(result);
			System.out.println("2222222222222222222222222222222222222222222222");
			// ��¼�ɹ�(����ת��)
			  request.getRequestDispatcher("index.jsp").forward(
						request, response);
			}else {
		 
		  request.getRequestDispatcher("index.jsp").forward(
					request, response);
		
	}
	}
}}