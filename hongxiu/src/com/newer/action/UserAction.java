package com.newer.action;
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
		@Result(name = "success", location = "/success.jsp"),
		@Result(name = "success1", location = "/afteradmin/pages-table.jsp"),
		@Result(name = "success2", location = "/afteradmin/page-new.jsp"),
		@Result(name = "success3", location = "/afteradmin/page-timeline.jsp"),
		@Result(name = "success4", location = "/afteradmin/statistics.jsp"),
		@Result(name = "success5", location = "/afteradmin/users.jsp"),
		@Result(name = "error", location = "/error.jsp") })
@ExceptionMappings({ @ExceptionMapping(exception = "java.lang.Exception", result = "error") })
public class UserAction extends ActionSupport implements RequestAware, SessionAware,
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

@Action("register")
public String register() throws Exception {
//	不能打印空值的对象
	boolean flag = false;
	flag= dao2.save(user);
	if (flag) {
		return "success";
	}
	System.out.println("aaaaaa7546467867456465786aaa");
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
