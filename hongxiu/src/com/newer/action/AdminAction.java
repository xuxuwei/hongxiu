
package com.newer.action;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ExceptionMapping;
import org.apache.struts2.convention.annotation.ExceptionMappings;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.newer.dao.impl.AdminDAO;
import com.newer.dao.impl.ChapterDAO;
import com.newer.dao.impl.NovelDAO;
import com.newer.dao.impl.UserDAO;
import com.newer.pojo.Admin;
import com.newer.pojo.Chapter;
import com.newer.pojo.Novel;
import com.newer.pojo.User;
import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
@Results({
		@Result(name = "success", location = "/afteradmin/dashboard.jsp"),
		@Result(name = "success1", location = "/afteradmin/pages-table.jsp"),
		@Result(name = "success2", location = "/afteradmin/page-new.jsp"),
		@Result(name = "success3", location = "/afteradmin/page-timeline.jsp"),
		@Result(name = "success4", location = "/afteradmin/statistics.jsp"),
		@Result(name = "success5", location = "/afteradmin/users.jsp"),
		@Result(name = "success6", location = "/afteradmin/page-new1.jsp"),
		@Result(name = "success7", location = "/afteradmin/page-new3.jsp"),
		@Result(name = "success8", location = "/afteradmin/success.jsp"),
		@Result(name = "success9", location = "/afteradmin/statistics1.jsp"),
		@Result(name = "success10", location = "/afteradmin/statistics2.jsp"),
		@Result(name = "success11", location = "/afteradmin/statistics3.jsp"),
		@Result(name = "error", location = "/error.jsp") })
@ExceptionMappings({ @ExceptionMapping(exception = "java.lang.Exception", result = "error") })
public class AdminAction extends ActionSupport implements RequestAware, SessionAware,
ApplicationAware {
private Map<String, Object> application;
private Map<String, Object> request;
private Map<String, Object> session;

private User user;
private Novel novel;
private Chapter chapter;
private Admin admin;
NovelDAO dao=new NovelDAO();
ChapterDAO dao1=new ChapterDAO();
AdminDAO dao3 =new AdminDAO();
UserDAO dao2= new UserDAO();
public Admin getAdmin() {
	return admin;
}

public void setAdmin(Admin admin) {
	this.admin = admin;
}

public Novel getNovel() {
	return novel;
}

public void setNovel(Novel novel) {
	this.novel = novel;
}

public Chapter getChapter() {
	return chapter;
}

public void setChapter(Chapter chapter) {
	this.chapter = chapter;
}

public User getUser() {
	return user;
}






@Action("admin")
public String admin() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success";
}

@Action("admin1")
public String admin1() throws Exception {
//	不能打印空值的对象
	List<Novel> novels=dao.findAll();
	session.put("novels", novels);
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success1";
}

@Action("admin2")
public String admin2() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success2";
}

@Action("admin3")
public String admin3() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success3";
}

@Action("admin4")
public String admin4() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success4";
}

@Action("admin5")
public String admin5() throws Exception {
//	不能打印空值的对象
	List<User> users= dao2.findAll();
	request.put("users", users);
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success5";
}

@Action("admin6")
public String admin6() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success6";
}

@Action("admin7")
public String admin7() throws Exception {
//	不能打印空值的对象
	List<Novel> novela= dao.findByType(novel);
	request.put("novela", novela);
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success9";
}

@Action("admin8")
public String admin8() throws Exception {
//	不能打印空值的对象
	List<Novel> novelb= dao.findByType(novel);
	request.put("novelb", novelb);
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success10";
}

@Action("admin9")
public String admin9() throws Exception {
//	不能打印空值的对象
	List<Novel> novelc= dao.findByType(novel);
	request.put("novelc", novelc);
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success11";
}

@Action("update")
public String update() throws Exception {
//	不能打印空值的对象
	Novel novel1=dao.findById(novel.getId());
	request.put("novel1", novel1);
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success7";
}

@Action("update1")
public String update1() throws Exception {
//	不能打印空值的对象
	Novel novel1=dao.findById(novel.getId());
	request.put("novel", novel1);
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success6";
}


@Action("adminupdate")
public String adminupdate() throws Exception {
//	不能打印空值的对象
	boolean flag=false;
	flag= dao3.update(admin);
	System.out.println("aaaaaa7546467867456465786aaa");
	if (flag) {
		return "success8";
	}
	return "error";
}

	@Override
	public void setApplication(Map<String, Object> application) {
		System.out.println("---------------------setApplication(Map<String, Object> application)");
		this.application = application;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		System.out.println("----------------------setSession(Map<String, Object> session)");
		this.session = session;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		System.out.println("--------------------setRequest(Map<String, Object> request)");
		this.request = request;
}
	}
