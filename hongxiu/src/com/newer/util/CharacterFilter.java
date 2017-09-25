package com.newer.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterFilter implements Filter {

	@Override
	public void destroy() {
		// �����ͷ���Դ
		System.out.println("�����CharacterFilter--destroy()");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("�����CharacterFilter--doFilter()");

		request.setCharacterEncoding("UTF-8");

		response.setCharacterEncoding("UTF-8");

		response.setContentType("text/html;charset=UTF-8");

		// ����ִ�к���Ĵ��루��һ��������������servlet��
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		// ��ʼ���������ڳ�ʼ������
		System.out.println("�����CharacterFilter--init()");
	}

}
