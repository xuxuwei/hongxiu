package com.newer.pojo;
// default package

import java.util.Set;


/**
 * Vip entity. @author MyEclipse Persistence Tools
 */

public class Vip  implements java.io.Serializable {


    // Fields    

    


	public Vip(int id) {
		super();
		this.id = id;
	}


	@Override
	public String toString() {
		return "Vip [id=" + id + ", vip=" + vip + "]";
	}

	private int id;
     private String vip;
     private Set<Novel> novels;
     private Set<User> users;


    // Constructors

    /** default constructor */
    public Vip() {
    }

    
    /** full constructor */
    public Vip(String vip, Set<Novel> novels, Set<User> users) {
        this.vip = vip;
        this.novels = novels;
        this.users = users;
    }

   
    // Property accessors

    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    public String getVip() {
        return this.vip;
    }
    
    public void setVip(String vip) {
        this.vip = vip;
    }

    public Set<Novel> getNovels() {
        return this.novels;
    }
    
    public void setNovels(Set<Novel> novels) {
        this.novels = novels;
    }

    public Set<User> getUsers() {
        return this.users;
    }
    
    public void setUsers(Set<User> users) {
        this.users = users;
    }
   








}