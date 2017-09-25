
package com.newer.action;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
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

import com.newer.dao.impl.ChapterDAO;
import com.newer.dao.impl.NovelDAO;
import com.newer.pojo.Chapter;
import com.newer.pojo.Novel;
import com.newer.pojo.User;
import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
@Results({
		@Result(name = "success", location = "/afteradmin/page-new1.jsp"),
		@Result(name = "success1", location = "/afteradmin/success.jsp"),
		@Result(name = "success1", location = "/afteradmin/pages-table.jsp"),
		@Result(name = "error", location = "/error.jsp") })
@ExceptionMappings({ @ExceptionMapping(exception = "java.lang.Exception", result = "error") })
public class FileuploadAction extends ActionSupport implements RequestAware, SessionAware,
ApplicationAware {
private Map<String, Object> application;
private Map<String, Object> request;
private Map<String, Object> session;

private User user;
private Novel novel;
private Chapter chapter;
NovelDAO dao=new NovelDAO();
ChapterDAO dao1=new ChapterDAO();
public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
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

private File file;

//提交过来的file的名字
private String fileFileName;

//提交过来的file的MIME类型
private String fileContentType;

public File getFile()
{
    return file;
}

public void setFile(File file)
{
    this.file = file;
}

public String getFileFileName()
{
    return fileFileName;
}

public void setFileFileName(String fileFileName)
{
    this.fileFileName = fileFileName;
}

public String getFileContentType()
{
    return fileContentType;
}

public void setFileContentType(String fileContentType)
{
    this.fileContentType = fileContentType;
}

@Action("fileupload")
public String fileUpload() throws Exception
{
    String root = "D:/资料/workplace/hongxiu/WebRoot/image";
    
    InputStream is = new FileInputStream(file);
    System.out.println("执行到这里");
    OutputStream os = new FileOutputStream(new File(root, fileFileName));
    
    System.out.println("fileFileName: " + fileFileName);
    System.out.println("file "+ root);

// 因为file是存放在临时文件夹的文件，我们可以将其文件名和文件路径打印出来，看和之前的fileFileName是否相同
    System.out.println("file: " + file.getName());
    System.out.println("file: " + file.getPath());
    
    byte[] buffer = new byte[500];
    int length = 0;
    
    while(-1 != (length = is.read(buffer, 0, buffer.length)))
    {
        os.write(buffer);
    }
    
    os.close();
    is.close();
    System.out.println("上传成功");
    novel.setImage("images/"+fileFileName);
    boolean flag =false;
    flag=dao.save(novel);
    List<Novel> novels=dao.findAll();
	session.put("novels", novels);
    if (flag) {
    	 return "success";
	}
    return "error";
}

@Action("fileupload1")
public String fileUpload1() throws Exception
{
    String root = "D:/资料/workplace/hongxiu/WebRoot/image";
    
    InputStream is = new FileInputStream(file);
    
    OutputStream os = new FileOutputStream(new File(root, fileFileName));
    
    System.out.println("fileFileName: " + fileFileName);
    System.out.println("file "+ root);

// 因为file是存放在临时文件夹的文件，我们可以将其文件名和文件路径打印出来，看和之前的fileFileName是否相同
    System.out.println("file: " + file.getName());
    System.out.println("file: " + file.getPath());
    
    byte[] buffer = new byte[500];
    int length = 0;
    
    while(-1 != (length = is.read(buffer, 0, buffer.length)))
    {
        os.write(buffer);
    }
    
    os.close();
    is.close();
    System.out.println("上传成功");
    novel.setImage("images/"+fileFileName);
    boolean flag =false;
    flag=dao.update(novel);
    List<Novel> novels= dao.findByExample(novel);
    Novel novel1=novels.get(0);
    request.put("novel",novel1 );
    if (flag) {
    	 return "success2";
	}
    return "error";
}

@Action("chapterUpload")
public String chapterUpload() throws Exception
{
   
    System.out.println("上传成功");
    boolean flag =false;
    flag=dao1.save(chapter);
   
    if (flag) {
    	 return "success1";
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
