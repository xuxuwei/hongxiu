package com.newer.pojo;
// default package

import java.util.Set;


/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User  implements java.io.Serializable {


    // Fields    

     @Override
	public String toString() {
		return "User [id=" + id + ", novel=" + novel + ", vip=" + vip
				+ ", sex=" + sex + ", age=" + age + ", username=" + username
				+ ", password=" + password + ", email=" + email + "]";
	}

	private int id;
     private Novel novel;
     private Vip vip;
     private String sex;
     private String age;
     private String username;
     private String password;
     private String email;
     private Set<Message> messages;


    // Constructors

    /** default constructor */
    public User() {
    }

	/** minimal constructor */
    public User(Vip vip, String sex, String age, String username, String password, String email) {
        this.vip = vip;
        this.sex = sex;
        this.age = age;
        this.username = username;
        this.password = password;
        this.email = email;
    }
    
    /** full constructor */
    public User(Novel novel, Vip vip, String sex, String age, String username, String password, String email, Set<Message> messages) {
        this.novel = novel;
        this.vip = vip;
        this.sex = sex;
        this.age = age;
        this.username = username;
        this.password = password;
        this.email = email;
        this.messages = messages;
    }

   
    // Property accessors

    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    public Novel getNovel() {
        return this.novel;
    }
    
    public void setNovel(Novel novel) {
        this.novel = novel;
    }

    public Vip getVip() {
        return this.vip;
    }
    
    public void setVip(Vip vip) {
        this.vip = vip;
    }

    public String getSex() {
        return this.sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return this.age;
    }
    
    public void setAge(String age) {
        this.age = age;
    }

    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public Set<Message> getMessages() {
        return this.messages;
    }
    
    public void setMessages(Set<Message> messages) {
        this.messages = messages;
    }
   








}