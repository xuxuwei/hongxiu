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
import com.newer.dao.impl.MessageDAO;
import com.newer.dao.impl.NovelDAO;
import com.newer.dao.impl.UserDAO;
import com.newer.pojo.Admin;
import com.newer.pojo.Chapter;
import com.newer.pojo.Message;
import com.newer.pojo.Novel;
import com.newer.pojo.User;
import com.newer.pojo.Vip;
import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
@Results({
		@Result(name = "success", location = "/sort.jsp"),
		@Result(name = "success1", location = "/afterlogin/xiangxi.jsp"),
		@Result(name = "success2", location = "/afterlogin/read.jsp"),
		@Result(name = "success3", location = "/afterlogin/begin.jsp"),
		@Result(name = "success4", location = "/index.jsp"),
		@Result(name = "error", location = "/error.jsp") })
@ExceptionMappings({ @ExceptionMapping(exception = "java.lang.Exception", result = "error") })
public class FunctionAction extends ActionSupport implements RequestAware, SessionAware,
ApplicationAware {
private Map<String, Object> application;
private Map<String, Object> request;
private Map<String, Object> session;

private User user;
private Novel novel;
private Chapter chapter;
private Admin admin;
private Vip vip;
private Message message;
NovelDAO dao=new NovelDAO();
ChapterDAO dao1=new ChapterDAO();
AdminDAO dao3 =new AdminDAO();
UserDAO dao2= new UserDAO();
MessageDAO dao4=new MessageDAO();
private String select;
private String name;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getSelect() {
	return select;
}
public void setSelect(String select) {
	this.select = select;
}
public Message getMessage() {
	return message;
}
public void setMessage(Message message) {
	this.message = message;
}
public Vip getVip() {
	return vip;
}
public void setVip(Vip vip) {
	this.vip = vip;
}
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

@Action("search")
public String search() throws Exception {
//	不能打印空值的对象
	if (select.equals("novel"))
	{
		System.out.println(select);
		System.out.println(name);
		Novel novel1 =new Novel();
		novel1.setNovelname(name);
	List<Novel> results = dao.findByCondition(novel1);
	request.put("result", results);
	}
	else {
		Novel novel1 =new Novel();
		System.out.println(select);
		novel1.setWriter(name);
	List<Novel> results = dao.findByW(novel1);
	request.put("result", results);
	System.out.println("aaaaaa7546467867456465786aaa");
	}
	return "success";
}

@Action("newnovel")
public String newnovel() throws Exception {
//	不能打印空值的对象
	Novel novel1=new Novel();
	novel1.setType("最新小说");
	System.out.println("a897a");
	List<Novel> results = dao.findByT(novel1);
	request.put("result", results);
	System.out.println("aaaaaa7546467867456465786aaa");

	return "success";
}

@Action("freenovel")
public String freenovel() throws Exception {
//	不能打印空值的对象
	System.out.println("a897a");
	Novel novel1=new Novel();
	novel1.setVip(new Vip(2));
	System.out.println("a897a");
	try {
		List<Novel> results = dao.findByVip(novel1);
		request.put("result", results);
	} catch (Exception e) {
		e.printStackTrace();
		throw e;
	}
	
	System.out.println("aaaaaa7546467867456465786aaa");

	return "success";
}


@Action("shortnovel")
public String shortnovel() throws Exception {
//	不能打印空值的对象
	Novel novel1=new Novel();
	novel1.setType("短篇小说");
	System.out.println("a897a");
	List<Novel> results = dao.findByT(novel1);
	request.put("result", results);
	System.out.println("aaaaaa7546467867456465786aaa");

	return "success";
}

@Action("motionnovel")
public String motionnovel() throws Exception {
//	不能打印空值的对象
	Novel novel1=new Novel();
	novel1.setType("言情小说");
	System.out.println("a897a");
	List<Novel> results = dao.findByT(novel1);
	request.put("result", results);
	System.out.println("aaaaaa7546467867456465786aaa");

	return "success";
}

@Action("vipnovel")
public String vipnovel() throws Exception {
//	不能打印空值的对象
	System.out.println("a897a");
	Novel novel1=new Novel();
	novel1.setVip(new Vip(1));
	System.out.println("a897a");
	try {
		List<Novel> results = dao.findByVip(novel1);
		request.put("result", results);
	} catch (Exception e) {
		e.printStackTrace();
		throw e;
	}
	
	System.out.println("aaaaaa7546467867456465786aaa");

	return "success";
}

@Action("xiangxi")
public String xiangxi() throws Exception {
//	不能打印空值的对象
	if (session.get("user") != null) {
		Novel novel1= dao.findById(novel.getId());
		@SuppressWarnings("unchecked")
		List<Message> messages= dao4.findAll();
		session.put("messages", messages);
		session.put("n", novel1);
		request.put("result", novel1);
		System.out.println("aaaaaa7546467867456465786aaa");
		User user1= (User) session.get("user");
        if (user1.getVip().getId()==1) {
        	return "success1";
	}else if (novel1.getVip().getId()==2) {
		return "success1";
	}else {
		return "success4";
	}	
		
	}else {
		return "success4";
	}	
	
}

@Action("read")
public String read() throws Exception {
//	不能打印空值的对象
	System.out.println("a875");
	Chapter chapter1=new Chapter();
	chapter1.setNovel(novel);
	List<Chapter> chapters=dao1.findByB(chapter1);
	request.put("chapters", chapters);
	System.out.println("aaaaaa7546467867456465786aaa");

	return "success2";
}

@Action("begin")
public String begin() throws Exception {
//	不能打印空值的对象
	Chapter chapter1=dao1.findById(chapter.getId());
	System.out.println("执行到这里");
	request.put("chapter", chapter1);
	System.out.println("aaaaaa7546467867456465786aaa");

	return "success3";
}

@Action("remark")
public String remark() throws Exception {
//	不能打印空值的对象
	boolean flag=false;
	flag= dao4.save(message);
	System.out.println("aaaaaa7546467867456465786aaa");
if (flag) {return "success4";
	
}
return "error";
}

@Action("quit")
public String quit() throws Exception {
//	不能打印空值的对象
	System.out.println("n:"+session.get("n"));
	System.out.println("messages:"+session.get("messages"));
	
	try {
		session.remove("n");
		session.remove("messages");
	} catch (Exception e) {
		e.printStackTrace();
		throw e;
	}
System.out.println("here????");
return "success4";
}


	@Override
	public void setApplication(Map<String, Object> application) {
		System.out.println("-----------hello----------setApplication(Map<String, Object> application)");
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
