package com.newer.pojo;
// default package

import java.util.Set;


/**
 * Novel entity. @author MyEclipse Persistence Tools
 */

public class Novel  implements java.io.Serializable {


    // Fields    

     @Override
	public String toString() {
		return "Novel [id=" + id + ", vip=" + vip + ", type=" + type
				+ ", novelname=" + novelname + ", writer=" + writer
				+ ", click=" + click + ", image=" + image + ", introduce="
				+ introduce + ", addtime=" + addtime + ", updatetime="
				+ updatetime + "]";
	}

	private int id;
     private Vip vip;
     private String type;
     private String novelname;
     private String writer;
     private String click;
     private String image;
     private String introduce;
     private String addtime;
     private String updatetime;
     private Set<User> users;
     private Set<Chapter> chapters;


    // Constructors

    /** default constructor */
    public Novel() {
    }

	/** minimal constructor */
    public Novel(Vip vip) {
        this.vip = vip;
    }
    
    /** full constructor */
    public Novel(Vip vip, String type, String novelname, String writer, String click, String image, String introduce, String addtime, String updatetime,  Set<User> users, Set<Chapter> chapters) {
        this.vip = vip;
        this.type = type;
        this.novelname = novelname;
        this.writer = writer;
        this.click = click;
        this.image = image;
        this.introduce = introduce;
        this.addtime = addtime;
        this.updatetime = updatetime;
        this.users = users;
        this.chapters = chapters;
    }

   
    // Property accessors

    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    public Vip getVip() {
        return this.vip;
    }
    
    public void setVip(Vip vip) {
        this.vip = vip;
    }

    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }

    public String getNovelname() {
        return this.novelname;
    }
    
    public void setNovelname(String novelname) {
        this.novelname = novelname;
    }

    public String getWriter() {
        return this.writer;
    }
    
    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getClick() {
        return this.click;
    }
    
    public void setClick(String click) {
        this.click = click;
    }

    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }

    public String getIntroduce() {
        return this.introduce;
    }
    
    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getAddtime() {
        return this.addtime;
    }
    
    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public String getUpdatetime() {
        return this.updatetime;
    }
    
    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    public Set<User> getUsers() {
        return this.users;
    }
    
    public void setUsers(Set<User> users) {
        this.users = users;
    }

    public Set<Chapter> getChapters() {
        return this.chapters;
    }
    
    public void setChapters(Set<Chapter> chapters) {
        this.chapters = chapters;
    }
   








}