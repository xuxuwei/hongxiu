package com.newer.dao.impl;

import com.newer.pojo.Admin;

public class Testadmin {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
    AdminDAO dao=new AdminDAO();
    Admin admin=new Admin();
    admin.setAdminname("������");
    admin.setPassword("123456");
   boolean flag= dao.save(admin);
   System.out.println(flag?"�ɹ�":"ʧ��");
	}

}
